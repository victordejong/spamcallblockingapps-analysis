package androidx.media2.exoplayer.external.upstream;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.C0463C;
import androidx.media2.exoplayer.external.util.Assertions;
import androidx.media2.exoplayer.external.util.Log;
import androidx.media2.exoplayer.external.util.TraceUtil;
import androidx.media2.exoplayer.external.util.Util;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.concurrent.ExecutorService;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/Loader.class */
public final class Loader implements LoaderErrorThrower {
    public static final int ACTION_TYPE_DONT_RETRY = 2;
    public static final int ACTION_TYPE_DONT_RETRY_FATAL = 3;
    public static final int ACTION_TYPE_RETRY = 0;
    public static final int ACTION_TYPE_RETRY_AND_RESET_ERROR_COUNT = 1;
    public LoadTask<? extends Loadable> currentTask;
    public final ExecutorService downloadExecutorService;
    public IOException fatalError;
    public static final LoadErrorAction RETRY = createRetryAction(false, C0463C.TIME_UNSET);
    public static final LoadErrorAction RETRY_RESET_ERROR_COUNT = createRetryAction(true, C0463C.TIME_UNSET);
    public static final LoadErrorAction DONT_RETRY = new LoadErrorAction(2, C0463C.TIME_UNSET);
    public static final LoadErrorAction DONT_RETRY_FATAL = new LoadErrorAction(3, C0463C.TIME_UNSET);

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/Loader$Callback.class */
    public interface Callback<T extends Loadable> {
        void onLoadCanceled(T t, long j, long j2, boolean z);

        void onLoadCompleted(T t, long j, long j2);

        LoadErrorAction onLoadError(T t, long j, long j2, IOException iOException, int i);
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction.class */
    public static final class LoadErrorAction {
        public final long retryDelayMillis;
        public final int type;

        public LoadErrorAction(int i, long j) {
            this.type = i;
            this.retryDelayMillis = j;
        }

        public boolean isRetry() {
            int i = this.type;
            boolean z = true;
            if (i != 0) {
                z = i == 1;
            }
            return z;
        }
    }

    @SuppressLint({"HandlerLeak"})
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/Loader$LoadTask.class */
    public final class LoadTask<T extends Loadable> extends Handler implements Runnable {
        public static final int MSG_CANCEL = 1;
        public static final int MSG_END_OF_SOURCE = 2;
        public static final int MSG_FATAL_ERROR = 4;
        public static final int MSG_IO_EXCEPTION = 3;
        public static final int MSG_START = 0;
        public static final String TAG = "LoadTask";
        @Nullable
        public Callback<T> callback;
        public volatile boolean canceled;
        public IOException currentError;
        public final int defaultMinRetryCount;
        public int errorCount;
        public volatile Thread executorThread;
        public final T loadable;
        public volatile boolean released;
        public final long startTimeMs;

        public LoadTask(Looper looper, T t, Callback<T> callback, int i, long j) {
            super(looper);
            this.loadable = t;
            this.callback = callback;
            this.defaultMinRetryCount = i;
            this.startTimeMs = j;
        }

        private void execute() {
            this.currentError = null;
            Loader.this.downloadExecutorService.execute(Loader.this.currentTask);
        }

        private void finish() {
            Loader.this.currentTask = null;
        }

        private long getRetryDelayMillis() {
            return Math.min((this.errorCount - 1) * 1000, 5000);
        }

        public void cancel(boolean z) {
            this.released = z;
            this.currentError = null;
            if (hasMessages(0)) {
                removeMessages(0);
                if (!z) {
                    sendEmptyMessage(1);
                }
            } else {
                this.canceled = true;
                this.loadable.cancelLoad();
                if (this.executorThread != null) {
                    this.executorThread.interrupt();
                }
            }
            if (z) {
                finish();
                long elapsedRealtime = SystemClock.elapsedRealtime();
                this.callback.onLoadCanceled(this.loadable, elapsedRealtime, elapsedRealtime - this.startTimeMs, true);
                this.callback = null;
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (!this.released) {
                int i = message.what;
                if (i == 0) {
                    execute();
                } else if (i != 4) {
                    finish();
                    long elapsedRealtime = SystemClock.elapsedRealtime();
                    long j = elapsedRealtime - this.startTimeMs;
                    if (this.canceled) {
                        this.callback.onLoadCanceled(this.loadable, elapsedRealtime, j, false);
                        return;
                    }
                    int i2 = message.what;
                    if (i2 == 1) {
                        this.callback.onLoadCanceled(this.loadable, elapsedRealtime, j, false);
                    } else if (i2 == 2) {
                        try {
                            this.callback.onLoadCompleted(this.loadable, elapsedRealtime, j);
                        } catch (RuntimeException e) {
                            Log.m37486e(TAG, "Unexpected exception handling load completed", e);
                            Loader.this.fatalError = new UnexpectedLoaderException(e);
                        }
                    } else if (i2 == 3) {
                        this.currentError = (IOException) message.obj;
                        this.errorCount++;
                        LoadErrorAction onLoadError = this.callback.onLoadError(this.loadable, elapsedRealtime, j, this.currentError, this.errorCount);
                        if (onLoadError.type == 3) {
                            Loader.this.fatalError = this.currentError;
                        } else if (onLoadError.type != 2) {
                            if (onLoadError.type == 1) {
                                this.errorCount = 1;
                            }
                            start(onLoadError.retryDelayMillis != C0463C.TIME_UNSET ? onLoadError.retryDelayMillis : getRetryDelayMillis());
                        }
                    }
                } else {
                    throw ((Error) message.obj);
                }
            }
        }

        public void maybeThrowError(int i) throws IOException {
            IOException iOException = this.currentError;
            if (iOException != null && this.errorCount > i) {
                throw iOException;
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.executorThread = Thread.currentThread();
                if (!this.canceled) {
                    String valueOf = String.valueOf(this.loadable.getClass().getSimpleName());
                    TraceUtil.beginSection(valueOf.length() != 0 ? "load:".concat(valueOf) : new String("load:"));
                    try {
                        this.loadable.load();
                        TraceUtil.endSection();
                    } catch (Throwable th) {
                        TraceUtil.endSection();
                        throw th;
                    }
                }
                if (!this.released) {
                    sendEmptyMessage(2);
                }
            } catch (IOException e) {
                if (!this.released) {
                    obtainMessage(3, e).sendToTarget();
                }
            } catch (Error e2) {
                Log.m37486e(TAG, "Unexpected error loading stream", e2);
                if (!this.released) {
                    obtainMessage(4, e2).sendToTarget();
                }
                throw e2;
            } catch (InterruptedException e3) {
                Assertions.checkState(this.canceled);
                if (!this.released) {
                    sendEmptyMessage(2);
                }
            } catch (Exception e4) {
                Log.m37486e(TAG, "Unexpected exception loading stream", e4);
                if (!this.released) {
                    obtainMessage(3, new UnexpectedLoaderException(e4)).sendToTarget();
                }
            } catch (OutOfMemoryError e5) {
                Log.m37486e(TAG, "OutOfMemory error loading stream", e5);
                if (!this.released) {
                    obtainMessage(3, new UnexpectedLoaderException(e5)).sendToTarget();
                }
            }
        }

        public void start(long j) {
            Assertions.checkState(Loader.this.currentTask == null);
            Loader.this.currentTask = this;
            if (j > 0) {
                sendEmptyMessageDelayed(0, j);
            } else {
                execute();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/Loader$Loadable.class */
    public interface Loadable {
        void cancelLoad();

        void load() throws IOException, InterruptedException;
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/Loader$ReleaseCallback.class */
    public interface ReleaseCallback {
        void onLoaderReleased();
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/Loader$ReleaseTask.class */
    public static final class ReleaseTask implements Runnable {
        public final ReleaseCallback callback;

        public ReleaseTask(ReleaseCallback releaseCallback) {
            this.callback = releaseCallback;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.callback.onLoaderReleased();
        }
    }

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/Loader$RetryActionType.class */
    public @interface RetryActionType {
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/Loader$UnexpectedLoaderException.class */
    public static final class UnexpectedLoaderException extends IOException {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public UnexpectedLoaderException(java.lang.Throwable r6) {
            /*
                r5 = this;
                r0 = r6
                java.lang.Class r0 = r0.getClass()
                java.lang.String r0 = r0.getSimpleName()
                r7 = r0
                r0 = r6
                java.lang.String r0 = r0.getMessage()
                r8 = r0
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r1 = r0
                r2 = r7
                java.lang.String r2 = java.lang.String.valueOf(r2)
                int r2 = r2.length()
                r3 = 13
                int r2 = r2 + r3
                r3 = r8
                java.lang.String r3 = java.lang.String.valueOf(r3)
                int r3 = r3.length()
                int r2 = r2 + r3
                r1.<init>(r2)
                r9 = r0
                r0 = r9
                java.lang.String r1 = "Unexpected "
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r9
                r1 = r7
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r9
                java.lang.String r1 = ": "
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r9
                r1 = r8
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r5
                r1 = r9
                java.lang.String r1 = r1.toString()
                r2 = r6
                r0.<init>(r1, r2)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.upstream.Loader.UnexpectedLoaderException.<init>(java.lang.Throwable):void");
        }
    }

    public Loader(String str) {
        this.downloadExecutorService = Util.newSingleThreadExecutor(str);
    }

    public static LoadErrorAction createRetryAction(boolean z, long j) {
        return new LoadErrorAction(z ? 1 : 0, j);
    }

    public void cancelLoading() {
        this.currentTask.cancel(false);
    }

    public boolean isLoading() {
        return this.currentTask != null;
    }

    @Override // androidx.media2.exoplayer.external.upstream.LoaderErrorThrower
    public void maybeThrowError() throws IOException {
        maybeThrowError(Integer.MIN_VALUE);
    }

    @Override // androidx.media2.exoplayer.external.upstream.LoaderErrorThrower
    public void maybeThrowError(int i) throws IOException {
        IOException iOException = this.fatalError;
        if (iOException == null) {
            LoadTask<? extends Loadable> loadTask = this.currentTask;
            if (loadTask != null) {
                int i2 = i;
                if (i == Integer.MIN_VALUE) {
                    i2 = loadTask.defaultMinRetryCount;
                }
                loadTask.maybeThrowError(i2);
                return;
            }
            return;
        }
        throw iOException;
    }

    public void release() {
        release(null);
    }

    public void release(@Nullable ReleaseCallback releaseCallback) {
        LoadTask<? extends Loadable> loadTask = this.currentTask;
        if (loadTask != null) {
            loadTask.cancel(true);
        }
        if (releaseCallback != null) {
            this.downloadExecutorService.execute(new ReleaseTask(releaseCallback));
        }
        this.downloadExecutorService.shutdown();
    }

    public <T extends Loadable> long startLoading(T t, Callback<T> callback, int i) {
        Looper myLooper = Looper.myLooper();
        Assertions.checkState(myLooper != null);
        this.fatalError = null;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        new LoadTask(myLooper, t, callback, i, elapsedRealtime).start(0L);
        return elapsedRealtime;
    }
}

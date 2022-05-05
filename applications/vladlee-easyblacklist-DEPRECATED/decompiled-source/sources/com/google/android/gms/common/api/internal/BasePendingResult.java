package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.ResultTransform;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.TransformedResult;
import com.google.android.gms.common.internal.ICancelToken;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.base.zar;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/BasePendingResult.class */
public abstract class BasePendingResult<R extends Result> extends PendingResult<R> {

    /* renamed from: a */
    static final ThreadLocal<Boolean> f6244a = new C1601ax();

    /* renamed from: b */
    private final Object f6245b;

    /* renamed from: c */
    private final CallbackHandler<R> f6246c;

    /* renamed from: d */
    private final WeakReference<GoogleApiClient> f6247d;

    /* renamed from: e */
    private final CountDownLatch f6248e;

    /* renamed from: f */
    private final ArrayList<PendingResult.StatusListener> f6249f;

    /* renamed from: g */
    private ResultCallback<? super R> f6250g;

    /* renamed from: h */
    private final AtomicReference<AbstractC1595ar> f6251h;

    /* renamed from: i */
    private R f6252i;

    /* renamed from: j */
    private Status f6253j;

    /* renamed from: k */
    private volatile boolean f6254k;

    /* renamed from: l */
    private boolean f6255l;

    /* renamed from: m */
    private boolean f6256m;
    private C1573a mResultGuardian;

    /* renamed from: n */
    private ICancelToken f6257n;

    /* renamed from: o */
    private volatile zack<R> f6258o;

    /* renamed from: p */
    private boolean f6259p;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/BasePendingResult$CallbackHandler.class */
    public static class CallbackHandler<R extends Result> extends zar {
        public CallbackHandler() {
            this(Looper.getMainLooper());
        }

        public CallbackHandler(Looper looper) {
            super(looper);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                Pair pair = (Pair) message.obj;
                ResultCallback resultCallback = (ResultCallback) pair.first;
                Result result = (Result) pair.second;
                try {
                    resultCallback.onResult(result);
                } catch (RuntimeException e) {
                    BasePendingResult.zab(result);
                    throw e;
                }
            } else if (i != 2) {
                int i2 = message.what;
                StringBuilder sb = new StringBuilder(45);
                sb.append("Don't know how to handle message: ");
                sb.append(i2);
                Log.wtf("BasePendingResult", sb.toString(), new Exception());
            } else {
                ((BasePendingResult) message.obj).zab(Status.RESULT_TIMEOUT);
            }
        }

        public final void zaa(ResultCallback<? super R> resultCallback, R r) {
            sendMessage(obtainMessage(1, new Pair(BasePendingResult.m5966a(resultCallback), r)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.gms.common.api.internal.BasePendingResult$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/BasePendingResult$a.class */
    public final class C1573a {
        private C1573a() {
        }

        /* synthetic */ C1573a(BasePendingResult basePendingResult, byte b) {
            this();
        }

        protected final void finalize() {
            BasePendingResult.zab(BasePendingResult.this.f6252i);
            super.finalize();
        }
    }

    @Deprecated
    BasePendingResult() {
        this.f6245b = new Object();
        this.f6248e = new CountDownLatch(1);
        this.f6249f = new ArrayList<>();
        this.f6251h = new AtomicReference<>();
        this.f6259p = false;
        this.f6246c = new CallbackHandler<>(Looper.getMainLooper());
        this.f6247d = new WeakReference<>(null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Deprecated
    public BasePendingResult(Looper looper) {
        this.f6245b = new Object();
        this.f6248e = new CountDownLatch(1);
        this.f6249f = new ArrayList<>();
        this.f6251h = new AtomicReference<>();
        this.f6259p = false;
        this.f6246c = new CallbackHandler<>(looper);
        this.f6247d = new WeakReference<>(null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BasePendingResult(GoogleApiClient googleApiClient) {
        this.f6245b = new Object();
        this.f6248e = new CountDownLatch(1);
        this.f6249f = new ArrayList<>();
        this.f6251h = new AtomicReference<>();
        this.f6259p = false;
        this.f6246c = new CallbackHandler<>(googleApiClient != null ? googleApiClient.getLooper() : Looper.getMainLooper());
        this.f6247d = new WeakReference<>(googleApiClient);
    }

    /* renamed from: a */
    private final R m5968a() {
        R r;
        synchronized (this.f6245b) {
            Preconditions.checkState(!this.f6254k, "Result has already been consumed.");
            Preconditions.checkState(isReady(), "Result is not ready.");
            r = this.f6252i;
            this.f6252i = null;
            this.f6250g = null;
            this.f6254k = true;
        }
        AbstractC1595ar andSet = this.f6251h.getAndSet(null);
        if (andSet != null) {
            andSet.mo5909a(this);
        }
        return r;
    }

    /* renamed from: a */
    static /* synthetic */ ResultCallback m5966a(ResultCallback resultCallback) {
        return resultCallback;
    }

    /* renamed from: a */
    private final void m5967a(R r) {
        this.f6252i = r;
        this.f6257n = null;
        this.f6248e.countDown();
        this.f6253j = this.f6252i.getStatus();
        int i = 0;
        if (this.f6255l) {
            this.f6250g = null;
        } else if (this.f6250g != null) {
            this.f6246c.removeMessages(2);
            this.f6246c.zaa(this.f6250g, m5968a());
        } else if (this.f6252i instanceof Releasable) {
            this.mResultGuardian = new C1573a(this, (byte) 0);
        }
        ArrayList<PendingResult.StatusListener> arrayList = this.f6249f;
        int size = arrayList.size();
        while (i < size) {
            PendingResult.StatusListener statusListener = arrayList.get(i);
            i++;
            statusListener.onComplete(this.f6253j);
        }
        this.f6249f.clear();
    }

    public static void zab(Result result) {
        if (result instanceof Releasable) {
            try {
                ((Releasable) result).release();
            } catch (RuntimeException e) {
                String valueOf = String.valueOf(result);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 18);
                sb.append("Unable to release ");
                sb.append(valueOf);
                Log.w("BasePendingResult", sb.toString(), e);
            }
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final void addStatusListener(PendingResult.StatusListener statusListener) {
        Preconditions.checkArgument(statusListener != null, "Callback cannot be null.");
        synchronized (this.f6245b) {
            if (isReady()) {
                statusListener.onComplete(this.f6253j);
            } else {
                this.f6249f.add(statusListener);
            }
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final R await() {
        Preconditions.checkNotMainThread("await must not be called on the UI thread");
        boolean z = true;
        Preconditions.checkState(!this.f6254k, "Result has already been consumed");
        if (this.f6258o != null) {
            z = false;
        }
        Preconditions.checkState(z, "Cannot await if then() has been called.");
        try {
            this.f6248e.await();
        } catch (InterruptedException e) {
            zab(Status.RESULT_INTERRUPTED);
        }
        Preconditions.checkState(isReady(), "Result is not ready.");
        return m5968a();
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final R await(long j, TimeUnit timeUnit) {
        if (j > 0) {
            Preconditions.checkNotMainThread("await must not be called on the UI thread when time is greater than zero.");
        }
        boolean z = true;
        Preconditions.checkState(!this.f6254k, "Result has already been consumed.");
        if (this.f6258o != null) {
            z = false;
        }
        Preconditions.checkState(z, "Cannot await if then() has been called.");
        try {
            if (!this.f6248e.await(j, timeUnit)) {
                zab(Status.RESULT_TIMEOUT);
            }
        } catch (InterruptedException e) {
            zab(Status.RESULT_INTERRUPTED);
        }
        Preconditions.checkState(isReady(), "Result is not ready.");
        return m5968a();
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public void cancel() {
        synchronized (this.f6245b) {
            if (!this.f6255l && !this.f6254k) {
                if (this.f6257n != null) {
                    try {
                        this.f6257n.cancel();
                    } catch (RemoteException e) {
                    }
                }
                zab(this.f6252i);
                this.f6255l = true;
                m5967a((BasePendingResult<R>) createFailedResult(Status.RESULT_CANCELED));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract R createFailedResult(Status status);

    @Override // com.google.android.gms.common.api.PendingResult
    public boolean isCanceled() {
        boolean z;
        synchronized (this.f6245b) {
            z = this.f6255l;
        }
        return z;
    }

    public final boolean isReady() {
        return this.f6248e.getCount() == 0;
    }

    public final void setResult(R r) {
        synchronized (this.f6245b) {
            if (this.f6256m || this.f6255l) {
                zab(r);
                return;
            }
            isReady();
            boolean z = true;
            Preconditions.checkState(!isReady(), "Results have already been set");
            if (this.f6254k) {
                z = false;
            }
            Preconditions.checkState(z, "Result has already been consumed");
            m5967a((BasePendingResult<R>) r);
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final void setResultCallback(ResultCallback<? super R> resultCallback) {
        synchronized (this.f6245b) {
            if (resultCallback == null) {
                this.f6250g = null;
                return;
            }
            boolean z = true;
            Preconditions.checkState(!this.f6254k, "Result has already been consumed.");
            if (this.f6258o != null) {
                z = false;
            }
            Preconditions.checkState(z, "Cannot set callbacks if then() has been called.");
            if (!isCanceled()) {
                if (isReady()) {
                    this.f6246c.zaa(resultCallback, m5968a());
                } else {
                    this.f6250g = resultCallback;
                }
            }
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final void setResultCallback(ResultCallback<? super R> resultCallback, long j, TimeUnit timeUnit) {
        synchronized (this.f6245b) {
            if (resultCallback == null) {
                this.f6250g = null;
                return;
            }
            boolean z = true;
            Preconditions.checkState(!this.f6254k, "Result has already been consumed.");
            if (this.f6258o != null) {
                z = false;
            }
            Preconditions.checkState(z, "Cannot set callbacks if then() has been called.");
            if (!isCanceled()) {
                if (isReady()) {
                    this.f6246c.zaa(resultCallback, m5968a());
                } else {
                    this.f6250g = resultCallback;
                    CallbackHandler<R> callbackHandler = this.f6246c;
                    callbackHandler.sendMessageDelayed(callbackHandler.obtainMessage(2, this), timeUnit.toMillis(j));
                }
            }
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public <S extends Result> TransformedResult<S> then(ResultTransform<? super R, ? extends S> resultTransform) {
        TransformedResult<S> then;
        Preconditions.checkState(!this.f6254k, "Result has already been consumed.");
        synchronized (this.f6245b) {
            boolean z = false;
            Preconditions.checkState(this.f6258o == null, "Cannot call then() twice.");
            Preconditions.checkState(this.f6250g == null, "Cannot call then() if callbacks are set.");
            if (!this.f6255l) {
                z = true;
            }
            Preconditions.checkState(z, "Cannot call then() if result was canceled.");
            this.f6259p = true;
            this.f6258o = new zack<>(this.f6247d);
            then = this.f6258o.then(resultTransform);
            if (isReady()) {
                this.f6246c.zaa(this.f6258o, m5968a());
            } else {
                this.f6250g = this.f6258o;
            }
        }
        return then;
    }

    public final void zaa(AbstractC1595ar arVar) {
        this.f6251h.set(arVar);
    }

    public final void zab(Status status) {
        synchronized (this.f6245b) {
            if (!isReady()) {
                setResult(createFailedResult(status));
                this.f6256m = true;
            }
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final Integer zal() {
        return null;
    }

    public final boolean zaq() {
        boolean isCanceled;
        synchronized (this.f6245b) {
            if (this.f6247d.get() == null || !this.f6259p) {
                cancel();
            }
            isCanceled = isCanceled();
        }
        return isCanceled;
    }

    public final void zar() {
        this.f6259p = this.f6259p || f6244a.get().booleanValue();
    }
}

package com.google.android.exoplayer2.upstream;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
import p131c.p161d.p170b.p188c.p203g1.C2883g0;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
import p131c.p161d.p170b.p188c.p203g1.C2894o;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/Loader.class */
public final class Loader {

    /* renamed from: d */
    public static final C7202c f22538d = new C7202c(2, -9223372036854775807L);

    /* renamed from: e */
    public static final C7202c f22539e = new C7202c(3, -9223372036854775807L);

    /* renamed from: a */
    public final ExecutorService f22540a;

    /* renamed from: b */
    public HandlerC7203d<? extends AbstractC7204e> f22541b;

    /* renamed from: c */
    public IOException f22542c;

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/Loader$UnexpectedLoaderException.class */
    public static final class UnexpectedLoaderException extends IOException {
        public UnexpectedLoaderException(Throwable th) {
            super("Unexpected " + th.getClass().getSimpleName() + ": " + th.getMessage(), th);
        }
    }

    /* renamed from: com.google.android.exoplayer2.upstream.Loader$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/Loader$b.class */
    public interface AbstractC7201b<T extends AbstractC7204e> {
        /* renamed from: a */
        C7202c mo18272a(T t, long j, long j2, IOException iOException, int i);

        /* renamed from: a */
        void mo18273a(T t, long j, long j2);

        /* renamed from: a */
        void mo18271a(T t, long j, long j2, boolean z);
    }

    /* renamed from: com.google.android.exoplayer2.upstream.Loader$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/Loader$c.class */
    public static final class C7202c {

        /* renamed from: a */
        public final int f22543a;

        /* renamed from: b */
        public final long f22544b;

        public C7202c(int i, long j) {
            this.f22543a = i;
            this.f22544b = j;
        }

        /* renamed from: a */
        public boolean m18270a() {
            int i = this.f22543a;
            boolean z = true;
            if (i != 0) {
                z = i == 1;
            }
            return z;
        }
    }

    /* renamed from: com.google.android.exoplayer2.upstream.Loader$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/Loader$d.class */
    public final class HandlerC7203d<T extends AbstractC7204e> extends Handler implements Runnable {

        /* renamed from: a */
        public final int f22545a;

        /* renamed from: b */
        public final T f22546b;

        /* renamed from: c */
        public final long f22547c;

        /* renamed from: d */
        public AbstractC7201b<T> f22548d;

        /* renamed from: e */
        public IOException f22549e;

        /* renamed from: f */
        public int f22550f;

        /* renamed from: g */
        public volatile Thread f22551g;

        /* renamed from: h */
        public volatile boolean f22552h;

        /* renamed from: i */
        public volatile boolean f22553i;

        public HandlerC7203d(Looper looper, T t, AbstractC7201b<T> bVar, int i, long j) {
            super(looper);
            this.f22546b = t;
            this.f22548d = bVar;
            this.f22545a = i;
            this.f22547c = j;
        }

        /* renamed from: a */
        public final void m18267a() {
            this.f22549e = null;
            ExecutorService executorService = Loader.this.f22540a;
            HandlerC7203d dVar = Loader.this.f22541b;
            C2877e.m28737a(dVar);
            executorService.execute(dVar);
        }

        /* renamed from: a */
        public void m18266a(int i) throws IOException {
            IOException iOException = this.f22549e;
            if (iOException != null && this.f22550f > i) {
                throw iOException;
            }
        }

        /* renamed from: a */
        public void m18265a(long j) {
            C2877e.m28731b(Loader.this.f22541b == null);
            Loader.this.f22541b = this;
            if (j > 0) {
                sendEmptyMessageDelayed(0, j);
            } else {
                m18267a();
            }
        }

        /* renamed from: a */
        public void m18264a(boolean z) {
            this.f22553i = z;
            this.f22549e = null;
            if (hasMessages(0)) {
                removeMessages(0);
                if (!z) {
                    sendEmptyMessage(1);
                }
            } else {
                this.f22552h = true;
                this.f22546b.mo18261a();
                Thread thread = this.f22551g;
                if (thread != null) {
                    thread.interrupt();
                }
            }
            if (z) {
                m18263b();
                long elapsedRealtime = SystemClock.elapsedRealtime();
                AbstractC7201b<T> bVar = this.f22548d;
                C2877e.m28737a(bVar);
                bVar.mo18271a(this.f22546b, elapsedRealtime, elapsedRealtime - this.f22547c, true);
                this.f22548d = null;
            }
        }

        /* renamed from: b */
        public final void m18263b() {
            Loader.this.f22541b = null;
        }

        /* renamed from: c */
        public final long m18262c() {
            return Math.min((this.f22550f - 1) * 1000, 5000);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (!this.f22553i) {
                int i = message.what;
                if (i == 0) {
                    m18267a();
                } else if (i != 4) {
                    m18263b();
                    long elapsedRealtime = SystemClock.elapsedRealtime();
                    long j = elapsedRealtime - this.f22547c;
                    AbstractC7201b<T> bVar = this.f22548d;
                    C2877e.m28737a(bVar);
                    AbstractC7201b<T> bVar2 = bVar;
                    if (this.f22552h) {
                        bVar2.mo18271a(this.f22546b, elapsedRealtime, j, false);
                        return;
                    }
                    int i2 = message.what;
                    if (i2 == 1) {
                        bVar2.mo18271a(this.f22546b, elapsedRealtime, j, false);
                    } else if (i2 == 2) {
                        try {
                            bVar2.mo18273a(this.f22546b, elapsedRealtime, j);
                        } catch (RuntimeException e) {
                            C2894o.m28599a("LoadTask", "Unexpected exception handling load completed", e);
                            Loader.this.f22542c = new UnexpectedLoaderException(e);
                        }
                    } else if (i2 == 3) {
                        IOException iOException = (IOException) message.obj;
                        this.f22549e = iOException;
                        int i3 = this.f22550f + 1;
                        this.f22550f = i3;
                        C7202c a = bVar2.mo18272a(this.f22546b, elapsedRealtime, j, iOException, i3);
                        if (a.f22543a == 3) {
                            Loader.this.f22542c = this.f22549e;
                        } else if (a.f22543a != 2) {
                            if (a.f22543a == 1) {
                                this.f22550f = 1;
                            }
                            m18265a(a.f22544b != -9223372036854775807L ? a.f22544b : m18262c());
                        }
                    }
                } else {
                    throw ((Error) message.obj);
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f22551g = Thread.currentThread();
                if (!this.f22552h) {
                    C2883g0.m28701a("load:" + this.f22546b.getClass().getSimpleName());
                    try {
                        this.f22546b.mo18260b();
                        C2883g0.m28702a();
                    } catch (Throwable th) {
                        C2883g0.m28702a();
                        throw th;
                    }
                }
                if (!this.f22553i) {
                    sendEmptyMessage(2);
                }
            } catch (IOException e) {
                if (!this.f22553i) {
                    obtainMessage(3, e).sendToTarget();
                }
            } catch (Error e2) {
                C2894o.m28599a("LoadTask", "Unexpected error loading stream", e2);
                if (!this.f22553i) {
                    obtainMessage(4, e2).sendToTarget();
                }
                throw e2;
            } catch (InterruptedException e3) {
                C2877e.m28731b(this.f22552h);
                if (!this.f22553i) {
                    sendEmptyMessage(2);
                }
            } catch (Exception e4) {
                C2894o.m28599a("LoadTask", "Unexpected exception loading stream", e4);
                if (!this.f22553i) {
                    obtainMessage(3, new UnexpectedLoaderException(e4)).sendToTarget();
                }
            } catch (OutOfMemoryError e5) {
                C2894o.m28599a("LoadTask", "OutOfMemory error loading stream", e5);
                if (!this.f22553i) {
                    obtainMessage(3, new UnexpectedLoaderException(e5)).sendToTarget();
                }
            }
        }
    }

    /* renamed from: com.google.android.exoplayer2.upstream.Loader$e */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/Loader$e.class */
    public interface AbstractC7204e {
        /* renamed from: a */
        void mo18261a();

        /* renamed from: b */
        void mo18260b() throws IOException, InterruptedException;
    }

    /* renamed from: com.google.android.exoplayer2.upstream.Loader$f */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/Loader$f.class */
    public interface AbstractC7205f {
        /* renamed from: c */
        void mo18259c();
    }

    /* renamed from: com.google.android.exoplayer2.upstream.Loader$g */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/Loader$g.class */
    public static final class RunnableC7206g implements Runnable {

        /* renamed from: a */
        public final AbstractC7205f f22555a;

        public RunnableC7206g(AbstractC7205f fVar) {
            this.f22555a = fVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f22555a.mo18259c();
        }
    }

    static {
        m18278a(false, -9223372036854775807L);
        m18278a(true, -9223372036854775807L);
    }

    public Loader(String str) {
        this.f22540a = C2885h0.m28647b(str);
    }

    /* renamed from: a */
    public static C7202c m18278a(boolean z, long j) {
        return new C7202c(z ? 1 : 0, j);
    }

    /* renamed from: a */
    public <T extends AbstractC7204e> long m18283a(T t, AbstractC7201b<T> bVar, int i) {
        Looper myLooper = Looper.myLooper();
        C2877e.m28732b(myLooper);
        Looper looper = myLooper;
        this.f22542c = null;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        new HandlerC7203d(looper, t, bVar, i, elapsedRealtime).m18265a(0L);
        return elapsedRealtime;
    }

    /* renamed from: a */
    public void m18285a() {
        HandlerC7203d<? extends AbstractC7204e> dVar = this.f22541b;
        C2877e.m28732b(dVar);
        dVar.m18264a(false);
    }

    /* renamed from: a */
    public void m18284a(int i) throws IOException {
        IOException iOException = this.f22542c;
        if (iOException == null) {
            HandlerC7203d<? extends AbstractC7204e> dVar = this.f22541b;
            if (dVar != null) {
                int i2 = i;
                if (i == Integer.MIN_VALUE) {
                    i2 = dVar.f22545a;
                }
                dVar.m18266a(i2);
                return;
            }
            return;
        }
        throw iOException;
    }

    /* renamed from: a */
    public void m18282a(AbstractC7205f fVar) {
        HandlerC7203d<? extends AbstractC7204e> dVar = this.f22541b;
        if (dVar != null) {
            dVar.m18264a(true);
        }
        if (fVar != null) {
            this.f22540a.execute(new RunnableC7206g(fVar));
        }
        this.f22540a.shutdown();
    }

    /* renamed from: b */
    public void m18277b() {
        this.f22542c = null;
    }

    /* renamed from: c */
    public boolean m18275c() {
        return this.f22542c != null;
    }

    /* renamed from: d */
    public boolean m18274d() {
        return this.f22541b != null;
    }
}

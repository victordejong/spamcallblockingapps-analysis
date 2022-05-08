package androidx.p043e.p045b;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.e.b.d */
/* loaded from: classes-dex2jar.jar:androidx/e/b/d.class */
public abstract class AbstractC0829d<Params, Progress, Result> {

    /* renamed from: a */
    private static final ThreadFactory f3410a = new ThreadFactoryC0834e();

    /* renamed from: b */
    private static final BlockingQueue<Runnable> f3411b = new LinkedBlockingQueue(10);

    /* renamed from: c */
    public static final Executor f3412c;

    /* renamed from: f */
    private static HandlerC0831b f3413f;

    /* renamed from: g */
    private static volatile Executor f3414g;

    /* renamed from: j */
    private volatile int f3419j = EnumC0832c.f3422a;

    /* renamed from: d */
    final AtomicBoolean f3415d = new AtomicBoolean();

    /* renamed from: e */
    final AtomicBoolean f3416e = new AtomicBoolean();

    /* renamed from: h */
    private final AbstractCallableC0833d<Params, Result> f3417h = new C0835f(this);

    /* renamed from: i */
    private final FutureTask<Result> f3418i = new C0836g(this, this.f3417h);

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.e.b.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/e/b/d$a.class */
    public static final class C0830a<Data> {

        /* renamed from: a */
        final AbstractC0829d f3420a;

        /* renamed from: b */
        final Data[] f3421b;

        C0830a(AbstractC0829d dVar, Data... dataArr) {
            this.f3420a = dVar;
            this.f3421b = dataArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.e.b.d$b */
    /* loaded from: classes-dex2jar.jar:androidx/e/b/d$b.class */
    public static final class HandlerC0831b extends Handler {
        HandlerC0831b() {
            super(Looper.getMainLooper());
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            C0830a aVar = (C0830a) message.obj;
            if (message.what == 1) {
                aVar.f3420a.m7948e(aVar.f3421b[0]);
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* renamed from: androidx.e.b.d$c */
    /* loaded from: classes-dex2jar.jar:androidx/e/b/d$c.class */
    public static final class EnumC0832c extends Enum<EnumC0832c> {

        /* renamed from: a */
        public static final int f3422a = 1;

        /* renamed from: b */
        public static final int f3423b = 2;

        /* renamed from: c */
        public static final int f3424c = 3;

        /* renamed from: d */
        private static final /* synthetic */ int[] f3425d = {f3422a, f3423b, f3424c};

        /* renamed from: a */
        public static int[] m7947a() {
            return (int[]) f3425d.clone();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.e.b.d$d */
    /* loaded from: classes-dex2jar.jar:androidx/e/b/d$d.class */
    public static abstract class AbstractCallableC0833d<Params, Result> implements Callable<Result> {

        /* renamed from: b */
        Params[] f3426b;
    }

    static {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(5, 128, 1L, TimeUnit.SECONDS, f3411b, f3410a);
        f3412c = threadPoolExecutor;
        f3414g = threadPoolExecutor;
    }

    /* renamed from: c */
    private static Handler m7951c() {
        HandlerC0831b bVar;
        synchronized (AbstractC0829d.class) {
            try {
                if (f3413f == null) {
                    f3413f = new HandlerC0831b();
                }
                bVar = f3413f;
            } catch (Throwable th) {
                throw th;
            }
        }
        return bVar;
    }

    /* renamed from: a */
    public final AbstractC0829d<Params, Progress, Result> m7954a(Executor executor) {
        if (this.f3419j != EnumC0832c.f3422a) {
            int i = C0837h.f3430a[this.f3419j - 1];
            if (i == 1) {
                throw new IllegalStateException("Cannot execute task: the task is already running.");
            } else if (i != 2) {
                throw new IllegalStateException("We should never reach this state");
            } else {
                throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
            }
        } else {
            this.f3419j = EnumC0832c.f3423b;
            this.f3417h.f3426b = null;
            executor.execute(this.f3418i);
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public abstract Result mo7956a();

    /* renamed from: a */
    protected void mo7955a(Result result) {
    }

    /* renamed from: b */
    protected void mo7952b(Result result) {
    }

    /* renamed from: b */
    public final boolean m7953b() {
        this.f3415d.set(true);
        return this.f3418i.cancel(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final void m7950c(Result result) {
        if (!this.f3416e.get()) {
            m7949d(result);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final Result m7949d(Result result) {
        m7951c().obtainMessage(1, new C0830a(this, result)).sendToTarget();
        return result;
    }

    /* renamed from: e */
    final void m7948e(Result result) {
        if (this.f3415d.get()) {
            mo7952b(result);
        } else {
            mo7955a((AbstractC0829d<Params, Progress, Result>) result);
        }
        this.f3419j = EnumC0832c.f3424c;
    }
}

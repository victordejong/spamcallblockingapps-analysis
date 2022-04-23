package p000a.p001a.p002a.p003a.p004a.p007c;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.LinkedList;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: a.a.a.a.a.c.a */
/* loaded from: classes-dex2jar.jar:a/a/a/a/a/c/a.class */
public abstract class AbstractC0047a<Params, Progress, Result> {

    /* renamed from: a */
    private static final int f104a;

    /* renamed from: b */
    public static final Executor f105b;

    /* renamed from: d */
    private static final int f107d;

    /* renamed from: e */
    private static final int f108e;

    /* renamed from: f */
    private static final ThreadFactory f109f = new ThreadFactoryC0058b();

    /* renamed from: g */
    private static final BlockingQueue<Runnable> f110g = new LinkedBlockingQueue(128);

    /* renamed from: c */
    public static final Executor f106c = new ExecutorC0050c((byte) 0);

    /* renamed from: h */
    private static final HandlerC0049b f111h = new HandlerC0049b();

    /* renamed from: i */
    private static volatile Executor f112i = f106c;

    /* renamed from: l */
    private volatile int f115l = EnumC0051d.f122a;

    /* renamed from: m */
    private final AtomicBoolean f116m = new AtomicBoolean();

    /* renamed from: n */
    private final AtomicBoolean f117n = new AtomicBoolean();

    /* renamed from: j */
    private final AbstractCallableC0052e<Params, Result> f113j = new C0059c(this);

    /* renamed from: k */
    private final FutureTask<Result> f114k = new C0060d(this, this.f113j);

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a.a.a.a.a.c.a$a */
    /* loaded from: classes-dex2jar.jar:a/a/a/a/a/c/a$a.class */
    public static final class C0048a<Data> {

        /* renamed from: a */
        final AbstractC0047a f118a;

        /* renamed from: b */
        final Data[] f119b;

        C0048a(AbstractC0047a aVar, Data... dataArr) {
            this.f118a = aVar;
            this.f119b = dataArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a.a.a.a.a.c.a$b */
    /* loaded from: classes-dex2jar.jar:a/a/a/a/a/c/a$b.class */
    public static final class HandlerC0049b extends Handler {
        public HandlerC0049b() {
            super(Looper.getMainLooper());
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            C0048a aVar = (C0048a) message.obj;
            if (message.what == 1) {
                AbstractC0047a.m10278c(aVar.f118a, aVar.f119b[0]);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a.a.a.a.a.c.a$c */
    /* loaded from: classes-dex2jar.jar:a/a/a/a/a/c/a$c.class */
    public static final class ExecutorC0050c implements Executor {

        /* renamed from: a */
        final LinkedList<Runnable> f120a;

        /* renamed from: b */
        Runnable f121b;

        private ExecutorC0050c() {
            this.f120a = new LinkedList<>();
        }

        /* synthetic */ ExecutorC0050c(byte b) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: a */
        public final void m10274a() {
            synchronized (this) {
                Runnable poll = this.f120a.poll();
                this.f121b = poll;
                if (poll != null) {
                    AbstractC0047a.f105b.execute(this.f121b);
                }
            }
        }

        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            synchronized (this) {
                this.f120a.offer(new RunnableC0062f(this, runnable));
                if (this.f121b == null) {
                    m10274a();
                }
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* renamed from: a.a.a.a.a.c.a$d */
    /* loaded from: classes-dex2jar.jar:a/a/a/a/a/c/a$d.class */
    public static final class EnumC0051d extends Enum<EnumC0051d> {

        /* renamed from: a */
        public static final int f122a = 1;

        /* renamed from: b */
        public static final int f123b = 2;

        /* renamed from: c */
        public static final int f124c = 3;

        /* renamed from: d */
        private static final /* synthetic */ int[] f125d = {f122a, f123b, f124c};

        /* renamed from: a */
        public static int[] m10273a() {
            return (int[]) f125d.clone();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a.a.a.a.a.c.a$e */
    /* loaded from: classes-dex2jar.jar:a/a/a/a/a/c/a$e.class */
    public static abstract class AbstractCallableC0052e<Params, Result> implements Callable<Result> {

        /* renamed from: b */
        Params[] f126b;

        private AbstractCallableC0052e() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public /* synthetic */ AbstractCallableC0052e(byte b) {
            this();
        }
    }

    static {
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        f104a = availableProcessors;
        f107d = availableProcessors + 1;
        f108e = (f104a * 2) + 1;
        f105b = new ThreadPoolExecutor(f107d, f108e, 1L, TimeUnit.SECONDS, f110g, f109f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static /* synthetic */ void m10280b(AbstractC0047a aVar, Object obj) {
        if (!aVar.f117n.get()) {
            aVar.m10277c(obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public Result m10277c(Result result) {
        f111h.obtainMessage(1, new C0048a(this, result)).sendToTarget();
        return result;
    }

    /* renamed from: c */
    static /* synthetic */ void m10278c(AbstractC0047a aVar, Object obj) {
        if (aVar.f116m.get()) {
            aVar.mo10142b(obj);
        } else {
            aVar.mo10145a((AbstractC0047a) obj);
        }
        aVar.f115l = EnumC0051d.f124c;
    }

    /* renamed from: a */
    public final AbstractC0047a<Params, Progress, Result> m10281a(Executor executor, Params... paramsArr) {
        if (this.f115l != EnumC0051d.f122a) {
            int i = C0061e.f136a[this.f115l - 1];
            if (i == 1) {
                throw new IllegalStateException("Cannot execute task: the task is already running.");
            } else if (i == 2) {
                throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
            }
        }
        this.f115l = EnumC0051d.f123b;
        mo10146a();
        this.f113j.f126b = paramsArr;
        executor.execute(this.f114k);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public void mo10146a() {
    }

    /* renamed from: a */
    protected void mo10145a(Result result) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public abstract Result mo10143b();

    /* renamed from: b */
    protected void mo10142b(Result result) {
    }

    /* renamed from: c */
    public final int m10279c() {
        return this.f115l;
    }

    /* renamed from: d */
    public final boolean m10276d() {
        return this.f116m.get();
    }

    /* renamed from: e */
    public final boolean m10275e() {
        this.f116m.set(true);
        return this.f114k.cancel(true);
    }
}

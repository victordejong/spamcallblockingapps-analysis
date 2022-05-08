package p081h.p203i.p204a.p206b.p209j;

import java.util.concurrent.Executor;
import p081h.p203i.p204a.p206b.p209j.p215w.C6613a;
/* renamed from: h.i.a.b.j.k */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/j/k.class */
public class ExecutorC6576k implements Executor {

    /* renamed from: a */
    public final Executor f16375a;

    /* renamed from: h.i.a.b.j.k$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/b/j/k$a.class */
    public static class RunnableC6577a implements Runnable {

        /* renamed from: a */
        public final Runnable f16376a;

        public RunnableC6577a(Runnable runnable) {
            this.f16376a = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f16376a.run();
            } catch (Exception e) {
                C6613a.m22234a("Executor", "Background execution failure.", (Throwable) e);
            }
        }
    }

    public ExecutorC6576k(Executor executor) {
        this.f16375a = executor;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.f16375a.execute(new RunnableC6577a(runnable));
    }
}

package p131c.p161d.p170b.p173b.p176i;

import java.util.concurrent.Executor;
import p131c.p161d.p170b.p173b.p176i.p182w.C2601a;
/* renamed from: c.d.b.b.i.k */
/* loaded from: classes-dex2jar.jar:c/d/b/b/i/k.class */
public class ExecutorC2567k implements Executor {

    /* renamed from: a */
    public final Executor f9618a;

    /* renamed from: c.d.b.b.i.k$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/b/i/k$a.class */
    public static class RunnableC2568a implements Runnable {

        /* renamed from: a */
        public final Runnable f9619a;

        public RunnableC2568a(Runnable runnable) {
            this.f9619a = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f9619a.run();
            } catch (Exception e) {
                C2601a.m29447a("Executor", "Background execution failure.", (Throwable) e);
            }
        }
    }

    public ExecutorC2567k(Executor executor) {
        this.f9618a = executor;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.f9618a.execute(new RunnableC2568a(runnable));
    }
}

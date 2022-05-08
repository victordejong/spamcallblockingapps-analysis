package p081h.p203i.p204a.p224e.p235d.p236k.p237q;

import androidx.annotation.WorkerThread;
import java.util.concurrent.locks.Lock;
/* renamed from: h.i.a.e.d.k.q.l0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/l0.class */
public abstract class AbstractRunnableC6894l0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C6847b0 f16876a;

    public AbstractRunnableC6894l0(C6847b0 b0Var) {
        this.f16876a = b0Var;
    }

    public /* synthetic */ AbstractRunnableC6894l0(C6847b0 b0Var, RunnableC6851c0 c0Var) {
        this(b0Var);
    }

    @WorkerThread
    /* renamed from: a */
    public abstract void mo21655a();

    @Override // java.lang.Runnable
    @WorkerThread
    public void run() {
        Lock lock;
        C6938w0 w0Var;
        Lock lock2;
        lock = this.f16876a.f16750b;
        lock.lock();
        try {
            if (!Thread.interrupted()) {
                mo21655a();
            }
        } catch (RuntimeException e) {
            w0Var = this.f16876a.f16749a;
            w0Var.m21512a(e);
        } finally {
            lock2 = this.f16876a.f16750b;
            lock2.unlock();
        }
    }
}

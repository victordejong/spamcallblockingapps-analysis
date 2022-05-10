package p131c.p161d.p266c.p275i.p276a;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
/* renamed from: c.d.c.i.a.m */
/* loaded from: classes2-dex2jar.jar:c/d/c/i/a/m.class */
public class C5109m<V> extends FutureTask<V> implements AbstractFutureC5108l<V> {

    /* renamed from: a */
    public final C5096e f17697a = new C5096e();

    public C5109m(Callable<V> callable) {
        super(callable);
    }

    /* renamed from: a */
    public static <V> C5109m<V> m24505a(Callable<V> callable) {
        return new C5109m<>(callable);
    }

    @Override // p131c.p161d.p266c.p275i.p276a.AbstractFutureC5108l
    /* renamed from: a */
    public void mo7696a(Runnable runnable, Executor executor) {
        this.f17697a.m24518a(runnable, executor);
    }

    @Override // java.util.concurrent.FutureTask
    public void done() {
        this.f17697a.m24519a();
    }
}

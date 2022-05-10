package p530d.p541c.p543b0.p548e.p550b;

import io.reactivex.internal.subscriptions.ScalarSubscription;
import p530d.p541c.AbstractC9814e;
import p530d.p541c.p543b0.p546c.AbstractCallableC9659h;
import p611j.p612a.AbstractC10433c;
/* renamed from: d.c.b0.e.b.k */
/* loaded from: classes2-dex2jar.jar:d/c/b0/e/b/k.class */
public final class C9693k<T> extends AbstractC9814e<T> implements AbstractCallableC9659h<T> {

    /* renamed from: b */
    public final T f36782b;

    public C9693k(T t) {
        this.f36782b = t;
    }

    @Override // p530d.p541c.AbstractC9814e
    /* renamed from: a */
    public void mo213a(AbstractC10433c<? super T> cVar) {
        cVar.onSubscribe(new ScalarSubscription(cVar, this.f36782b));
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractCallableC9659h, java.util.concurrent.Callable
    public T call() {
        return this.f36782b;
    }
}

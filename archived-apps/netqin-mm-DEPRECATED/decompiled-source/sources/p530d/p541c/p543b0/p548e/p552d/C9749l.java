package p530d.p541c.p543b0.p548e.p552d;

import io.reactivex.internal.operators.observable.ObservableScalarXMap;
import p530d.p541c.AbstractC9840o;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p543b0.p546c.AbstractCallableC9659h;
/* renamed from: d.c.b0.e.d.l */
/* loaded from: classes2-dex2jar.jar:d/c/b0/e/d/l.class */
public final class C9749l<T> extends AbstractC9840o<T> implements AbstractCallableC9659h<T> {

    /* renamed from: a */
    public final T f36866a;

    public C9749l(T t) {
        this.f36866a = t;
    }

    @Override // p530d.p541c.AbstractC9840o
    /* renamed from: a */
    public void mo192a(AbstractC9844r<? super T> rVar) {
        ObservableScalarXMap.ScalarDisposable scalarDisposable = new ObservableScalarXMap.ScalarDisposable(rVar, this.f36866a);
        rVar.onSubscribe(scalarDisposable);
        scalarDisposable.run();
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractCallableC9659h, java.util.concurrent.Callable
    public T call() {
        return this.f36866a;
    }
}

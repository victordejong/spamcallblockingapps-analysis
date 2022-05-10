package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9836k;
import p530d.p541c.AbstractC9852v;
import p530d.p541c.p542a0.AbstractC9645h;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p543b0.p548e.p551c.C9720g;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeFlatMapSingleElement$FlatMapMaybeObserver.class */
public final class MaybeFlatMapSingleElement$FlatMapMaybeObserver<T, R> extends AtomicReference<AbstractC9861b> implements AbstractC9836k<T>, AbstractC9861b {
    public static final long serialVersionUID = 4827726964688405508L;
    public final AbstractC9836k<? super R> actual;
    public final AbstractC9645h<? super T, ? extends AbstractC9852v<? extends R>> mapper;

    public MaybeFlatMapSingleElement$FlatMapMaybeObserver(AbstractC9836k<? super R> kVar, AbstractC9645h<? super T, ? extends AbstractC9852v<? extends R>> hVar) {
        this.actual = kVar;
        this.mapper = hVar;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(get());
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onComplete() {
        this.actual.onComplete();
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onError(Throwable th) {
        this.actual.onError(th);
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onSubscribe(AbstractC9861b bVar) {
        if (DisposableHelper.setOnce(this, bVar)) {
            this.actual.onSubscribe(this);
        }
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onSuccess(T t) {
        try {
            Object apply = this.mapper.apply(t);
            C9650a.m2095a(apply, "The mapper returned a null SingleSource");
            ((AbstractC9852v) apply).mo1841a(new C9720g(this, this.actual));
        } catch (Throwable th) {
            C9863a.m1822b(th);
            onError(th);
        }
    }
}

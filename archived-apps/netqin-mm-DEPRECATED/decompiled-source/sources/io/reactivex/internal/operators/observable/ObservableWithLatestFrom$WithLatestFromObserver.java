package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p542a0.AbstractC9640c;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableWithLatestFrom$WithLatestFromObserver.class */
public final class ObservableWithLatestFrom$WithLatestFromObserver<T, U, R> extends AtomicReference<U> implements AbstractC9844r<T>, AbstractC9861b {
    public static final long serialVersionUID = -312246233408980075L;
    public final AbstractC9844r<? super R> actual;
    public final AbstractC9640c<? super T, ? super U, ? extends R> combiner;

    /* renamed from: s */
    public final AtomicReference<AbstractC9861b> f38536s = new AtomicReference<>();
    public final AtomicReference<AbstractC9861b> other = new AtomicReference<>();

    public ObservableWithLatestFrom$WithLatestFromObserver(AbstractC9844r<? super R> rVar, AbstractC9640c<? super T, ? super U, ? extends R> cVar) {
        this.actual = rVar;
        this.combiner = cVar;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        DisposableHelper.dispose(this.f38536s);
        DisposableHelper.dispose(this.other);
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(this.f38536s.get());
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onComplete() {
        DisposableHelper.dispose(this.other);
        this.actual.onComplete();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onError(Throwable th) {
        DisposableHelper.dispose(this.other);
        this.actual.onError(th);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onNext(T t) {
        U u = get();
        if (u != null) {
            try {
                Object apply = this.combiner.apply(t, u);
                C9650a.m2095a(apply, "The combiner returned a null value");
                this.actual.onNext(apply);
            } catch (Throwable th) {
                C9863a.m1822b(th);
                dispose();
                this.actual.onError(th);
            }
        }
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onSubscribe(AbstractC9861b bVar) {
        DisposableHelper.setOnce(this.f38536s, bVar);
    }

    public void otherError(Throwable th) {
        DisposableHelper.dispose(this.f38536s);
        this.actual.onError(th);
    }

    public boolean setOther(AbstractC9861b bVar) {
        return DisposableHelper.setOnce(this.other, bVar);
    }
}

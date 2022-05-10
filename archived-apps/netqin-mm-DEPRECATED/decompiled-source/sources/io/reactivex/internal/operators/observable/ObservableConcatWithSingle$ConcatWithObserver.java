package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.AbstractC9851u;
import p530d.p541c.AbstractC9852v;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableConcatWithSingle$ConcatWithObserver.class */
public final class ObservableConcatWithSingle$ConcatWithObserver<T> extends AtomicReference<AbstractC9861b> implements AbstractC9844r<T>, AbstractC9851u<T>, AbstractC9861b {
    public static final long serialVersionUID = -1953724749712440952L;
    public final AbstractC9844r<? super T> actual;
    public boolean inSingle;
    public AbstractC9852v<? extends T> other;

    public ObservableConcatWithSingle$ConcatWithObserver(AbstractC9844r<? super T> rVar, AbstractC9852v<? extends T> vVar) {
        this.actual = rVar;
        this.other = vVar;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(get());
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onComplete() {
        this.inSingle = true;
        DisposableHelper.replace(this, null);
        AbstractC9852v<? extends T> vVar = this.other;
        this.other = null;
        vVar.mo1841a(this);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onError(Throwable th) {
        this.actual.onError(th);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onNext(T t) {
        this.actual.onNext(t);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onSubscribe(AbstractC9861b bVar) {
        if (DisposableHelper.setOnce(this, bVar) && !this.inSingle) {
            this.actual.onSubscribe(this);
        }
    }

    @Override // p530d.p541c.AbstractC9851u
    public void onSuccess(T t) {
        this.actual.onNext(t);
        this.actual.onComplete();
    }
}

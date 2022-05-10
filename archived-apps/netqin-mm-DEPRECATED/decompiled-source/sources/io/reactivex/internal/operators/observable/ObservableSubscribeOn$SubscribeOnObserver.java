package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver.class */
public final class ObservableSubscribeOn$SubscribeOnObserver<T> extends AtomicReference<AbstractC9861b> implements AbstractC9844r<T>, AbstractC9861b {
    public static final long serialVersionUID = 8094547886072529208L;
    public final AbstractC9844r<? super T> actual;

    /* renamed from: s */
    public final AtomicReference<AbstractC9861b> f38525s = new AtomicReference<>();

    public ObservableSubscribeOn$SubscribeOnObserver(AbstractC9844r<? super T> rVar) {
        this.actual = rVar;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        DisposableHelper.dispose(this.f38525s);
        DisposableHelper.dispose(this);
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(get());
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onComplete() {
        this.actual.onComplete();
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
        DisposableHelper.setOnce(this.f38525s, bVar);
    }

    public void setDisposable(AbstractC9861b bVar) {
        DisposableHelper.setOnce(this, bVar);
    }
}

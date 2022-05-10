package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver.class */
public final class ObservableCombineLatest$CombinerObserver<T, R> extends AtomicReference<AbstractC9861b> implements AbstractC9844r<T> {
    public static final long serialVersionUID = -4823716997131257941L;
    public final int index;
    public final ObservableCombineLatest$LatestCoordinator<T, R> parent;

    public ObservableCombineLatest$CombinerObserver(ObservableCombineLatest$LatestCoordinator<T, R> observableCombineLatest$LatestCoordinator, int i) {
        this.parent = observableCombineLatest$LatestCoordinator;
        this.index = i;
    }

    public void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onComplete() {
        this.parent.innerComplete(this.index);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onError(Throwable th) {
        this.parent.innerError(this.index, th);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onNext(T t) {
        this.parent.innerNext(this.index, t);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onSubscribe(AbstractC9861b bVar) {
        DisposableHelper.setOnce(this, bVar);
    }
}

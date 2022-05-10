package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p543b0.p548e.p552d.AbstractC9748k;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableGroupJoin$LeftRightObserver.class */
public final class ObservableGroupJoin$LeftRightObserver extends AtomicReference<AbstractC9861b> implements AbstractC9844r<Object>, AbstractC9861b {
    public static final long serialVersionUID = 1883890389173668373L;
    public final boolean isLeft;
    public final AbstractC9748k parent;

    public ObservableGroupJoin$LeftRightObserver(AbstractC9748k kVar, boolean z) {
        this.parent = kVar;
        this.isLeft = z;
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
        this.parent.innerComplete(this);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onError(Throwable th) {
        this.parent.innerError(th);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onNext(Object obj) {
        this.parent.innerValue(this.isLeft, obj);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onSubscribe(AbstractC9861b bVar) {
        DisposableHelper.setOnce(this, bVar);
    }
}

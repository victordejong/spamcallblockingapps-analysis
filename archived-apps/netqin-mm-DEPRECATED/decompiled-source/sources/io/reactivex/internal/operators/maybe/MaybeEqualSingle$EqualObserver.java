package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9836k;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualObserver.class */
public final class MaybeEqualSingle$EqualObserver<T> extends AtomicReference<AbstractC9861b> implements AbstractC9836k<T> {
    public static final long serialVersionUID = -3031974433025990931L;
    public final MaybeEqualSingle$EqualCoordinator<T> parent;
    public Object value;

    public MaybeEqualSingle$EqualObserver(MaybeEqualSingle$EqualCoordinator<T> maybeEqualSingle$EqualCoordinator) {
        this.parent = maybeEqualSingle$EqualCoordinator;
    }

    public void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onComplete() {
        this.parent.done();
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onError(Throwable th) {
        this.parent.error(this, th);
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onSubscribe(AbstractC9861b bVar) {
        DisposableHelper.setOnce(this, bVar);
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onSuccess(T t) {
        this.value = t;
        this.parent.done();
    }
}

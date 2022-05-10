package io.reactivex.internal.observers;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9851u;
import p530d.p541c.p542a0.AbstractC9639b;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/observers/BiConsumerSingleObserver.class */
public final class BiConsumerSingleObserver<T> extends AtomicReference<AbstractC9861b> implements AbstractC9851u<T>, AbstractC9861b {
    public static final long serialVersionUID = 4943102778943297569L;
    public final AbstractC9639b<? super T, ? super Throwable> onCallback;

    public BiConsumerSingleObserver(AbstractC9639b<? super T, ? super Throwable> bVar) {
        this.onCallback = bVar;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return get() == DisposableHelper.DISPOSED;
    }

    @Override // p530d.p541c.AbstractC9851u
    public void onError(Throwable th) {
        try {
            lazySet(DisposableHelper.DISPOSED);
            this.onCallback.m2102a(null, th);
        } catch (Throwable th2) {
            C9863a.m1822b(th2);
            C9815a.m1923b(new CompositeException(th, th2));
        }
    }

    @Override // p530d.p541c.AbstractC9851u
    public void onSubscribe(AbstractC9861b bVar) {
        DisposableHelper.setOnce(this, bVar);
    }

    @Override // p530d.p541c.AbstractC9851u
    public void onSuccess(T t) {
        try {
            lazySet(DisposableHelper.DISPOSED);
            this.onCallback.m2102a(t, null);
        } catch (Throwable th) {
            C9863a.m1822b(th);
            C9815a.m1923b(th);
        }
    }
}

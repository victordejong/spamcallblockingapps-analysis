package io.reactivex.internal.operators.single;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9851u;
import p530d.p541c.p542a0.AbstractC9638a;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleDoOnDispose$DoOnDisposeObserver.class */
public final class SingleDoOnDispose$DoOnDisposeObserver<T> extends AtomicReference<AbstractC9638a> implements AbstractC9851u<T>, AbstractC9861b {
    public static final long serialVersionUID = -8583764624474935784L;
    public final AbstractC9851u<? super T> actual;

    /* renamed from: d */
    public AbstractC9861b f38546d;

    public SingleDoOnDispose$DoOnDisposeObserver(AbstractC9851u<? super T> uVar, AbstractC9638a aVar) {
        this.actual = uVar;
        lazySet(aVar);
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        AbstractC9638a andSet = getAndSet(null);
        if (andSet != null) {
            try {
                andSet.run();
            } catch (Throwable th) {
                C9863a.m1822b(th);
                C9815a.m1923b(th);
            }
            this.f38546d.dispose();
        }
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return this.f38546d.isDisposed();
    }

    @Override // p530d.p541c.AbstractC9851u
    public void onError(Throwable th) {
        this.actual.onError(th);
    }

    @Override // p530d.p541c.AbstractC9851u
    public void onSubscribe(AbstractC9861b bVar) {
        if (DisposableHelper.validate(this.f38546d, bVar)) {
            this.f38546d = bVar;
            this.actual.onSubscribe(this);
        }
    }

    @Override // p530d.p541c.AbstractC9851u
    public void onSuccess(T t) {
        this.actual.onSuccess(t);
    }
}

package io.reactivex.internal.operators.maybe;

import java.util.concurrent.atomic.AtomicBoolean;
import p530d.p541c.AbstractC9836k;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p568x.C9860a;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeAmb$AmbMaybeObserver.class */
public final class MaybeAmb$AmbMaybeObserver<T> extends AtomicBoolean implements AbstractC9836k<T>, AbstractC9861b {
    public static final long serialVersionUID = -7044685185359438206L;
    public final AbstractC9836k<? super T> actual;
    public final C9860a set = new C9860a();

    public MaybeAmb$AmbMaybeObserver(AbstractC9836k<? super T> kVar) {
        this.actual = kVar;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        if (compareAndSet(false, true)) {
            this.set.dispose();
        }
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return get();
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onComplete() {
        if (compareAndSet(false, true)) {
            this.set.dispose();
            this.actual.onComplete();
        }
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onError(Throwable th) {
        if (compareAndSet(false, true)) {
            this.set.dispose();
            this.actual.onError(th);
            return;
        }
        C9815a.m1923b(th);
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onSubscribe(AbstractC9861b bVar) {
        this.set.mo1828b(bVar);
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onSuccess(T t) {
        if (compareAndSet(false, true)) {
            this.set.dispose();
            this.actual.onSuccess(t);
        }
    }
}

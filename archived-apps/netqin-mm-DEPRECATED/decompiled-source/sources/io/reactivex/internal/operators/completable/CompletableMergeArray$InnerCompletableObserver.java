package io.reactivex.internal.operators.completable;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import p530d.p541c.AbstractC9647b;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p568x.C9860a;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableMergeArray$InnerCompletableObserver.class */
public final class CompletableMergeArray$InnerCompletableObserver extends AtomicInteger implements AbstractC9647b {
    public static final long serialVersionUID = -8360547806504310570L;
    public final AbstractC9647b actual;
    public final AtomicBoolean once;
    public final C9860a set;

    public CompletableMergeArray$InnerCompletableObserver(AbstractC9647b bVar, AtomicBoolean atomicBoolean, C9860a aVar, int i) {
        this.actual = bVar;
        this.once = atomicBoolean;
        this.set = aVar;
        lazySet(i);
    }

    @Override // p530d.p541c.AbstractC9647b
    public void onComplete() {
        if (decrementAndGet() == 0 && this.once.compareAndSet(false, true)) {
            this.actual.onComplete();
        }
    }

    @Override // p530d.p541c.AbstractC9647b
    public void onError(Throwable th) {
        this.set.dispose();
        if (this.once.compareAndSet(false, true)) {
            this.actual.onError(th);
        } else {
            C9815a.m1923b(th);
        }
    }

    @Override // p530d.p541c.AbstractC9647b
    public void onSubscribe(AbstractC9861b bVar) {
        this.set.mo1828b(bVar);
    }
}

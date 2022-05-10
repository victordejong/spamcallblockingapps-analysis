package io.reactivex.internal.operators.completable;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import p530d.p541c.AbstractC9647b;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p568x.C9860a;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableMergeIterable$MergeCompletableObserver.class */
public final class CompletableMergeIterable$MergeCompletableObserver extends AtomicBoolean implements AbstractC9647b {
    public static final long serialVersionUID = -7730517613164279224L;
    public final AbstractC9647b actual;
    public final C9860a set;
    public final AtomicInteger wip;

    public CompletableMergeIterable$MergeCompletableObserver(AbstractC9647b bVar, C9860a aVar, AtomicInteger atomicInteger) {
        this.actual = bVar;
        this.set = aVar;
        this.wip = atomicInteger;
    }

    @Override // p530d.p541c.AbstractC9647b
    public void onComplete() {
        if (this.wip.decrementAndGet() == 0 && compareAndSet(false, true)) {
            this.actual.onComplete();
        }
    }

    @Override // p530d.p541c.AbstractC9647b
    public void onError(Throwable th) {
        this.set.dispose();
        if (compareAndSet(false, true)) {
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

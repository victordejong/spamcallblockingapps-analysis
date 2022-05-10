package io.reactivex.internal.operators.completable;

import io.reactivex.internal.disposables.SequentialDisposable;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;
import p530d.p541c.AbstractC9647b;
import p530d.p541c.AbstractC9809c;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableConcatIterable$ConcatInnerObserver.class */
public final class CompletableConcatIterable$ConcatInnerObserver extends AtomicInteger implements AbstractC9647b {
    public static final long serialVersionUID = -7965400327305809232L;
    public final AbstractC9647b actual;

    /* renamed from: sd */
    public final SequentialDisposable f38333sd = new SequentialDisposable();
    public final Iterator<? extends AbstractC9809c> sources;

    public CompletableConcatIterable$ConcatInnerObserver(AbstractC9647b bVar, Iterator<? extends AbstractC9809c> it) {
        this.actual = bVar;
        this.sources = it;
    }

    public void next() {
        if (!this.f38333sd.isDisposed() && getAndIncrement() == 0) {
            Iterator<? extends AbstractC9809c> it = this.sources;
            while (!this.f38333sd.isDisposed()) {
                try {
                    if (!it.hasNext()) {
                        this.actual.onComplete();
                        return;
                    }
                    try {
                        Object next = it.next();
                        C9650a.m2095a(next, "The CompletableSource returned is null");
                        ((AbstractC9809c) next).mo1980a(this);
                        if (decrementAndGet() == 0) {
                            return;
                        }
                    } catch (Throwable th) {
                        C9863a.m1822b(th);
                        this.actual.onError(th);
                        return;
                    }
                } catch (Throwable th2) {
                    C9863a.m1822b(th2);
                    this.actual.onError(th2);
                    return;
                }
            }
        }
    }

    @Override // p530d.p541c.AbstractC9647b
    public void onComplete() {
        next();
    }

    @Override // p530d.p541c.AbstractC9647b
    public void onError(Throwable th) {
        this.actual.onError(th);
    }

    @Override // p530d.p541c.AbstractC9647b
    public void onSubscribe(AbstractC9861b bVar) {
        this.f38333sd.replace(bVar);
    }
}

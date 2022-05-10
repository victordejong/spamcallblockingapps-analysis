package io.reactivex.internal.operators.observable;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.SequentialDisposable;
import java.util.concurrent.atomic.AtomicInteger;
import p530d.p541c.AbstractC9843q;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p542a0.AbstractC9641d;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableRetryBiPredicate$RetryBiObserver.class */
public final class ObservableRetryBiPredicate$RetryBiObserver<T> extends AtomicInteger implements AbstractC9844r<T> {
    public static final long serialVersionUID = -7098360935104053232L;
    public final AbstractC9844r<? super T> actual;
    public final AbstractC9641d<? super Integer, ? super Throwable> predicate;
    public int retries;

    /* renamed from: sa */
    public final SequentialDisposable f38512sa;
    public final AbstractC9843q<? extends T> source;

    public ObservableRetryBiPredicate$RetryBiObserver(AbstractC9844r<? super T> rVar, AbstractC9641d<? super Integer, ? super Throwable> dVar, SequentialDisposable sequentialDisposable, AbstractC9843q<? extends T> qVar) {
        this.actual = rVar;
        this.f38512sa = sequentialDisposable;
        this.source = qVar;
        this.predicate = dVar;
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onComplete() {
        this.actual.onComplete();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onError(Throwable th) {
        try {
            AbstractC9641d<? super Integer, ? super Throwable> dVar = this.predicate;
            int i = this.retries + 1;
            this.retries = i;
            if (!dVar.mo2094a(Integer.valueOf(i), th)) {
                this.actual.onError(th);
            } else {
                subscribeNext();
            }
        } catch (Throwable th2) {
            C9863a.m1822b(th2);
            this.actual.onError(new CompositeException(th, th2));
        }
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onNext(T t) {
        this.actual.onNext(t);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onSubscribe(AbstractC9861b bVar) {
        this.f38512sa.update(bVar);
    }

    public void subscribeNext() {
        if (getAndIncrement() == 0) {
            int i = 1;
            while (!this.f38512sa.isDisposed()) {
                this.source.subscribe(this);
                int addAndGet = addAndGet(-i);
                i = addAndGet;
                if (addAndGet == 0) {
                    return;
                }
            }
        }
    }
}

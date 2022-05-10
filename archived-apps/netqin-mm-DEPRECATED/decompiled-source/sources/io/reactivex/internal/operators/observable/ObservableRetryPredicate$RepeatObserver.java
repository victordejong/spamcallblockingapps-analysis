package io.reactivex.internal.operators.observable;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.SequentialDisposable;
import java.util.concurrent.atomic.AtomicInteger;
import p530d.p541c.AbstractC9843q;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p542a0.AbstractC9646i;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableRetryPredicate$RepeatObserver.class */
public final class ObservableRetryPredicate$RepeatObserver<T> extends AtomicInteger implements AbstractC9844r<T> {
    public static final long serialVersionUID = -7098360935104053232L;
    public final AbstractC9844r<? super T> actual;
    public final AbstractC9646i<? super Throwable> predicate;
    public long remaining;

    /* renamed from: sa */
    public final SequentialDisposable f38513sa;
    public final AbstractC9843q<? extends T> source;

    public ObservableRetryPredicate$RepeatObserver(AbstractC9844r<? super T> rVar, long j, AbstractC9646i<? super Throwable> iVar, SequentialDisposable sequentialDisposable, AbstractC9843q<? extends T> qVar) {
        this.actual = rVar;
        this.f38513sa = sequentialDisposable;
        this.source = qVar;
        this.predicate = iVar;
        this.remaining = j;
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onComplete() {
        this.actual.onComplete();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onError(Throwable th) {
        long j = this.remaining;
        if (j != Long.MAX_VALUE) {
            this.remaining = j - 1;
        }
        if (j == 0) {
            this.actual.onError(th);
            return;
        }
        try {
            if (!this.predicate.test(th)) {
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
        this.f38513sa.update(bVar);
    }

    public void subscribeNext() {
        if (getAndIncrement() == 0) {
            int i = 1;
            while (!this.f38513sa.isDisposed()) {
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

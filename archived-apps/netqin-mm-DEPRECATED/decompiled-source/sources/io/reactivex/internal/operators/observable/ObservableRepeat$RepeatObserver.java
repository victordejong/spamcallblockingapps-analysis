package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.SequentialDisposable;
import java.util.concurrent.atomic.AtomicInteger;
import p530d.p541c.AbstractC9843q;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableRepeat$RepeatObserver.class */
public final class ObservableRepeat$RepeatObserver<T> extends AtomicInteger implements AbstractC9844r<T> {
    public static final long serialVersionUID = -7098360935104053232L;
    public final AbstractC9844r<? super T> actual;
    public long remaining;

    /* renamed from: sd */
    public final SequentialDisposable f38509sd;
    public final AbstractC9843q<? extends T> source;

    public ObservableRepeat$RepeatObserver(AbstractC9844r<? super T> rVar, long j, SequentialDisposable sequentialDisposable, AbstractC9843q<? extends T> qVar) {
        this.actual = rVar;
        this.f38509sd = sequentialDisposable;
        this.source = qVar;
        this.remaining = j;
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onComplete() {
        long j = this.remaining;
        if (j != Long.MAX_VALUE) {
            this.remaining = j - 1;
        }
        if (j != 0) {
            subscribeNext();
        } else {
            this.actual.onComplete();
        }
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onError(Throwable th) {
        this.actual.onError(th);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onNext(T t) {
        this.actual.onNext(t);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onSubscribe(AbstractC9861b bVar) {
        this.f38509sd.replace(bVar);
    }

    public void subscribeNext() {
        if (getAndIncrement() == 0) {
            int i = 1;
            while (!this.f38509sd.isDisposed()) {
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

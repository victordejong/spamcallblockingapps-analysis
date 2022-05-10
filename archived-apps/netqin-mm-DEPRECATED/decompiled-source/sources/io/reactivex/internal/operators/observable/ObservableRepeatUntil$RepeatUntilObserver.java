package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.SequentialDisposable;
import java.util.concurrent.atomic.AtomicInteger;
import p530d.p541c.AbstractC9843q;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p542a0.AbstractC9642e;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableRepeatUntil$RepeatUntilObserver.class */
public final class ObservableRepeatUntil$RepeatUntilObserver<T> extends AtomicInteger implements AbstractC9844r<T> {
    public static final long serialVersionUID = -7098360935104053232L;
    public final AbstractC9844r<? super T> actual;

    /* renamed from: sd */
    public final SequentialDisposable f38510sd;
    public final AbstractC9843q<? extends T> source;
    public final AbstractC9642e stop;

    public ObservableRepeatUntil$RepeatUntilObserver(AbstractC9844r<? super T> rVar, AbstractC9642e eVar, SequentialDisposable sequentialDisposable, AbstractC9843q<? extends T> qVar) {
        this.actual = rVar;
        this.f38510sd = sequentialDisposable;
        this.source = qVar;
        this.stop = eVar;
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onComplete() {
        try {
            if (this.stop.getAsBoolean()) {
                this.actual.onComplete();
            } else {
                subscribeNext();
            }
        } catch (Throwable th) {
            C9863a.m1822b(th);
            this.actual.onError(th);
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
        this.f38510sd.replace(bVar);
    }

    public void subscribeNext() {
        int addAndGet;
        if (getAndIncrement() == 0) {
            int i = 1;
            do {
                this.source.subscribe(this);
                addAndGet = addAndGet(-i);
                i = addAndGet;
            } while (addAndGet != 0);
        }
    }
}

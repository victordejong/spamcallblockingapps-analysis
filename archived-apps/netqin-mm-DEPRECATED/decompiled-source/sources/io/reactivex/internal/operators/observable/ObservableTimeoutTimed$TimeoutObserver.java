package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.SequentialDisposable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.AbstractC9845s;
import p530d.p541c.p543b0.p548e.p552d.AbstractC9761v;
import p530d.p541c.p543b0.p548e.p552d.RunnableC9762w;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutObserver.class */
public final class ObservableTimeoutTimed$TimeoutObserver<T> extends AtomicLong implements AbstractC9844r<T>, AbstractC9861b, AbstractC9761v {
    public static final long serialVersionUID = 3764492702657003550L;
    public final AbstractC9844r<? super T> actual;
    public final long timeout;
    public final TimeUnit unit;
    public final AbstractC9845s.AbstractC9848c worker;
    public final SequentialDisposable task = new SequentialDisposable();
    public final AtomicReference<AbstractC9861b> upstream = new AtomicReference<>();

    public ObservableTimeoutTimed$TimeoutObserver(AbstractC9844r<? super T> rVar, long j, TimeUnit timeUnit, AbstractC9845s.AbstractC9848c cVar) {
        this.actual = rVar;
        this.timeout = j;
        this.unit = timeUnit;
        this.worker = cVar;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        DisposableHelper.dispose(this.upstream);
        this.worker.dispose();
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(this.upstream.get());
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onComplete() {
        if (getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
            this.task.dispose();
            this.actual.onComplete();
            this.worker.dispose();
        }
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onError(Throwable th) {
        if (getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
            this.task.dispose();
            this.actual.onError(th);
            this.worker.dispose();
            return;
        }
        C9815a.m1923b(th);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onNext(T t) {
        long j = get();
        if (j != Long.MAX_VALUE) {
            long j2 = 1 + j;
            if (compareAndSet(j, j2)) {
                this.task.get().dispose();
                this.actual.onNext(t);
                startTimeout(j2);
            }
        }
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onSubscribe(AbstractC9861b bVar) {
        DisposableHelper.setOnce(this.upstream, bVar);
    }

    @Override // p530d.p541c.p543b0.p548e.p552d.AbstractC9761v
    public void onTimeout(long j) {
        if (compareAndSet(j, Long.MAX_VALUE)) {
            DisposableHelper.dispose(this.upstream);
            this.actual.onError(new TimeoutException());
            this.worker.dispose();
        }
    }

    public void startTimeout(long j) {
        this.task.replace(this.worker.mo1832a(new RunnableC9762w(j, this), this.timeout, this.unit));
    }
}

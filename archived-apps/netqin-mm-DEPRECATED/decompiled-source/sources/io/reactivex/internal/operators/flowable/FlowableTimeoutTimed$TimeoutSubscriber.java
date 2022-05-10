package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.AbstractC9845s;
import p530d.p541c.p543b0.p548e.p550b.AbstractC9706u;
import p530d.p541c.p543b0.p548e.p550b.RunnableC9707v;
import p530d.p541c.p560e0.C9815a;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutSubscriber.class */
public final class FlowableTimeoutTimed$TimeoutSubscriber<T> extends AtomicLong implements AbstractC9829h<T>, AbstractC10434d, AbstractC9706u {
    public static final long serialVersionUID = 3764492702657003550L;
    public final AbstractC10433c<? super T> actual;
    public final long timeout;
    public final TimeUnit unit;
    public final AbstractC9845s.AbstractC9848c worker;
    public final SequentialDisposable task = new SequentialDisposable();
    public final AtomicReference<AbstractC10434d> upstream = new AtomicReference<>();
    public final AtomicLong requested = new AtomicLong();

    public FlowableTimeoutTimed$TimeoutSubscriber(AbstractC10433c<? super T> cVar, long j, TimeUnit timeUnit, AbstractC9845s.AbstractC9848c cVar2) {
        this.actual = cVar;
        this.timeout = j;
        this.unit = timeUnit;
        this.worker = cVar2;
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
        SubscriptionHelper.cancel(this.upstream);
        this.worker.dispose();
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        if (getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
            this.task.dispose();
            this.actual.onComplete();
            this.worker.dispose();
        }
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        if (getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
            this.task.dispose();
            this.actual.onError(th);
            this.worker.dispose();
            return;
        }
        C9815a.m1923b(th);
    }

    @Override // p611j.p612a.AbstractC10433c
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

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        SubscriptionHelper.deferredSetOnce(this.upstream, this.requested, dVar);
    }

    @Override // p530d.p541c.p543b0.p548e.p550b.AbstractC9706u
    public void onTimeout(long j) {
        if (compareAndSet(j, Long.MAX_VALUE)) {
            SubscriptionHelper.cancel(this.upstream);
            this.actual.onError(new TimeoutException());
            this.worker.dispose();
        }
    }

    @Override // p611j.p612a.AbstractC10434d
    public void request(long j) {
        SubscriptionHelper.deferredRequest(this.upstream, this.requested, j);
    }

    public void startTimeout(long j) {
        this.task.replace(this.worker.mo1832a(new RunnableC9707v(j, this), this.timeout, this.unit));
    }
}

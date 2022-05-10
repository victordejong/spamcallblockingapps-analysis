package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.subscriptions.SubscriptionArbiter;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.AbstractC9845s;
import p530d.p541c.p543b0.p548e.p550b.AbstractC9706u;
import p530d.p541c.p543b0.p548e.p550b.C9705t;
import p530d.p541c.p543b0.p548e.p550b.RunnableC9707v;
import p530d.p541c.p560e0.C9815a;
import p611j.p612a.AbstractC10432b;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableTimeoutTimed$TimeoutFallbackSubscriber.class */
public final class FlowableTimeoutTimed$TimeoutFallbackSubscriber<T> extends SubscriptionArbiter implements AbstractC9829h<T>, AbstractC9706u {
    public static final long serialVersionUID = 3764492702657003550L;
    public final AbstractC10433c<? super T> actual;
    public long consumed;
    public AbstractC10432b<? extends T> fallback;
    public final long timeout;
    public final TimeUnit unit;
    public final AbstractC9845s.AbstractC9848c worker;
    public final SequentialDisposable task = new SequentialDisposable();
    public final AtomicReference<AbstractC10434d> upstream = new AtomicReference<>();
    public final AtomicLong index = new AtomicLong();

    public FlowableTimeoutTimed$TimeoutFallbackSubscriber(AbstractC10433c<? super T> cVar, long j, TimeUnit timeUnit, AbstractC9845s.AbstractC9848c cVar2, AbstractC10432b<? extends T> bVar) {
        this.actual = cVar;
        this.timeout = j;
        this.unit = timeUnit;
        this.worker = cVar2;
        this.fallback = bVar;
    }

    @Override // io.reactivex.internal.subscriptions.SubscriptionArbiter, p611j.p612a.AbstractC10434d
    public void cancel() {
        super.cancel();
        this.worker.dispose();
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        if (this.index.getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
            this.task.dispose();
            this.actual.onComplete();
            this.worker.dispose();
        }
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        if (this.index.getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
            this.task.dispose();
            this.actual.onError(th);
            this.worker.dispose();
            return;
        }
        C9815a.m1923b(th);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        long j = this.index.get();
        if (j != Long.MAX_VALUE) {
            long j2 = j + 1;
            if (this.index.compareAndSet(j, j2)) {
                this.task.get().dispose();
                this.consumed++;
                this.actual.onNext(t);
                startTimeout(j2);
            }
        }
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        if (SubscriptionHelper.setOnce(this.upstream, dVar)) {
            setSubscription(dVar);
        }
    }

    @Override // p530d.p541c.p543b0.p548e.p550b.AbstractC9706u
    public void onTimeout(long j) {
        if (this.index.compareAndSet(j, Long.MAX_VALUE)) {
            SubscriptionHelper.cancel(this.upstream);
            long j2 = this.consumed;
            if (j2 != 0) {
                produced(j2);
            }
            AbstractC10432b<? extends T> bVar = this.fallback;
            this.fallback = null;
            bVar.subscribe(new C9705t(this.actual, this));
            this.worker.dispose();
        }
    }

    public void startTimeout(long j) {
        this.task.replace(this.worker.mo1832a(new RunnableC9707v(j, this), this.timeout, this.unit));
    }
}

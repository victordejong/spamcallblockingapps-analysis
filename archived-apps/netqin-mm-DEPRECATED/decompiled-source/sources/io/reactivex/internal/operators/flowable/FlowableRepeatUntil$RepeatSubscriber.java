package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionArbiter;
import java.util.concurrent.atomic.AtomicInteger;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.p542a0.AbstractC9642e;
import p530d.p541c.p569y.C9863a;
import p611j.p612a.AbstractC10432b;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableRepeatUntil$RepeatSubscriber.class */
public final class FlowableRepeatUntil$RepeatSubscriber<T> extends AtomicInteger implements AbstractC9829h<T> {
    public static final long serialVersionUID = -7098360935104053232L;
    public final AbstractC10433c<? super T> actual;
    public long produced;

    /* renamed from: sa */
    public final SubscriptionArbiter f38413sa;
    public final AbstractC10432b<? extends T> source;
    public final AbstractC9642e stop;

    public FlowableRepeatUntil$RepeatSubscriber(AbstractC10433c<? super T> cVar, AbstractC9642e eVar, SubscriptionArbiter subscriptionArbiter, AbstractC10432b<? extends T> bVar) {
        this.actual = cVar;
        this.f38413sa = subscriptionArbiter;
        this.source = bVar;
        this.stop = eVar;
    }

    @Override // p611j.p612a.AbstractC10433c
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

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        this.actual.onError(th);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        this.produced++;
        this.actual.onNext(t);
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        this.f38413sa.setSubscription(dVar);
    }

    public void subscribeNext() {
        if (getAndIncrement() == 0) {
            int i = 1;
            while (!this.f38413sa.isCancelled()) {
                long j = this.produced;
                if (j != 0) {
                    this.produced = 0L;
                    this.f38413sa.produced(j);
                }
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

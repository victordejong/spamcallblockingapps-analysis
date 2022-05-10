package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.subscriptions.SubscriptionArbiter;
import java.util.concurrent.atomic.AtomicInteger;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.p542a0.AbstractC9641d;
import p530d.p541c.p569y.C9863a;
import p611j.p612a.AbstractC10432b;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableRetryBiPredicate$RetryBiSubscriber.class */
public final class FlowableRetryBiPredicate$RetryBiSubscriber<T> extends AtomicInteger implements AbstractC9829h<T> {
    public static final long serialVersionUID = -7098360935104053232L;
    public final AbstractC10433c<? super T> actual;
    public final AbstractC9641d<? super Integer, ? super Throwable> predicate;
    public long produced;
    public int retries;

    /* renamed from: sa */
    public final SubscriptionArbiter f38414sa;
    public final AbstractC10432b<? extends T> source;

    public FlowableRetryBiPredicate$RetryBiSubscriber(AbstractC10433c<? super T> cVar, AbstractC9641d<? super Integer, ? super Throwable> dVar, SubscriptionArbiter subscriptionArbiter, AbstractC10432b<? extends T> bVar) {
        this.actual = cVar;
        this.f38414sa = subscriptionArbiter;
        this.source = bVar;
        this.predicate = dVar;
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        this.actual.onComplete();
    }

    @Override // p611j.p612a.AbstractC10433c
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

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        this.produced++;
        this.actual.onNext(t);
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        this.f38414sa.setSubscription(dVar);
    }

    public void subscribeNext() {
        if (getAndIncrement() == 0) {
            int i = 1;
            while (!this.f38414sa.isCancelled()) {
                long j = this.produced;
                if (j != 0) {
                    this.produced = 0L;
                    this.f38414sa.produced(j);
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

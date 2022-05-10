package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.subscriptions.SubscriptionArbiter;
import java.util.concurrent.atomic.AtomicInteger;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.p542a0.AbstractC9646i;
import p530d.p541c.p569y.C9863a;
import p611j.p612a.AbstractC10432b;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableRetryPredicate$RetrySubscriber.class */
public final class FlowableRetryPredicate$RetrySubscriber<T> extends AtomicInteger implements AbstractC9829h<T> {
    public static final long serialVersionUID = -7098360935104053232L;
    public final AbstractC10433c<? super T> actual;
    public final AbstractC9646i<? super Throwable> predicate;
    public long produced;
    public long remaining;

    /* renamed from: sa */
    public final SubscriptionArbiter f38415sa;
    public final AbstractC10432b<? extends T> source;

    public FlowableRetryPredicate$RetrySubscriber(AbstractC10433c<? super T> cVar, long j, AbstractC9646i<? super Throwable> iVar, SubscriptionArbiter subscriptionArbiter, AbstractC10432b<? extends T> bVar) {
        this.actual = cVar;
        this.f38415sa = subscriptionArbiter;
        this.source = bVar;
        this.predicate = iVar;
        this.remaining = j;
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        this.actual.onComplete();
    }

    @Override // p611j.p612a.AbstractC10433c
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

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        this.produced++;
        this.actual.onNext(t);
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        this.f38415sa.setSubscription(dVar);
    }

    public void subscribeNext() {
        if (getAndIncrement() == 0) {
            int i = 1;
            while (!this.f38415sa.isCancelled()) {
                long j = this.produced;
                if (j != 0) {
                    this.produced = 0L;
                    this.f38415sa.produced(j);
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

package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9829h;
import p611j.p612a.AbstractC10432b;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenReceiver.class */
public final class FlowableRepeatWhen$WhenReceiver<T, U> extends AtomicInteger implements AbstractC9829h<Object>, AbstractC10434d {
    public static final long serialVersionUID = 2827772011130406689L;
    public final AbstractC10432b<T> source;
    public FlowableRepeatWhen$WhenSourceSubscriber<T, U> subscriber;
    public final AtomicReference<AbstractC10434d> subscription = new AtomicReference<>();
    public final AtomicLong requested = new AtomicLong();

    public FlowableRepeatWhen$WhenReceiver(AbstractC10432b<T> bVar) {
        this.source = bVar;
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
        SubscriptionHelper.cancel(this.subscription);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        this.subscriber.cancel();
        this.subscriber.actual.onComplete();
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        this.subscriber.cancel();
        this.subscriber.actual.onError(th);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(Object obj) {
        if (getAndIncrement() == 0) {
            while (!SubscriptionHelper.isCancelled(this.subscription.get())) {
                this.source.subscribe(this.subscriber);
                if (decrementAndGet() == 0) {
                    return;
                }
            }
        }
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        SubscriptionHelper.deferredSetOnce(this.subscription, this.requested, dVar);
    }

    @Override // p611j.p612a.AbstractC10434d
    public void request(long j) {
        SubscriptionHelper.deferredRequest(this.subscription, this.requested, j);
    }
}

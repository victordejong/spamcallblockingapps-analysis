package io.reactivex.subscribers;

import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.util.EndConsumerHelper;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/subscribers/DefaultSubscriber.class */
public abstract class DefaultSubscriber<T> implements FlowableSubscriber<T> {

    /* renamed from: f */
    Subscription f19783f;

    /* renamed from: a */
    protected void m3176a() {
        m3175b(Long.MAX_VALUE);
    }

    /* renamed from: b */
    protected final void m3175b(long j) {
        Subscription subscription = this.f19783f;
        if (subscription != null) {
            subscription.request(j);
        }
    }

    @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
    public final void onSubscribe(Subscription subscription) {
        if (EndConsumerHelper.m3439f(this.f19783f, subscription, getClass())) {
            this.f19783f = subscription;
            m3176a();
        }
    }
}

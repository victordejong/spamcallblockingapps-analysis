package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableTakeLastOne.class */
public final class FlowableTakeLastOne<T> extends AbstractFlowableWithUpstream<T, T> {

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableTakeLastOne$TakeLastOneSubscriber.class */
    static final class TakeLastOneSubscriber<T> extends DeferredScalarSubscription<T> implements FlowableSubscriber<T> {
        private static final long serialVersionUID = -5467847744262967226L;

        /* renamed from: s */
        Subscription f477s;

        TakeLastOneSubscriber(Subscriber<? super T> subscriber) {
            super(subscriber);
        }

        @Override // io.reactivex.internal.subscriptions.DeferredScalarSubscription, org.reactivestreams.Subscription
        public void cancel() {
            super.cancel();
            this.f477s.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            T t = this.value;
            if (t != null) {
                complete(t);
            } else {
                this.actual.onComplete();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.value = null;
            this.actual.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.value = t;
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f477s, subscription)) {
                this.f477s = subscription;
                this.actual.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }
    }

    public FlowableTakeLastOne(Flowable<T> flowable) {
        super(flowable);
    }

    @Override // io.reactivex.Flowable
    protected void subscribeActual(Subscriber<? super T> subscriber) {
        this.source.subscribe((FlowableSubscriber) new TakeLastOneSubscriber(subscriber));
    }
}

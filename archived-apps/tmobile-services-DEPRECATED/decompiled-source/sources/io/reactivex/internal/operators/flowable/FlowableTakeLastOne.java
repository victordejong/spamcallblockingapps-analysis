package io.reactivex.internal.operators.flowable;

import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableTakeLastOne.class */
public final class FlowableTakeLastOne<T> extends AbstractFlowableWithUpstream<T, T> {

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableTakeLastOne$TakeLastOneSubscriber.class */
    static final class TakeLastOneSubscriber<T> extends DeferredScalarSubscription<T> implements FlowableSubscriber<T> {
        private static final long serialVersionUID = -5467847744262967226L;

        /* renamed from: h */
        Subscription f16637h;

        TakeLastOneSubscriber(Subscriber<? super T> subscriber) {
            super(subscriber);
        }

        @Override // io.reactivex.internal.subscriptions.DeferredScalarSubscription, org.reactivestreams.Subscription
        public void cancel() {
            super.cancel();
            this.f16637h.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            T t = this.f19406g;
            if (t != null) {
                m3470d(t);
            } else {
                this.f19405f.onComplete();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f19406g = null;
            this.f19405f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.f19406g = t;
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f16637h, subscription)) {
                this.f16637h = subscription;
                this.f19405f.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        this.f15411g.m4493v(new TakeLastOneSubscriber(subscriber));
    }
}

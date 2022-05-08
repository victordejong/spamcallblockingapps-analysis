package io.reactivex.internal.operators.flowable;

import io.reactivex.FlowableSubscriber;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Predicate;
import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableAny.class */
public final class FlowableAny<T> extends AbstractFlowableWithUpstream<T, Boolean> {

    /* renamed from: h */
    final Predicate<? super T> f15461h;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableAny$AnySubscriber.class */
    static final class AnySubscriber<T> extends DeferredScalarSubscription<Boolean> implements FlowableSubscriber<T> {
        private static final long serialVersionUID = -2311252482644620661L;

        /* renamed from: h */
        final Predicate<? super T> f15462h;

        /* renamed from: i */
        Subscription f15463i;

        /* renamed from: j */
        boolean f15464j;

        AnySubscriber(Subscriber<? super Boolean> subscriber, Predicate<? super T> predicate) {
            super(subscriber);
            this.f15462h = predicate;
        }

        @Override // io.reactivex.internal.subscriptions.DeferredScalarSubscription, org.reactivestreams.Subscription
        public void cancel() {
            super.cancel();
            this.f15463i.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.f15464j) {
                this.f15464j = true;
                m3470d(Boolean.FALSE);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f15464j) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f15464j = true;
            this.f19405f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!this.f15464j) {
                try {
                    if (this.f15462h.mo3191a(t)) {
                        this.f15464j = true;
                        this.f15463i.cancel();
                        m3470d(Boolean.TRUE);
                    }
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    this.f15463i.cancel();
                    onError(th);
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f15463i, subscription)) {
                this.f15463i = subscription;
                this.f19405f.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super Boolean> subscriber) {
        this.f15411g.m4493v(new AnySubscriber(subscriber, this.f15461h));
    }
}

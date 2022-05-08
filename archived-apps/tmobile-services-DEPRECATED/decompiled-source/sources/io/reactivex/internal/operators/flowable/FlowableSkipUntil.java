package io.reactivex.internal.operators.flowable;

import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.fuseable.ConditionalSubscriber;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.HalfSerializer;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableSkipUntil.class */
public final class FlowableSkipUntil<T, U> extends AbstractFlowableWithUpstream<T, T> {

    /* renamed from: h */
    final Publisher<U> f16574h;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableSkipUntil$SkipUntilMainSubscriber.class */
    static final class SkipUntilMainSubscriber<T> extends AtomicInteger implements ConditionalSubscriber<T>, Subscription {
        private static final long serialVersionUID = -6270983465606289181L;

        /* renamed from: f */
        final Subscriber<? super T> f16575f;

        /* renamed from: g */
        final AtomicReference<Subscription> f16576g = new AtomicReference<>();

        /* renamed from: h */
        final AtomicLong f16577h = new AtomicLong();

        /* renamed from: i */
        final SkipUntilMainSubscriber<T>.OtherSubscriber f16578i = new OtherSubscriber();

        /* renamed from: j */
        final AtomicThrowable f16579j = new AtomicThrowable();

        /* renamed from: k */
        volatile boolean f16580k;

        /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableSkipUntil$SkipUntilMainSubscriber$OtherSubscriber.class */
        final class OtherSubscriber extends AtomicReference<Subscription> implements FlowableSubscriber<Object> {
            private static final long serialVersionUID = -5592042965931999169L;

            OtherSubscriber() {
            }

            @Override // org.reactivestreams.Subscriber
            public void onComplete() {
                SkipUntilMainSubscriber.this.f16580k = true;
            }

            @Override // org.reactivestreams.Subscriber
            public void onError(Throwable th) {
                SubscriptionHelper.cancel(SkipUntilMainSubscriber.this.f16576g);
                SkipUntilMainSubscriber skipUntilMainSubscriber = SkipUntilMainSubscriber.this;
                HalfSerializer.m3430d(skipUntilMainSubscriber.f16575f, th, skipUntilMainSubscriber, skipUntilMainSubscriber.f16579j);
            }

            @Override // org.reactivestreams.Subscriber
            public void onNext(Object obj) {
                SkipUntilMainSubscriber.this.f16580k = true;
                get().cancel();
            }

            @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
            public void onSubscribe(Subscription subscription) {
                SubscriptionHelper.setOnce(this, subscription, Long.MAX_VALUE);
            }
        }

        SkipUntilMainSubscriber(Subscriber<? super T> subscriber) {
            this.f16575f = subscriber;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            SubscriptionHelper.cancel(this.f16576g);
            SubscriptionHelper.cancel(this.f16578i);
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            SubscriptionHelper.cancel(this.f16578i);
            HalfSerializer.m3432b(this.f16575f, this, this.f16579j);
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            SubscriptionHelper.cancel(this.f16578i);
            HalfSerializer.m3430d(this.f16575f, th, this, this.f16579j);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!mo3605p(t)) {
                this.f16576g.get().request(1L);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            SubscriptionHelper.deferredSetOnce(this.f16576g, this.f16577h, subscription);
        }

        @Override // io.reactivex.internal.fuseable.ConditionalSubscriber
        /* renamed from: p */
        public boolean mo3605p(T t) {
            if (!this.f16580k) {
                return false;
            }
            HalfSerializer.m3428f(this.f16575f, t, this, this.f16579j);
            return true;
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            SubscriptionHelper.deferredRequest(this.f16576g, this.f16577h, j);
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        SkipUntilMainSubscriber skipUntilMainSubscriber = new SkipUntilMainSubscriber(subscriber);
        subscriber.onSubscribe(skipUntilMainSubscriber);
        this.f16574h.mo5c(skipUntilMainSubscriber.f16578i);
        this.f15411g.m4493v(skipUntilMainSubscriber);
    }
}

package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionArbiter;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.processors.FlowableProcessor;
import io.reactivex.processors.UnicastProcessor;
import io.reactivex.subscribers.SerializedSubscriber;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableRepeatWhen.class */
public final class FlowableRepeatWhen<T> extends AbstractFlowableWithUpstream<T, T> {

    /* renamed from: h */
    final Function<? super Flowable<Object>, ? extends Publisher<?>> f16390h;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableRepeatWhen$RepeatWhenSubscriber.class */
    static final class RepeatWhenSubscriber<T> extends WhenSourceSubscriber<T, Object> {
        private static final long serialVersionUID = -2680129890138081029L;

        RepeatWhenSubscriber(Subscriber<? super T> subscriber, FlowableProcessor<Object> flowableProcessor, Subscription subscription) {
            super(subscriber, flowableProcessor, subscription);
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            m4115i(0);
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f16397p.cancel();
            this.f16395n.onError(th);
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenReceiver.class */
    static final class WhenReceiver<T, U> extends AtomicInteger implements FlowableSubscriber<Object>, Subscription {
        private static final long serialVersionUID = 2827772011130406689L;

        /* renamed from: f */
        final Publisher<T> f16391f;

        /* renamed from: g */
        final AtomicReference<Subscription> f16392g = new AtomicReference<>();

        /* renamed from: h */
        final AtomicLong f16393h = new AtomicLong();

        /* renamed from: i */
        WhenSourceSubscriber<T, U> f16394i;

        /* JADX INFO: Access modifiers changed from: package-private */
        public WhenReceiver(Publisher<T> publisher) {
            this.f16391f = publisher;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            SubscriptionHelper.cancel(this.f16392g);
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f16394i.cancel();
            this.f16394i.f16395n.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f16394i.cancel();
            this.f16394i.f16395n.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(Object obj) {
            if (getAndIncrement() == 0) {
                while (this.f16392g.get() != SubscriptionHelper.CANCELLED) {
                    this.f16391f.mo5c(this.f16394i);
                    if (decrementAndGet() == 0) {
                        return;
                    }
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            SubscriptionHelper.deferredSetOnce(this.f16392g, this.f16393h, subscription);
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            SubscriptionHelper.deferredRequest(this.f16392g, this.f16393h, j);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenSourceSubscriber.class */
    public static abstract class WhenSourceSubscriber<T, U> extends SubscriptionArbiter implements FlowableSubscriber<T> {
        private static final long serialVersionUID = -5604623027276966720L;

        /* renamed from: n */
        protected final Subscriber<? super T> f16395n;

        /* renamed from: o */
        protected final FlowableProcessor<U> f16396o;

        /* renamed from: p */
        protected final Subscription f16397p;

        /* renamed from: q */
        private long f16398q;

        /* JADX INFO: Access modifiers changed from: package-private */
        public WhenSourceSubscriber(Subscriber<? super T> subscriber, FlowableProcessor<U> flowableProcessor, Subscription subscription) {
            super(false);
            this.f16395n = subscriber;
            this.f16396o = flowableProcessor;
            this.f16397p = subscription;
        }

        @Override // io.reactivex.internal.subscriptions.SubscriptionArbiter, org.reactivestreams.Subscription
        public final void cancel() {
            super.cancel();
            this.f16397p.cancel();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: i */
        public final void m4115i(U u) {
            m3462h(EmptySubscription.INSTANCE);
            long j = this.f16398q;
            if (j != 0) {
                this.f16398q = 0L;
                m3463g(j);
            }
            this.f16397p.request(1L);
            this.f16396o.onNext(u);
        }

        @Override // org.reactivestreams.Subscriber
        public final void onNext(T t) {
            this.f16398q++;
            this.f16395n.onNext(t);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public final void onSubscribe(Subscription subscription) {
            m3462h(subscription);
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    public void mo3305w(Subscriber<? super T> subscriber) {
        SerializedSubscriber serializedSubscriber = new SerializedSubscriber(subscriber);
        FlowableProcessor<T> C = UnicastProcessor.m3311F(8).m3338C();
        try {
            Object apply = this.f16390h.apply(C);
            ObjectHelper.m4363e(apply, "handler returned a null Publisher");
            Publisher publisher = (Publisher) apply;
            WhenReceiver whenReceiver = new WhenReceiver(this.f15411g);
            RepeatWhenSubscriber repeatWhenSubscriber = new RepeatWhenSubscriber(serializedSubscriber, C, whenReceiver);
            whenReceiver.f16394i = repeatWhenSubscriber;
            subscriber.onSubscribe(repeatWhenSubscriber);
            publisher.mo5c(whenReceiver);
            whenReceiver.onNext(0);
        } catch (Throwable th) {
            Exceptions.m4428b(th);
            EmptySubscription.error(th, subscriber);
        }
    }
}

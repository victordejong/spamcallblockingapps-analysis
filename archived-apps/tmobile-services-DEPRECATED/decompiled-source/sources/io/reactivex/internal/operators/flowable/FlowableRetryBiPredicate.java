package io.reactivex.internal.operators.flowable;

import io.reactivex.FlowableSubscriber;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.BiPredicate;
import io.reactivex.internal.subscriptions.SubscriptionArbiter;
import java.util.concurrent.atomic.AtomicInteger;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableRetryBiPredicate.class */
public final class FlowableRetryBiPredicate<T> extends AbstractFlowableWithUpstream<T, T> {

    /* renamed from: h */
    final BiPredicate<? super Integer, ? super Throwable> f16442h;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableRetryBiPredicate$RetryBiSubscriber.class */
    static final class RetryBiSubscriber<T> extends AtomicInteger implements FlowableSubscriber<T> {
        private static final long serialVersionUID = -7098360935104053232L;

        /* renamed from: f */
        final Subscriber<? super T> f16443f;

        /* renamed from: g */
        final SubscriptionArbiter f16444g;

        /* renamed from: h */
        final Publisher<? extends T> f16445h;

        /* renamed from: i */
        final BiPredicate<? super Integer, ? super Throwable> f16446i;

        /* renamed from: j */
        int f16447j;

        /* renamed from: k */
        long f16448k;

        RetryBiSubscriber(Subscriber<? super T> subscriber, BiPredicate<? super Integer, ? super Throwable> biPredicate, SubscriptionArbiter subscriptionArbiter, Publisher<? extends T> publisher) {
            this.f16443f = subscriber;
            this.f16444g = subscriptionArbiter;
            this.f16445h = publisher;
            this.f16446i = biPredicate;
        }

        /* renamed from: a */
        void m4087a() {
            if (getAndIncrement() == 0) {
                int i = 1;
                while (!this.f16444g.m3465e()) {
                    long j = this.f16448k;
                    if (j != 0) {
                        this.f16448k = 0L;
                        this.f16444g.m3463g(j);
                    }
                    this.f16445h.mo5c(this);
                    int addAndGet = addAndGet(-i);
                    i = addAndGet;
                    if (addAndGet == 0) {
                        return;
                    }
                }
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f16443f.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            try {
                BiPredicate<? super Integer, ? super Throwable> biPredicate = this.f16446i;
                int i = this.f16447j + 1;
                this.f16447j = i;
                if (!biPredicate.mo4360a(Integer.valueOf(i), th)) {
                    this.f16443f.onError(th);
                } else {
                    m4087a();
                }
            } catch (Throwable th2) {
                Exceptions.m4428b(th2);
                this.f16443f.onError(new CompositeException(th, th2));
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.f16448k++;
            this.f16443f.onNext(t);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            this.f16444g.m3462h(subscription);
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    public void mo3305w(Subscriber<? super T> subscriber) {
        SubscriptionArbiter subscriptionArbiter = new SubscriptionArbiter(false);
        subscriber.onSubscribe(subscriptionArbiter);
        new RetryBiSubscriber(subscriber, this.f16442h, subscriptionArbiter, this.f15411g).m4087a();
    }
}

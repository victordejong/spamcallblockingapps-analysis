package io.reactivex.internal.operators.flowable;

import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.ArrayDeque;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableSkipLast.class */
public final class FlowableSkipLast<T> extends AbstractFlowableWithUpstream<T, T> {

    /* renamed from: h */
    final int f16554h;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableSkipLast$SkipLastSubscriber.class */
    static final class SkipLastSubscriber<T> extends ArrayDeque<T> implements FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = -3807491841935125653L;

        /* renamed from: f */
        final Subscriber<? super T> f16555f;

        /* renamed from: g */
        final int f16556g;

        /* renamed from: h */
        Subscription f16557h;

        SkipLastSubscriber(Subscriber<? super T> subscriber, int i) {
            super(i);
            this.f16555f = subscriber;
            this.f16556g = i;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f16557h.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f16555f.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f16555f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.f16556g == size()) {
                this.f16555f.onNext((T) poll());
            } else {
                this.f16557h.request(1L);
            }
            offer(t);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f16557h, subscription)) {
                this.f16557h = subscription;
                this.f16555f.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            this.f16557h.request(j);
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        this.f15411g.m4493v(new SkipLastSubscriber(subscriber, this.f16554h));
    }
}

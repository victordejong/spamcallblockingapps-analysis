package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Consumer;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicLong;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableOnBackpressureDrop.class */
public final class FlowableOnBackpressureDrop<T> extends AbstractFlowableWithUpstream<T, T> implements Consumer<T> {

    /* renamed from: h */
    final Consumer<? super T> f16245h = this;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableOnBackpressureDrop$BackpressureDropSubscriber.class */
    static final class BackpressureDropSubscriber<T> extends AtomicLong implements FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = -6246093802440953054L;

        /* renamed from: f */
        final Subscriber<? super T> f16246f;

        /* renamed from: g */
        final Consumer<? super T> f16247g;

        /* renamed from: h */
        Subscription f16248h;

        /* renamed from: i */
        boolean f16249i;

        BackpressureDropSubscriber(Subscriber<? super T> subscriber, Consumer<? super T> consumer) {
            this.f16246f = subscriber;
            this.f16247g = consumer;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f16248h.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.f16249i) {
                this.f16249i = true;
                this.f16246f.onComplete();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f16249i) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f16249i = true;
            this.f16246f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!this.f16249i) {
                if (get() != 0) {
                    this.f16246f.onNext(t);
                    BackpressureHelper.m3450e(this, 1L);
                    return;
                }
                try {
                    this.f16247g.accept(t);
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    cancel();
                    onError(th);
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f16248h, subscription)) {
                this.f16248h = subscription;
                this.f16246f.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.m3454a(this, j);
            }
        }
    }

    public FlowableOnBackpressureDrop(Flowable<T> flowable) {
        super(flowable);
    }

    @Override // io.reactivex.functions.Consumer
    public void accept(T t) {
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        this.f15411g.m4493v(new BackpressureDropSubscriber(subscriber, this.f16245h));
    }
}

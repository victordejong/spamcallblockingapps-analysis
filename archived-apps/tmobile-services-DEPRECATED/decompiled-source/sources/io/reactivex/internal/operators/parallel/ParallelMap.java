package io.reactivex.internal.operators.parallel;

import io.reactivex.FlowableSubscriber;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.fuseable.ConditionalSubscriber;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.parallel.ParallelFlowable;
import io.reactivex.plugins.RxJavaPlugins;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelMap.class */
public final class ParallelMap<T, R> extends ParallelFlowable<R> {

    /* renamed from: a */
    final ParallelFlowable<T> f18877a;

    /* renamed from: b */
    final Function<? super T, ? extends R> f18878b;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelMap$ParallelMapConditionalSubscriber.class */
    static final class ParallelMapConditionalSubscriber<T, R> implements ConditionalSubscriber<T>, Subscription {

        /* renamed from: f */
        final ConditionalSubscriber<? super R> f18879f;

        /* renamed from: g */
        final Function<? super T, ? extends R> f18880g;

        /* renamed from: h */
        Subscription f18881h;

        /* renamed from: i */
        boolean f18882i;

        ParallelMapConditionalSubscriber(ConditionalSubscriber<? super R> conditionalSubscriber, Function<? super T, ? extends R> function) {
            this.f18879f = conditionalSubscriber;
            this.f18880g = function;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f18881h.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.f18882i) {
                this.f18882i = true;
                this.f18879f.onComplete();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f18882i) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f18882i = true;
            this.f18879f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!this.f18882i) {
                try {
                    Object apply = this.f18880g.apply(t);
                    ObjectHelper.m4363e(apply, "The mapper returned a null value");
                    this.f18879f.onNext(apply);
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    cancel();
                    onError(th);
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f18881h, subscription)) {
                this.f18881h = subscription;
                this.f18879f.onSubscribe(this);
            }
        }

        @Override // io.reactivex.internal.fuseable.ConditionalSubscriber
        /* renamed from: p */
        public boolean mo3605p(T t) {
            if (this.f18882i) {
                return false;
            }
            try {
                Object apply = this.f18880g.apply(t);
                ObjectHelper.m4363e(apply, "The mapper returned a null value");
                return this.f18879f.mo3605p(apply);
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                cancel();
                onError(th);
                return false;
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            this.f18881h.request(j);
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelMap$ParallelMapSubscriber.class */
    static final class ParallelMapSubscriber<T, R> implements FlowableSubscriber<T>, Subscription {

        /* renamed from: f */
        final Subscriber<? super R> f18883f;

        /* renamed from: g */
        final Function<? super T, ? extends R> f18884g;

        /* renamed from: h */
        Subscription f18885h;

        /* renamed from: i */
        boolean f18886i;

        ParallelMapSubscriber(Subscriber<? super R> subscriber, Function<? super T, ? extends R> function) {
            this.f18883f = subscriber;
            this.f18884g = function;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f18885h.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.f18886i) {
                this.f18886i = true;
                this.f18883f.onComplete();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f18886i) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f18886i = true;
            this.f18883f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!this.f18886i) {
                try {
                    Object apply = this.f18884g.apply(t);
                    ObjectHelper.m4363e(apply, "The mapper returned a null value");
                    this.f18883f.onNext(apply);
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    cancel();
                    onError(th);
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f18885h, subscription)) {
                this.f18885h = subscription;
                this.f18883f.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            this.f18885h.request(j);
        }
    }

    @Override // io.reactivex.parallel.ParallelFlowable
    /* renamed from: a */
    public int mo3379a() {
        return this.f18877a.mo3379a();
    }

    @Override // io.reactivex.parallel.ParallelFlowable
    /* renamed from: b */
    public void mo3378b(Subscriber<? super R>[] subscriberArr) {
        if (m3377c(subscriberArr)) {
            int length = subscriberArr.length;
            Subscriber<? super T>[] subscriberArr2 = new Subscriber[length];
            for (int i = 0; i < length; i++) {
                Subscriber<? super R> subscriber = subscriberArr[i];
                if (subscriber instanceof ConditionalSubscriber) {
                    subscriberArr2[i] = new ParallelMapConditionalSubscriber((ConditionalSubscriber) subscriber, this.f18878b);
                } else {
                    subscriberArr2[i] = new ParallelMapSubscriber(subscriber, this.f18878b);
                }
            }
            this.f18877a.mo3378b(subscriberArr2);
        }
    }
}

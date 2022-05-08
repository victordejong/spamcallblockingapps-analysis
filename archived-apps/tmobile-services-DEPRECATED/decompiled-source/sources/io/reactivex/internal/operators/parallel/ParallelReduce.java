package io.reactivex.internal.operators.parallel;

import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.BiFunction;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.subscribers.DeferredScalarSubscriber;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.parallel.ParallelFlowable;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.Callable;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelReduce.class */
public final class ParallelReduce<T, R> extends ParallelFlowable<R> {

    /* renamed from: a */
    final ParallelFlowable<? extends T> f18914a;

    /* renamed from: b */
    final Callable<R> f18915b;

    /* renamed from: c */
    final BiFunction<R, ? super T, R> f18916c;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber.class */
    static final class ParallelReduceSubscriber<T, R> extends DeferredScalarSubscriber<T, R> {
        private static final long serialVersionUID = 8200530050639449080L;

        /* renamed from: j */
        final BiFunction<R, ? super T, R> f18917j;

        /* renamed from: k */
        R f18918k;

        /* renamed from: l */
        boolean f18919l;

        ParallelReduceSubscriber(Subscriber<? super R> subscriber, R r, BiFunction<R, ? super T, R> biFunction) {
            super(subscriber);
            this.f18918k = r;
            this.f18917j = biFunction;
        }

        @Override // io.reactivex.internal.subscribers.DeferredScalarSubscriber, io.reactivex.internal.subscriptions.DeferredScalarSubscription, org.reactivestreams.Subscription
        public void cancel() {
            super.cancel();
            this.f19364h.cancel();
        }

        @Override // io.reactivex.internal.subscribers.DeferredScalarSubscriber, org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.f18919l) {
                this.f18919l = true;
                R r = this.f18918k;
                this.f18918k = null;
                m3470d(r);
            }
        }

        @Override // io.reactivex.internal.subscribers.DeferredScalarSubscriber, org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f18919l) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f18919l = true;
            this.f18918k = null;
            this.f19405f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!this.f18919l) {
                try {
                    R apply = this.f18917j.apply(this.f18918k, t);
                    ObjectHelper.m4363e(apply, "The reducer returned a null value");
                    this.f18918k = apply;
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    cancel();
                    onError(th);
                }
            }
        }

        @Override // io.reactivex.internal.subscribers.DeferredScalarSubscriber, io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f19364h, subscription)) {
                this.f19364h = subscription;
                this.f19405f.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }
    }

    @Override // io.reactivex.parallel.ParallelFlowable
    /* renamed from: a */
    public int mo3379a() {
        return this.f18914a.mo3379a();
    }

    @Override // io.reactivex.parallel.ParallelFlowable
    /* renamed from: b */
    public void mo3378b(Subscriber<? super R>[] subscriberArr) {
        if (m3377c(subscriberArr)) {
            int length = subscriberArr.length;
            Subscriber<? super Object>[] subscriberArr2 = new Subscriber[length];
            for (int i = 0; i < length; i++) {
                try {
                    R call = this.f18915b.call();
                    ObjectHelper.m4363e(call, "The initialSupplier returned a null value");
                    subscriberArr2[i] = new ParallelReduceSubscriber(subscriberArr[i], call, this.f18916c);
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    m3604d(subscriberArr, th);
                    return;
                }
            }
            this.f18914a.mo3378b(subscriberArr2);
        }
    }

    /* renamed from: d */
    void m3604d(Subscriber<?>[] subscriberArr, Throwable th) {
        for (Subscriber<?> subscriber : subscriberArr) {
            EmptySubscription.error(th, subscriber);
        }
    }
}

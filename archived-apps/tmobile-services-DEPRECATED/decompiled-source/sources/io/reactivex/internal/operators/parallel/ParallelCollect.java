package io.reactivex.internal.operators.parallel;

import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.BiConsumer;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.subscribers.DeferredScalarSubscriber;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.parallel.ParallelFlowable;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.Callable;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelCollect.class */
public final class ParallelCollect<T, C> extends ParallelFlowable<C> {

    /* renamed from: a */
    final ParallelFlowable<? extends T> f18796a;

    /* renamed from: b */
    final Callable<? extends C> f18797b;

    /* renamed from: c */
    final BiConsumer<? super C, ? super T> f18798c;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelCollect$ParallelCollectSubscriber.class */
    static final class ParallelCollectSubscriber<T, C> extends DeferredScalarSubscriber<T, C> {
        private static final long serialVersionUID = -4767392946044436228L;

        /* renamed from: j */
        final BiConsumer<? super C, ? super T> f18799j;

        /* renamed from: k */
        C f18800k;

        /* renamed from: l */
        boolean f18801l;

        ParallelCollectSubscriber(Subscriber<? super C> subscriber, C c, BiConsumer<? super C, ? super T> biConsumer) {
            super(subscriber);
            this.f18800k = c;
            this.f18799j = biConsumer;
        }

        @Override // io.reactivex.internal.subscribers.DeferredScalarSubscriber, io.reactivex.internal.subscriptions.DeferredScalarSubscription, org.reactivestreams.Subscription
        public void cancel() {
            super.cancel();
            this.f19364h.cancel();
        }

        @Override // io.reactivex.internal.subscribers.DeferredScalarSubscriber, org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.f18801l) {
                this.f18801l = true;
                C c = this.f18800k;
                this.f18800k = null;
                m3470d(c);
            }
        }

        @Override // io.reactivex.internal.subscribers.DeferredScalarSubscriber, org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f18801l) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f18801l = true;
            this.f18800k = null;
            this.f19405f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!this.f18801l) {
                try {
                    this.f18799j.mo4369a((C) this.f18800k, t);
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
        return this.f18796a.mo3379a();
    }

    @Override // io.reactivex.parallel.ParallelFlowable
    /* renamed from: b */
    public void mo3378b(Subscriber<? super C>[] subscriberArr) {
        if (m3377c(subscriberArr)) {
            int length = subscriberArr.length;
            Subscriber<? super Object>[] subscriberArr2 = new Subscriber[length];
            for (int i = 0; i < length; i++) {
                try {
                    Object call = this.f18797b.call();
                    ObjectHelper.m4363e(call, "The initialSupplier returned a null value");
                    subscriberArr2[i] = new ParallelCollectSubscriber(subscriberArr[i], call, this.f18798c);
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    m3623d(subscriberArr, th);
                    return;
                }
            }
            this.f18796a.mo3378b(subscriberArr2);
        }
    }

    /* renamed from: d */
    void m3623d(Subscriber<?>[] subscriberArr, Throwable th) {
        for (Subscriber<?> subscriber : subscriberArr) {
            EmptySubscription.error(th, subscriber);
        }
    }
}

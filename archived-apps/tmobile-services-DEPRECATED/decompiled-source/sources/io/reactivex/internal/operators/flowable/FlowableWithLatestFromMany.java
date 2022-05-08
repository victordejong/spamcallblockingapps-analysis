package io.reactivex.internal.operators.flowable;

import io.reactivex.FlowableSubscriber;
import io.reactivex.annotations.Nullable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.fuseable.ConditionalSubscriber;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.HalfSerializer;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.Arrays;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.atomic.AtomicReferenceArray;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableWithLatestFromMany.class */
public final class FlowableWithLatestFromMany<T, R> extends AbstractFlowableWithUpstream<T, R> {
    @Nullable

    /* renamed from: h */
    final Publisher<?>[] f16918h;
    @Nullable

    /* renamed from: i */
    final Iterable<? extends Publisher<?>> f16919i;

    /* renamed from: j */
    final Function<? super Object[], R> f16920j;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableWithLatestFromMany$SingletonArrayFunc.class */
    final class SingletonArrayFunc implements Function<T, R> {
        SingletonArrayFunc() {
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object[], java.lang.Object] */
        @Override // io.reactivex.functions.Function
        public R apply(T t) throws Exception {
            R apply = FlowableWithLatestFromMany.this.f16920j.apply(new Object[]{t});
            ObjectHelper.m4363e(apply, "The combiner returned a null value");
            return apply;
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableWithLatestFromMany$WithLatestFromSubscriber.class */
    static final class WithLatestFromSubscriber<T, R> extends AtomicInteger implements ConditionalSubscriber<T>, Subscription {
        private static final long serialVersionUID = 1577321883966341961L;

        /* renamed from: f */
        final Subscriber<? super R> f16922f;

        /* renamed from: g */
        final Function<? super Object[], R> f16923g;

        /* renamed from: h */
        final WithLatestInnerSubscriber[] f16924h;

        /* renamed from: i */
        final AtomicReferenceArray<Object> f16925i;

        /* renamed from: j */
        final AtomicReference<Subscription> f16926j;

        /* renamed from: k */
        final AtomicLong f16927k;

        /* renamed from: l */
        final AtomicThrowable f16928l;

        /* renamed from: m */
        volatile boolean f16929m;

        WithLatestFromSubscriber(Subscriber<? super R> subscriber, Function<? super Object[], R> function, int i) {
            this.f16922f = subscriber;
            this.f16923g = function;
            WithLatestInnerSubscriber[] withLatestInnerSubscriberArr = new WithLatestInnerSubscriber[i];
            for (int i2 = 0; i2 < i; i2++) {
                withLatestInnerSubscriberArr[i2] = new WithLatestInnerSubscriber(this, i2);
            }
            this.f16924h = withLatestInnerSubscriberArr;
            this.f16925i = new AtomicReferenceArray<>(i);
            this.f16926j = new AtomicReference<>();
            this.f16927k = new AtomicLong();
            this.f16928l = new AtomicThrowable();
        }

        /* renamed from: a */
        void m4021a(int i) {
            WithLatestInnerSubscriber[] withLatestInnerSubscriberArr = this.f16924h;
            for (int i2 = 0; i2 < withLatestInnerSubscriberArr.length; i2++) {
                if (i2 != i) {
                    withLatestInnerSubscriberArr[i2].m4016a();
                }
            }
        }

        /* renamed from: b */
        void m4020b(int i, boolean z) {
            if (!z) {
                this.f16929m = true;
                SubscriptionHelper.cancel(this.f16926j);
                m4021a(i);
                HalfSerializer.m3432b(this.f16922f, this, this.f16928l);
            }
        }

        /* renamed from: c */
        void m4019c(int i, Throwable th) {
            this.f16929m = true;
            SubscriptionHelper.cancel(this.f16926j);
            m4021a(i);
            HalfSerializer.m3430d(this.f16922f, th, this, this.f16928l);
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            SubscriptionHelper.cancel(this.f16926j);
            for (WithLatestInnerSubscriber withLatestInnerSubscriber : this.f16924h) {
                withLatestInnerSubscriber.m4016a();
            }
        }

        /* renamed from: d */
        void m4018d(int i, Object obj) {
            this.f16925i.set(i, obj);
        }

        /* renamed from: e */
        void m4017e(Publisher<?>[] publisherArr, int i) {
            WithLatestInnerSubscriber[] withLatestInnerSubscriberArr = this.f16924h;
            AtomicReference<Subscription> atomicReference = this.f16926j;
            for (int i2 = 0; i2 < i && atomicReference.get() != SubscriptionHelper.CANCELLED; i2++) {
                publisherArr[i2].mo5c(withLatestInnerSubscriberArr[i2]);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.f16929m) {
                this.f16929m = true;
                m4021a(-1);
                HalfSerializer.m3432b(this.f16922f, this, this.f16928l);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f16929m) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f16929m = true;
            m4021a(-1);
            HalfSerializer.m3430d(this.f16922f, th, this, this.f16928l);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!mo3605p(t) && !this.f16929m) {
                this.f16926j.get().request(1L);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            SubscriptionHelper.deferredSetOnce(this.f16926j, this.f16927k, subscription);
        }

        @Override // io.reactivex.internal.fuseable.ConditionalSubscriber
        /* renamed from: p */
        public boolean mo3605p(T t) {
            if (this.f16929m) {
                return false;
            }
            AtomicReferenceArray<Object> atomicReferenceArray = this.f16925i;
            int length = atomicReferenceArray.length();
            Object[] objArr = new Object[length + 1];
            objArr[0] = t;
            int i = 0;
            while (i < length) {
                Object obj = atomicReferenceArray.get(i);
                if (obj == null) {
                    return false;
                }
                i++;
                objArr[i] = obj;
            }
            try {
                R apply = this.f16923g.apply(objArr);
                ObjectHelper.m4363e(apply, "The combiner returned a null value");
                HalfSerializer.m3428f(this.f16922f, apply, this, this.f16928l);
                return true;
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                cancel();
                onError(th);
                return false;
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            SubscriptionHelper.deferredRequest(this.f16926j, this.f16927k, j);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableWithLatestFromMany$WithLatestInnerSubscriber.class */
    public static final class WithLatestInnerSubscriber extends AtomicReference<Subscription> implements FlowableSubscriber<Object> {
        private static final long serialVersionUID = 3256684027868224024L;

        /* renamed from: f */
        final WithLatestFromSubscriber<?, ?> f16930f;

        /* renamed from: g */
        final int f16931g;

        /* renamed from: h */
        boolean f16932h;

        WithLatestInnerSubscriber(WithLatestFromSubscriber<?, ?> withLatestFromSubscriber, int i) {
            this.f16930f = withLatestFromSubscriber;
            this.f16931g = i;
        }

        /* renamed from: a */
        void m4016a() {
            SubscriptionHelper.cancel(this);
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f16930f.m4020b(this.f16931g, this.f16932h);
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f16930f.m4019c(this.f16931g, th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(Object obj) {
            if (!this.f16932h) {
                this.f16932h = true;
            }
            this.f16930f.m4018d(this.f16931g, obj);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            SubscriptionHelper.setOnce(this, subscription, Long.MAX_VALUE);
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super R> subscriber) {
        int i;
        Publisher<?>[] publisherArr = this.f16918h;
        if (publisherArr == null) {
            Publisher<?>[] publisherArr2 = new Publisher[8];
            try {
                Iterator<? extends Publisher<?>> it = this.f16919i.iterator();
                int i2 = 0;
                while (true) {
                    publisherArr = publisherArr2;
                    i = i2;
                    if (!it.hasNext()) {
                        break;
                    }
                    Publisher<?> publisher = (Publisher) it.next();
                    Publisher<?>[] publisherArr3 = publisherArr2;
                    if (i2 == publisherArr2.length) {
                        publisherArr3 = (Publisher[]) Arrays.copyOf(publisherArr2, (i2 >> 1) + i2);
                    }
                    publisherArr3[i2] = publisher;
                    i2++;
                    publisherArr2 = publisherArr3;
                }
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                EmptySubscription.error(th, subscriber);
                return;
            }
        } else {
            i = publisherArr.length;
        }
        if (i == 0) {
            new FlowableMap(this.f15411g, new SingletonArrayFunc()).mo3305w(subscriber);
            return;
        }
        WithLatestFromSubscriber withLatestFromSubscriber = new WithLatestFromSubscriber(subscriber, this.f16920j, i);
        subscriber.onSubscribe(withLatestFromSubscriber);
        withLatestFromSubscriber.m4017e(publisherArr, i);
        this.f15411g.m4493v(withLatestFromSubscriber);
    }
}

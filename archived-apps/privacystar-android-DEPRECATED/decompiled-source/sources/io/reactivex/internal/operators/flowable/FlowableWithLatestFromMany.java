package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.annotations.NonNull;
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
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableWithLatestFromMany.class */
public final class FlowableWithLatestFromMany<T, R> extends AbstractFlowableWithUpstream<T, R> {
    final Function<? super Object[], R> combiner;
    @Nullable
    final Publisher<?>[] otherArray;
    @Nullable
    final Iterable<? extends Publisher<?>> otherIterable;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableWithLatestFromMany$SingletonArrayFunc.class */
    final class SingletonArrayFunc implements Function<T, R> {
        SingletonArrayFunc() {
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object[], java.lang.Object] */
        @Override // io.reactivex.functions.Function
        public R apply(T t) throws Exception {
            return (R) ObjectHelper.requireNonNull(FlowableWithLatestFromMany.this.combiner.apply(new Object[]{t}), "The combiner returned a null value");
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableWithLatestFromMany$WithLatestFromSubscriber.class */
    static final class WithLatestFromSubscriber<T, R> extends AtomicInteger implements ConditionalSubscriber<T>, Subscription {
        private static final long serialVersionUID = 1577321883966341961L;
        final Subscriber<? super R> actual;
        final Function<? super Object[], R> combiner;
        volatile boolean done;
        final AtomicThrowable error;
        final AtomicLong requested;

        /* renamed from: s */
        final AtomicReference<Subscription> f502s;
        final WithLatestInnerSubscriber[] subscribers;
        final AtomicReferenceArray<Object> values;

        WithLatestFromSubscriber(Subscriber<? super R> subscriber, Function<? super Object[], R> function, int i) {
            this.actual = subscriber;
            this.combiner = function;
            WithLatestInnerSubscriber[] withLatestInnerSubscriberArr = new WithLatestInnerSubscriber[i];
            for (int i2 = 0; i2 < i; i2++) {
                withLatestInnerSubscriberArr[i2] = new WithLatestInnerSubscriber(this, i2);
            }
            this.subscribers = withLatestInnerSubscriberArr;
            this.values = new AtomicReferenceArray<>(i);
            this.f502s = new AtomicReference<>();
            this.requested = new AtomicLong();
            this.error = new AtomicThrowable();
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            SubscriptionHelper.cancel(this.f502s);
            for (WithLatestInnerSubscriber withLatestInnerSubscriber : this.subscribers) {
                withLatestInnerSubscriber.dispose();
            }
        }

        void cancelAllBut(int i) {
            WithLatestInnerSubscriber[] withLatestInnerSubscriberArr = this.subscribers;
            for (int i2 = 0; i2 < withLatestInnerSubscriberArr.length; i2++) {
                if (i2 != i) {
                    withLatestInnerSubscriberArr[i2].dispose();
                }
            }
        }

        void innerComplete(int i, boolean z) {
            if (!z) {
                this.done = true;
                SubscriptionHelper.cancel(this.f502s);
                cancelAllBut(i);
                HalfSerializer.onComplete(this.actual, this, this.error);
            }
        }

        void innerError(int i, Throwable th) {
            this.done = true;
            SubscriptionHelper.cancel(this.f502s);
            cancelAllBut(i);
            HalfSerializer.onError(this.actual, th, this, this.error);
        }

        void innerNext(int i, Object obj) {
            this.values.set(i, obj);
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.done) {
                this.done = true;
                cancelAllBut(-1);
                HalfSerializer.onComplete(this.actual, this, this.error);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.done) {
                RxJavaPlugins.onError(th);
                return;
            }
            this.done = true;
            cancelAllBut(-1);
            HalfSerializer.onError(this.actual, th, this, this.error);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!tryOnNext(t) && !this.done) {
                this.f502s.get().request(1L);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            SubscriptionHelper.deferredSetOnce(this.f502s, this.requested, subscription);
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            SubscriptionHelper.deferredRequest(this.f502s, this.requested, j);
        }

        void subscribe(Publisher<?>[] publisherArr, int i) {
            WithLatestInnerSubscriber[] withLatestInnerSubscriberArr = this.subscribers;
            AtomicReference<Subscription> atomicReference = this.f502s;
            for (int i2 = 0; i2 < i && !SubscriptionHelper.isCancelled(atomicReference.get()); i2++) {
                publisherArr[i2].subscribe(withLatestInnerSubscriberArr[i2]);
            }
        }

        @Override // io.reactivex.internal.fuseable.ConditionalSubscriber
        public boolean tryOnNext(T t) {
            if (this.done) {
                return false;
            }
            AtomicReferenceArray<Object> atomicReferenceArray = this.values;
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
                HalfSerializer.onNext(this.actual, ObjectHelper.requireNonNull(this.combiner.apply(objArr), "The combiner returned a null value"), this, this.error);
                return true;
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                cancel();
                onError(th);
                return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableWithLatestFromMany$WithLatestInnerSubscriber.class */
    public static final class WithLatestInnerSubscriber extends AtomicReference<Subscription> implements FlowableSubscriber<Object> {
        private static final long serialVersionUID = 3256684027868224024L;
        boolean hasValue;
        final int index;
        final WithLatestFromSubscriber<?, ?> parent;

        WithLatestInnerSubscriber(WithLatestFromSubscriber<?, ?> withLatestFromSubscriber, int i) {
            this.parent = withLatestFromSubscriber;
            this.index = i;
        }

        void dispose() {
            SubscriptionHelper.cancel(this);
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.parent.innerComplete(this.index, this.hasValue);
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.parent.innerError(this.index, th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(Object obj) {
            if (!this.hasValue) {
                this.hasValue = true;
            }
            this.parent.innerNext(this.index, obj);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.setOnce(this, subscription)) {
                subscription.request(Long.MAX_VALUE);
            }
        }
    }

    public FlowableWithLatestFromMany(@NonNull Flowable<T> flowable, @NonNull Iterable<? extends Publisher<?>> iterable, @NonNull Function<? super Object[], R> function) {
        super(flowable);
        this.otherArray = null;
        this.otherIterable = iterable;
        this.combiner = function;
    }

    public FlowableWithLatestFromMany(@NonNull Flowable<T> flowable, @NonNull Publisher<?>[] publisherArr, Function<? super Object[], R> function) {
        super(flowable);
        this.otherArray = publisherArr;
        this.otherIterable = null;
        this.combiner = function;
    }

    @Override // io.reactivex.Flowable
    protected void subscribeActual(Subscriber<? super R> subscriber) {
        int i;
        Publisher<?>[] publisherArr = this.otherArray;
        if (publisherArr == null) {
            Publisher<?>[] publisherArr2 = new Publisher[8];
            try {
                Iterator<? extends Publisher<?>> it = this.otherIterable.iterator();
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
                Exceptions.throwIfFatal(th);
                EmptySubscription.error(th, subscriber);
                return;
            }
        } else {
            i = publisherArr.length;
        }
        if (i == 0) {
            new FlowableMap(this.source, new SingletonArrayFunc()).subscribeActual(subscriber);
            return;
        }
        WithLatestFromSubscriber withLatestFromSubscriber = new WithLatestFromSubscriber(subscriber, this.combiner, i);
        subscriber.onSubscribe(withLatestFromSubscriber);
        withLatestFromSubscriber.subscribe(publisherArr, i);
        this.source.subscribe((FlowableSubscriber) withLatestFromSubscriber);
    }
}

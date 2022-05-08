package io.reactivex.internal.operators.parallel;

import io.reactivex.FlowableSubscriber;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.fuseable.QueueSubscription;
import io.reactivex.internal.fuseable.SimpleQueue;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.parallel.ParallelFlowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLongArray;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelFromPublisher.class */
public final class ParallelFromPublisher<T> extends ParallelFlowable<T> {
    final int parallelism;
    final int prefetch;
    final Publisher<? extends T> source;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher.class */
    static final class ParallelDispatcher<T> extends AtomicInteger implements FlowableSubscriber<T> {
        private static final long serialVersionUID = -4470634016609963609L;
        volatile boolean cancelled;
        volatile boolean done;
        final long[] emissions;
        Throwable error;
        int index;
        final int limit;
        final int prefetch;
        int produced;
        SimpleQueue<T> queue;
        final AtomicLongArray requests;

        /* renamed from: s */
        Subscription f662s;
        int sourceMode;
        final AtomicInteger subscriberCount = new AtomicInteger();
        final Subscriber<? super T>[] subscribers;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher$RailSubscription.class */
        public final class RailSubscription implements Subscription {

            /* renamed from: j */
            final int f663j;

            /* renamed from: m */
            final int f664m;

            RailSubscription(int i, int i2) {
                this.f663j = i;
                this.f664m = i2;
            }

            @Override // org.reactivestreams.Subscription
            public void cancel() {
                if (ParallelDispatcher.this.requests.compareAndSet(this.f663j + this.f664m, 0L, 1L)) {
                    ParallelDispatcher.this.cancel(this.f664m + this.f664m);
                }
            }

            @Override // org.reactivestreams.Subscription
            public void request(long j) {
                long j2;
                if (SubscriptionHelper.validate(j)) {
                    AtomicLongArray atomicLongArray = ParallelDispatcher.this.requests;
                    do {
                        j2 = atomicLongArray.get(this.f663j);
                        if (j2 != Long.MAX_VALUE) {
                        } else {
                            return;
                        }
                    } while (!atomicLongArray.compareAndSet(this.f663j, j2, BackpressureHelper.addCap(j2, j)));
                    if (ParallelDispatcher.this.subscriberCount.get() == this.f664m) {
                        ParallelDispatcher.this.drain();
                    }
                }
            }
        }

        ParallelDispatcher(Subscriber<? super T>[] subscriberArr, int i) {
            this.subscribers = subscriberArr;
            this.prefetch = i;
            this.limit = i - (i >> 2);
            int length = subscriberArr.length;
            int i2 = length + length;
            this.requests = new AtomicLongArray(i2 + 1);
            this.requests.lazySet(i2, length);
            this.emissions = new long[length];
        }

        void cancel(int i) {
            if (this.requests.decrementAndGet(i) == 0) {
                this.cancelled = true;
                this.f662s.cancel();
                if (getAndIncrement() == 0) {
                    this.queue.clear();
                }
            }
        }

        void drain() {
            if (getAndIncrement() == 0) {
                if (this.sourceMode == 1) {
                    drainSync();
                } else {
                    drainAsync();
                }
            }
        }

        void drainAsync() {
            int i;
            int i2;
            int i3;
            Throwable th;
            SimpleQueue<T> simpleQueue = this.queue;
            Subscriber<? super T>[] subscriberArr = this.subscribers;
            AtomicLongArray atomicLongArray = this.requests;
            long[] jArr = this.emissions;
            int length = jArr.length;
            int i4 = this.index;
            int i5 = this.produced;
            int i6 = 1;
            while (true) {
                int i7 = 0;
                while (!this.cancelled) {
                    boolean z = this.done;
                    if (!z || (th = this.error) == null) {
                        boolean isEmpty = simpleQueue.isEmpty();
                        if (!z || !isEmpty) {
                            if (isEmpty) {
                                i = i4;
                            } else {
                                long j = atomicLongArray.get(i4);
                                long j2 = jArr[i4];
                                if (j == j2 || atomicLongArray.get(length + i4) != 0) {
                                    i3 = i7 + 1;
                                    i2 = i5;
                                } else {
                                    try {
                                        T poll = simpleQueue.poll();
                                        if (poll == null) {
                                            i = i4;
                                        } else {
                                            subscriberArr[i4].onNext(poll);
                                            jArr[i4] = j2 + 1;
                                            int i8 = i5 + 1;
                                            i2 = i8;
                                            if (i8 == this.limit) {
                                                this.f662s.request(i8);
                                                i2 = 0;
                                            }
                                            i3 = 0;
                                        }
                                    } catch (Throwable th2) {
                                        Exceptions.throwIfFatal(th2);
                                        this.f662s.cancel();
                                        for (Subscriber<? super T> subscriber : subscriberArr) {
                                            subscriber.onError(th2);
                                        }
                                        return;
                                    }
                                }
                                int i9 = i4 + 1;
                                i = i9;
                                if (i9 == length) {
                                    i = 0;
                                }
                                i4 = i;
                                i7 = i3;
                                i5 = i2;
                                if (i3 == length) {
                                    i5 = i2;
                                }
                            }
                            int i10 = get();
                            if (i10 == i6) {
                                this.index = i;
                                this.produced = i5;
                                int addAndGet = addAndGet(-i6);
                                i4 = i;
                                i6 = addAndGet;
                                i5 = i5;
                                if (addAndGet == 0) {
                                    return;
                                }
                            } else {
                                i6 = i10;
                                i4 = i;
                                i5 = i5;
                            }
                        } else {
                            for (Subscriber<? super T> subscriber2 : subscriberArr) {
                                subscriber2.onComplete();
                            }
                            return;
                        }
                    } else {
                        simpleQueue.clear();
                        for (Subscriber<? super T> subscriber3 : subscriberArr) {
                            subscriber3.onError(th);
                        }
                        return;
                    }
                }
                simpleQueue.clear();
                return;
            }
        }

        void drainSync() {
            int i;
            SimpleQueue<T> simpleQueue = this.queue;
            Subscriber<? super T>[] subscriberArr = this.subscribers;
            AtomicLongArray atomicLongArray = this.requests;
            long[] jArr = this.emissions;
            int length = jArr.length;
            int i2 = this.index;
            int i3 = 1;
            while (true) {
                int i4 = 0;
                while (!this.cancelled) {
                    if (simpleQueue.isEmpty()) {
                        for (Subscriber<? super T> subscriber : subscriberArr) {
                            subscriber.onComplete();
                        }
                        return;
                    }
                    long j = atomicLongArray.get(i2);
                    long j2 = jArr[i2];
                    if (j == j2 || atomicLongArray.get(length + i2) != 0) {
                        i = i4 + 1;
                    } else {
                        try {
                            T poll = simpleQueue.poll();
                            if (poll == null) {
                                for (Subscriber<? super T> subscriber2 : subscriberArr) {
                                    subscriber2.onComplete();
                                }
                                return;
                            }
                            subscriberArr[i2].onNext(poll);
                            jArr[i2] = j2 + 1;
                            i = 0;
                        } catch (Throwable th) {
                            Exceptions.throwIfFatal(th);
                            this.f662s.cancel();
                            for (Subscriber<? super T> subscriber3 : subscriberArr) {
                                subscriber3.onError(th);
                            }
                            return;
                        }
                    }
                    int i5 = i2 + 1;
                    i2 = i5;
                    if (i5 == length) {
                        i2 = 0;
                    }
                    i2 = i2;
                    i4 = i;
                    if (i == length) {
                        int i6 = get();
                        if (i6 == i3) {
                            this.index = i2;
                            int addAndGet = addAndGet(-i3);
                            i3 = addAndGet;
                            if (addAndGet == 0) {
                                return;
                            }
                        } else {
                            i3 = i6;
                        }
                    }
                }
                simpleQueue.clear();
                return;
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.done = true;
            drain();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.error = th;
            this.done = true;
            drain();
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.sourceMode != 0 || this.queue.offer(t)) {
                drain();
                return;
            }
            this.f662s.cancel();
            onError(new MissingBackpressureException("Queue is full?"));
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f662s, subscription)) {
                this.f662s = subscription;
                if (subscription instanceof QueueSubscription) {
                    QueueSubscription queueSubscription = (QueueSubscription) subscription;
                    int requestFusion = queueSubscription.requestFusion(7);
                    if (requestFusion == 1) {
                        this.sourceMode = requestFusion;
                        this.queue = queueSubscription;
                        this.done = true;
                        setupSubscribers();
                        drain();
                        return;
                    } else if (requestFusion == 2) {
                        this.sourceMode = requestFusion;
                        this.queue = queueSubscription;
                        setupSubscribers();
                        subscription.request(this.prefetch);
                        return;
                    }
                }
                this.queue = new SpscArrayQueue(this.prefetch);
                setupSubscribers();
                subscription.request(this.prefetch);
            }
        }

        void setupSubscribers() {
            Subscriber<? super T>[] subscriberArr = this.subscribers;
            int length = subscriberArr.length;
            int i = 0;
            while (i < length && !this.cancelled) {
                int i2 = i + 1;
                this.subscriberCount.lazySet(i2);
                subscriberArr[i].onSubscribe(new RailSubscription(i, length));
                i = i2;
            }
        }
    }

    public ParallelFromPublisher(Publisher<? extends T> publisher, int i, int i2) {
        this.source = publisher;
        this.parallelism = i;
        this.prefetch = i2;
    }

    @Override // io.reactivex.parallel.ParallelFlowable
    public int parallelism() {
        return this.parallelism;
    }

    @Override // io.reactivex.parallel.ParallelFlowable
    public void subscribe(Subscriber<? super T>[] subscriberArr) {
        if (validate(subscriberArr)) {
            this.source.subscribe(new ParallelDispatcher(subscriberArr, this.prefetch));
        }
    }
}

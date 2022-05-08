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

    /* renamed from: a */
    final Publisher<? extends T> f18843a;

    /* renamed from: b */
    final int f18844b;

    /* renamed from: c */
    final int f18845c;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher.class */
    static final class ParallelDispatcher<T> extends AtomicInteger implements FlowableSubscriber<T> {
        private static final long serialVersionUID = -4470634016609963609L;

        /* renamed from: f */
        final Subscriber<? super T>[] f18846f;

        /* renamed from: g */
        final AtomicLongArray f18847g;

        /* renamed from: h */
        final long[] f18848h;

        /* renamed from: i */
        final int f18849i;

        /* renamed from: j */
        final int f18850j;

        /* renamed from: k */
        Subscription f18851k;

        /* renamed from: l */
        SimpleQueue<T> f18852l;

        /* renamed from: m */
        Throwable f18853m;

        /* renamed from: n */
        volatile boolean f18854n;

        /* renamed from: o */
        int f18855o;

        /* renamed from: p */
        volatile boolean f18856p;

        /* renamed from: q */
        final AtomicInteger f18857q = new AtomicInteger();

        /* renamed from: r */
        int f18858r;

        /* renamed from: s */
        int f18859s;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher$RailSubscription.class */
        public final class RailSubscription implements Subscription {

            /* renamed from: f */
            final int f18860f;

            /* renamed from: g */
            final int f18861g;

            RailSubscription(int i, int i2) {
                this.f18860f = i;
                this.f18861g = i2;
            }

            @Override // org.reactivestreams.Subscription
            public void cancel() {
                if (ParallelDispatcher.this.f18847g.compareAndSet(this.f18860f + this.f18861g, 0L, 1L)) {
                    ParallelDispatcher parallelDispatcher = ParallelDispatcher.this;
                    int i = this.f18861g;
                    parallelDispatcher.m3622a(i + i);
                }
            }

            @Override // org.reactivestreams.Subscription
            public void request(long j) {
                long j2;
                if (SubscriptionHelper.validate(j)) {
                    AtomicLongArray atomicLongArray = ParallelDispatcher.this.f18847g;
                    do {
                        j2 = atomicLongArray.get(this.f18860f);
                        if (j2 != Long.MAX_VALUE) {
                        } else {
                            return;
                        }
                    } while (!atomicLongArray.compareAndSet(this.f18860f, j2, BackpressureHelper.m3452c(j2, j)));
                    if (ParallelDispatcher.this.f18857q.get() == this.f18861g) {
                        ParallelDispatcher.this.m3621b();
                    }
                }
            }
        }

        ParallelDispatcher(Subscriber<? super T>[] subscriberArr, int i) {
            this.f18846f = subscriberArr;
            this.f18849i = i;
            this.f18850j = i - (i >> 2);
            int length = subscriberArr.length;
            int i2 = length + length;
            AtomicLongArray atomicLongArray = new AtomicLongArray(i2 + 1);
            this.f18847g = atomicLongArray;
            atomicLongArray.lazySet(i2, length);
            this.f18848h = new long[length];
        }

        /* renamed from: a */
        void m3622a(int i) {
            if (this.f18847g.decrementAndGet(i) == 0) {
                this.f18856p = true;
                this.f18851k.cancel();
                if (getAndIncrement() == 0) {
                    this.f18852l.clear();
                }
            }
        }

        /* renamed from: b */
        void m3621b() {
            if (getAndIncrement() == 0) {
                if (this.f18859s == 1) {
                    m3619d();
                } else {
                    m3620c();
                }
            }
        }

        /* renamed from: c */
        void m3620c() {
            int i;
            int i2;
            int i3;
            Throwable th;
            SimpleQueue<T> simpleQueue = this.f18852l;
            Subscriber<? super T>[] subscriberArr = this.f18846f;
            AtomicLongArray atomicLongArray = this.f18847g;
            long[] jArr = this.f18848h;
            int length = jArr.length;
            int i4 = this.f18855o;
            int i5 = this.f18858r;
            int i6 = 1;
            while (true) {
                int i7 = 0;
                while (!this.f18856p) {
                    boolean z = this.f18854n;
                    if (!z || (th = this.f18853m) == null) {
                        boolean isEmpty = simpleQueue.isEmpty();
                        if (!z || !isEmpty) {
                            if (isEmpty) {
                                i = i4;
                            } else {
                                long j = atomicLongArray.get(i4);
                                long j2 = jArr[i4];
                                if (j == j2 || atomicLongArray.get(length + i4) != 0) {
                                    i2 = i7 + 1;
                                    i3 = i5;
                                } else {
                                    try {
                                        T poll = simpleQueue.poll();
                                        if (poll == null) {
                                            i = i4;
                                        } else {
                                            subscriberArr[i4].onNext(poll);
                                            jArr[i4] = j2 + 1;
                                            int i8 = i5 + 1;
                                            i3 = i8;
                                            if (i8 == this.f18850j) {
                                                this.f18851k.request(i8);
                                                i3 = 0;
                                            }
                                            i2 = 0;
                                        }
                                    } catch (Throwable th2) {
                                        Exceptions.m4428b(th2);
                                        this.f18851k.cancel();
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
                                i5 = i3;
                                i7 = i2;
                                if (i2 == length) {
                                    i5 = i3;
                                }
                            }
                            int i10 = get();
                            if (i10 == i6) {
                                this.f18855o = i;
                                this.f18858r = i5;
                                int addAndGet = addAndGet(-i6);
                                i4 = i;
                                i6 = addAndGet;
                                if (addAndGet == 0) {
                                    return;
                                }
                            } else {
                                i6 = i10;
                                i4 = i;
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

        /* renamed from: d */
        void m3619d() {
            int i;
            SimpleQueue<T> simpleQueue = this.f18852l;
            Subscriber<? super T>[] subscriberArr = this.f18846f;
            AtomicLongArray atomicLongArray = this.f18847g;
            long[] jArr = this.f18848h;
            int length = jArr.length;
            int i2 = this.f18855o;
            int i3 = 1;
            while (true) {
                int i4 = 0;
                while (!this.f18856p) {
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
                            Exceptions.m4428b(th);
                            this.f18851k.cancel();
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
                            this.f18855o = i2;
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

        /* renamed from: e */
        void m3618e() {
            Subscriber<? super T>[] subscriberArr = this.f18846f;
            int length = subscriberArr.length;
            int i = 0;
            while (i < length && !this.f18856p) {
                int i2 = i + 1;
                this.f18857q.lazySet(i2);
                subscriberArr[i].onSubscribe(new RailSubscription(i, length));
                i = i2;
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f18854n = true;
            m3621b();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f18853m = th;
            this.f18854n = true;
            m3621b();
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.f18859s != 0 || this.f18852l.offer(t)) {
                m3621b();
                return;
            }
            this.f18851k.cancel();
            onError(new MissingBackpressureException("Queue is full?"));
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f18851k, subscription)) {
                this.f18851k = subscription;
                if (subscription instanceof QueueSubscription) {
                    QueueSubscription queueSubscription = (QueueSubscription) subscription;
                    int requestFusion = queueSubscription.requestFusion(7);
                    if (requestFusion == 1) {
                        this.f18859s = requestFusion;
                        this.f18852l = queueSubscription;
                        this.f18854n = true;
                        m3618e();
                        m3621b();
                        return;
                    } else if (requestFusion == 2) {
                        this.f18859s = requestFusion;
                        this.f18852l = queueSubscription;
                        m3618e();
                        subscription.request(this.f18849i);
                        return;
                    }
                }
                this.f18852l = new SpscArrayQueue(this.f18849i);
                m3618e();
                subscription.request(this.f18849i);
            }
        }
    }

    @Override // io.reactivex.parallel.ParallelFlowable
    /* renamed from: a */
    public int mo3379a() {
        return this.f18844b;
    }

    @Override // io.reactivex.parallel.ParallelFlowable
    /* renamed from: b */
    public void mo3378b(Subscriber<? super T>[] subscriberArr) {
        if (m3377c(subscriberArr)) {
            this.f18843a.mo5c(new ParallelDispatcher(subscriberArr, this.f18845c));
        }
    }
}

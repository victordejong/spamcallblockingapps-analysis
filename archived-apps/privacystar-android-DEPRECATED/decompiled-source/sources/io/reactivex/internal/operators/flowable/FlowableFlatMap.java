package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.fuseable.QueueSubscription;
import io.reactivex.internal.fuseable.SimplePlainQueue;
import io.reactivex.internal.fuseable.SimpleQueue;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.queue.SpscLinkedArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableFlatMap.class */
public final class FlowableFlatMap<T, U> extends AbstractFlowableWithUpstream<T, U> {
    final int bufferSize;
    final boolean delayErrors;
    final Function<? super T, ? extends Publisher<? extends U>> mapper;
    final int maxConcurrency;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber.class */
    public static final class InnerSubscriber<T, U> extends AtomicReference<Subscription> implements FlowableSubscriber<U>, Disposable {
        private static final long serialVersionUID = -4606175640614850599L;
        final int bufferSize;
        volatile boolean done;
        int fusionMode;

        /* renamed from: id */
        final long f420id;
        final int limit;
        final MergeSubscriber<T, U> parent;
        long produced;
        volatile SimpleQueue<U> queue;

        InnerSubscriber(MergeSubscriber<T, U> mergeSubscriber, long j) {
            this.f420id = j;
            this.parent = mergeSubscriber;
            this.bufferSize = mergeSubscriber.bufferSize;
            this.limit = this.bufferSize >> 2;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            SubscriptionHelper.cancel(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return get() == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.done = true;
            this.parent.drain();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            lazySet(SubscriptionHelper.CANCELLED);
            this.parent.innerError(this, th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(U u) {
            if (this.fusionMode != 2) {
                this.parent.tryEmit(u, this);
            } else {
                this.parent.drain();
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.setOnce(this, subscription)) {
                if (subscription instanceof QueueSubscription) {
                    QueueSubscription queueSubscription = (QueueSubscription) subscription;
                    int requestFusion = queueSubscription.requestFusion(7);
                    if (requestFusion == 1) {
                        this.fusionMode = requestFusion;
                        this.queue = queueSubscription;
                        this.done = true;
                        this.parent.drain();
                        return;
                    } else if (requestFusion == 2) {
                        this.fusionMode = requestFusion;
                        this.queue = queueSubscription;
                    }
                }
                subscription.request(this.bufferSize);
            }
        }

        void requestMore(long j) {
            if (this.fusionMode != 1) {
                long j2 = this.produced + j;
                if (j2 >= this.limit) {
                    this.produced = 0L;
                    get().request(j2);
                    return;
                }
                this.produced = j2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber.class */
    public static final class MergeSubscriber<T, U> extends AtomicInteger implements FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = -2117620485640801370L;
        final Subscriber<? super U> actual;
        final int bufferSize;
        volatile boolean cancelled;
        final boolean delayErrors;
        volatile boolean done;
        long lastId;
        int lastIndex;
        final Function<? super T, ? extends Publisher<? extends U>> mapper;
        final int maxConcurrency;
        volatile SimplePlainQueue<U> queue;

        /* renamed from: s */
        Subscription f421s;
        int scalarEmitted;
        final int scalarLimit;
        long uniqueId;
        static final InnerSubscriber<?, ?>[] EMPTY = new InnerSubscriber[0];
        static final InnerSubscriber<?, ?>[] CANCELLED = new InnerSubscriber[0];
        final AtomicThrowable errs = new AtomicThrowable();
        final AtomicReference<InnerSubscriber<?, ?>[]> subscribers = new AtomicReference<>();
        final AtomicLong requested = new AtomicLong();

        MergeSubscriber(Subscriber<? super U> subscriber, Function<? super T, ? extends Publisher<? extends U>> function, boolean z, int i, int i2) {
            this.actual = subscriber;
            this.mapper = function;
            this.delayErrors = z;
            this.maxConcurrency = i;
            this.bufferSize = i2;
            this.scalarLimit = Math.max(1, i >> 1);
            this.subscribers.lazySet(EMPTY);
        }

        /* JADX WARN: Multi-variable type inference failed */
        boolean addInner(InnerSubscriber<T, U> innerSubscriber) {
            InnerSubscriber<?, ?>[] innerSubscriberArr;
            InnerSubscriber[] innerSubscriberArr2;
            do {
                innerSubscriberArr = this.subscribers.get();
                if (innerSubscriberArr == CANCELLED) {
                    innerSubscriber.dispose();
                    return false;
                }
                int length = innerSubscriberArr.length;
                innerSubscriberArr2 = new InnerSubscriber[length + 1];
                System.arraycopy(innerSubscriberArr, 0, innerSubscriberArr2, 0, length);
                innerSubscriberArr2[length] = innerSubscriber;
            } while (!this.subscribers.compareAndSet(innerSubscriberArr, innerSubscriberArr2));
            return true;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            SimplePlainQueue<U> simplePlainQueue;
            if (!this.cancelled) {
                this.cancelled = true;
                this.f421s.cancel();
                disposeAll();
                if (getAndIncrement() == 0 && (simplePlainQueue = this.queue) != null) {
                    simplePlainQueue.clear();
                }
            }
        }

        boolean checkTerminate() {
            if (this.cancelled) {
                clearScalarQueue();
                return true;
            } else if (this.delayErrors || this.errs.get() == null) {
                return false;
            } else {
                clearScalarQueue();
                Throwable terminate = this.errs.terminate();
                if (terminate == ExceptionHelper.TERMINATED) {
                    return true;
                }
                this.actual.onError(terminate);
                return true;
            }
        }

        void clearScalarQueue() {
            SimplePlainQueue<U> simplePlainQueue = this.queue;
            if (simplePlainQueue != null) {
                simplePlainQueue.clear();
            }
        }

        void disposeAll() {
            InnerSubscriber<?, ?>[] andSet;
            if (!(this.subscribers.get() == CANCELLED || (andSet = this.subscribers.getAndSet(CANCELLED)) == CANCELLED)) {
                for (InnerSubscriber<?, ?> innerSubscriber : andSet) {
                    innerSubscriber.dispose();
                }
                Throwable terminate = this.errs.terminate();
                if (!(terminate == null || terminate == ExceptionHelper.TERMINATED)) {
                    RxJavaPlugins.onError(terminate);
                }
            }
        }

        void drain() {
            if (getAndIncrement() == 0) {
                drainLoop();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:113:0x02d2, code lost:
            if (r0.isEmpty() != false) goto L_0x02d5;
         */
        /* JADX WARN: Code restructure failed: missing block: B:54:0x0143, code lost:
            if (r0[r0].f420id != r0) goto L_0x0146;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r12v10 */
        /* JADX WARN: Type inference failed for: r12v11 */
        /* JADX WARN: Type inference failed for: r12v7, types: [long] */
        /* JADX WARN: Type inference failed for: r14v0 */
        /* JADX WARN: Type inference failed for: r14v13 */
        /* JADX WARN: Type inference failed for: r14v16 */
        /* JADX WARN: Type inference failed for: r14v17 */
        /* JADX WARN: Type inference failed for: r14v26 */
        /* JADX WARN: Type inference failed for: r14v29 */
        /* JADX WARN: Type inference failed for: r9v0, types: [long] */
        /* JADX WARN: Type inference failed for: r9v12, types: [long] */
        /* JADX WARN: Type inference failed for: r9v14 */
        /* JADX WARN: Type inference failed for: r9v23 */
        /* JADX WARN: Type inference failed for: r9v24 */
        /* JADX WARN: Unknown variable types count: 4 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void drainLoop() {
            /*
                Method dump skipped, instructions count: 894
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableFlatMap.MergeSubscriber.drainLoop():void");
        }

        SimpleQueue<U> getInnerQueue(InnerSubscriber<T, U> innerSubscriber) {
            SimpleQueue<U> simpleQueue = innerSubscriber.queue;
            SimpleQueue<U> simpleQueue2 = simpleQueue;
            if (simpleQueue == null) {
                simpleQueue2 = new SpscArrayQueue<>(this.bufferSize);
                innerSubscriber.queue = simpleQueue2;
            }
            return simpleQueue2;
        }

        SimpleQueue<U> getMainQueue() {
            SimplePlainQueue<U> simplePlainQueue = this.queue;
            SimplePlainQueue<U> simplePlainQueue2 = simplePlainQueue;
            if (simplePlainQueue == null) {
                simplePlainQueue2 = this.maxConcurrency == Integer.MAX_VALUE ? new SpscLinkedArrayQueue<>(this.bufferSize) : new SpscArrayQueue<>(this.maxConcurrency);
                this.queue = simplePlainQueue2;
            }
            return simplePlainQueue2;
        }

        void innerError(InnerSubscriber<T, U> innerSubscriber, Throwable th) {
            if (this.errs.addThrowable(th)) {
                innerSubscriber.done = true;
                if (!this.delayErrors) {
                    this.f421s.cancel();
                    for (InnerSubscriber<?, ?> innerSubscriber2 : this.subscribers.getAndSet(CANCELLED)) {
                        innerSubscriber2.dispose();
                    }
                }
                drain();
                return;
            }
            RxJavaPlugins.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.done) {
                this.done = true;
                drain();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.done) {
                RxJavaPlugins.onError(th);
            } else if (this.errs.addThrowable(th)) {
                this.done = true;
                drain();
            } else {
                RxJavaPlugins.onError(th);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!this.done) {
                try {
                    Publisher publisher = (Publisher) ObjectHelper.requireNonNull(this.mapper.apply(t), "The mapper returned a null Publisher");
                    if (publisher instanceof Callable) {
                        try {
                            Object call = ((Callable) publisher).call();
                            if (call != null) {
                                tryEmitScalar(call);
                            } else if (this.maxConcurrency != Integer.MAX_VALUE && !this.cancelled) {
                                int i = this.scalarEmitted + 1;
                                this.scalarEmitted = i;
                                if (i == this.scalarLimit) {
                                    this.scalarEmitted = 0;
                                    this.f421s.request(this.scalarLimit);
                                }
                            }
                        } catch (Throwable th) {
                            Exceptions.throwIfFatal(th);
                            this.errs.addThrowable(th);
                            drain();
                        }
                    } else {
                        long j = this.uniqueId;
                        this.uniqueId = 1 + j;
                        InnerSubscriber innerSubscriber = new InnerSubscriber(this, j);
                        if (addInner(innerSubscriber)) {
                            publisher.subscribe(innerSubscriber);
                        }
                    }
                } catch (Throwable th2) {
                    Exceptions.throwIfFatal(th2);
                    this.f421s.cancel();
                    onError(th2);
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f421s, subscription)) {
                this.f421s = subscription;
                this.actual.onSubscribe(this);
                if (this.cancelled) {
                    return;
                }
                if (this.maxConcurrency == Integer.MAX_VALUE) {
                    subscription.request(Long.MAX_VALUE);
                } else {
                    subscription.request(this.maxConcurrency);
                }
            }
        }

        void removeInner(InnerSubscriber<T, U> innerSubscriber) {
            InnerSubscriber<?, ?>[] innerSubscriberArr;
            InnerSubscriber<?, ?>[] innerSubscriberArr2;
            do {
                innerSubscriberArr = this.subscribers.get();
                if (innerSubscriberArr != CANCELLED && innerSubscriberArr != EMPTY) {
                    int length = innerSubscriberArr.length;
                    int i = -1;
                    int i2 = 0;
                    while (true) {
                        if (i2 >= length) {
                            break;
                        } else if (innerSubscriberArr[i2] == innerSubscriber) {
                            i = i2;
                            break;
                        } else {
                            i2++;
                        }
                    }
                    if (i >= 0) {
                        if (length == 1) {
                            innerSubscriberArr2 = EMPTY;
                        } else {
                            innerSubscriberArr2 = new InnerSubscriber[length - 1];
                            System.arraycopy(innerSubscriberArr, 0, innerSubscriberArr2, 0, i);
                            System.arraycopy(innerSubscriberArr, i + 1, innerSubscriberArr2, i, (length - i) - 1);
                        }
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            } while (!this.subscribers.compareAndSet(innerSubscriberArr, innerSubscriberArr2));
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.add(this.requested, j);
                drain();
            }
        }

        void tryEmit(U u, InnerSubscriber<T, U> innerSubscriber) {
            if (get() != 0 || !compareAndSet(0, 1)) {
                SimpleQueue<U> simpleQueue = innerSubscriber.queue;
                SimpleQueue<U> simpleQueue2 = simpleQueue;
                if (simpleQueue == null) {
                    simpleQueue2 = new SpscArrayQueue<>(this.bufferSize);
                    innerSubscriber.queue = simpleQueue2;
                }
                if (!simpleQueue2.offer(u)) {
                    onError(new MissingBackpressureException("Inner queue full?!"));
                    return;
                } else if (getAndIncrement() != 0) {
                    return;
                }
            } else {
                long j = this.requested.get();
                SimpleQueue<U> simpleQueue3 = innerSubscriber.queue;
                if (j == 0 || (simpleQueue3 != null && !simpleQueue3.isEmpty())) {
                    SimpleQueue<U> simpleQueue4 = simpleQueue3;
                    if (simpleQueue3 == null) {
                        simpleQueue4 = getInnerQueue(innerSubscriber);
                    }
                    if (!simpleQueue4.offer(u)) {
                        onError(new MissingBackpressureException("Inner queue full?!"));
                        return;
                    }
                } else {
                    this.actual.onNext(u);
                    if (j != Long.MAX_VALUE) {
                        this.requested.decrementAndGet();
                    }
                    innerSubscriber.requestMore(1L);
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            }
            drainLoop();
        }

        void tryEmitScalar(U u) {
            if (get() == 0 && compareAndSet(0, 1)) {
                long j = this.requested.get();
                SimplePlainQueue<U> simplePlainQueue = this.queue;
                if (j == 0 || (simplePlainQueue != null && !simplePlainQueue.isEmpty())) {
                    SimpleQueue<U> simpleQueue = simplePlainQueue;
                    if (simplePlainQueue == null) {
                        simpleQueue = getMainQueue();
                    }
                    if (!simpleQueue.offer(u)) {
                        onError(new IllegalStateException("Scalar queue full?!"));
                        return;
                    }
                } else {
                    this.actual.onNext(u);
                    if (j != Long.MAX_VALUE) {
                        this.requested.decrementAndGet();
                    }
                    if (this.maxConcurrency != Integer.MAX_VALUE && !this.cancelled) {
                        int i = this.scalarEmitted + 1;
                        this.scalarEmitted = i;
                        if (i == this.scalarLimit) {
                            this.scalarEmitted = 0;
                            this.f421s.request(this.scalarLimit);
                        }
                    }
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            } else if (!getMainQueue().offer(u)) {
                onError(new IllegalStateException("Scalar queue full?!"));
                return;
            } else if (getAndIncrement() != 0) {
                return;
            }
            drainLoop();
        }
    }

    public FlowableFlatMap(Flowable<T> flowable, Function<? super T, ? extends Publisher<? extends U>> function, boolean z, int i, int i2) {
        super(flowable);
        this.mapper = function;
        this.delayErrors = z;
        this.maxConcurrency = i;
        this.bufferSize = i2;
    }

    public static <T, U> FlowableSubscriber<T> subscribe(Subscriber<? super U> subscriber, Function<? super T, ? extends Publisher<? extends U>> function, boolean z, int i, int i2) {
        return new MergeSubscriber(subscriber, function, z, i, i2);
    }

    @Override // io.reactivex.Flowable
    protected void subscribeActual(Subscriber<? super U> subscriber) {
        if (!FlowableScalarXMap.tryScalarXMapSubscribe(this.source, subscriber, this.mapper)) {
            this.source.subscribe((FlowableSubscriber) subscribe(subscriber, this.mapper, this.delayErrors, this.maxConcurrency, this.bufferSize));
        }
    }
}

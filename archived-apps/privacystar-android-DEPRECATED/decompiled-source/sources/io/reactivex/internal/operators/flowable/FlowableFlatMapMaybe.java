package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.queue.SpscLinkedArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableFlatMapMaybe.class */
public final class FlowableFlatMapMaybe<T, R> extends AbstractFlowableWithUpstream<T, R> {
    final boolean delayErrors;
    final Function<? super T, ? extends MaybeSource<? extends R>> mapper;
    final int maxConcurrency;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber.class */
    static final class FlatMapMaybeSubscriber<T, R> extends AtomicInteger implements FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = 8600231336733376951L;
        final Subscriber<? super R> actual;
        volatile boolean cancelled;
        final boolean delayErrors;
        final Function<? super T, ? extends MaybeSource<? extends R>> mapper;
        final int maxConcurrency;

        /* renamed from: s */
        Subscription f424s;
        final AtomicLong requested = new AtomicLong();
        final CompositeDisposable set = new CompositeDisposable();
        final AtomicThrowable errors = new AtomicThrowable();
        final AtomicInteger active = new AtomicInteger(1);
        final AtomicReference<SpscLinkedArrayQueue<R>> queue = new AtomicReference<>();

        /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber$InnerObserver.class */
        final class InnerObserver extends AtomicReference<Disposable> implements MaybeObserver<R>, Disposable {
            private static final long serialVersionUID = -502562646270949838L;

            InnerObserver() {
            }

            @Override // io.reactivex.disposables.Disposable
            public void dispose() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.disposables.Disposable
            public boolean isDisposed() {
                return DisposableHelper.isDisposed(get());
            }

            @Override // io.reactivex.MaybeObserver
            public void onComplete() {
                FlatMapMaybeSubscriber.this.innerComplete(this);
            }

            @Override // io.reactivex.MaybeObserver
            public void onError(Throwable th) {
                FlatMapMaybeSubscriber.this.innerError(this, th);
            }

            @Override // io.reactivex.MaybeObserver
            public void onSubscribe(Disposable disposable) {
                DisposableHelper.setOnce(this, disposable);
            }

            @Override // io.reactivex.MaybeObserver
            public void onSuccess(R r) {
                FlatMapMaybeSubscriber.this.innerSuccess(this, r);
            }
        }

        FlatMapMaybeSubscriber(Subscriber<? super R> subscriber, Function<? super T, ? extends MaybeSource<? extends R>> function, boolean z, int i) {
            this.actual = subscriber;
            this.mapper = function;
            this.delayErrors = z;
            this.maxConcurrency = i;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.cancelled = true;
            this.f424s.cancel();
            this.set.dispose();
        }

        void clear() {
            SpscLinkedArrayQueue<R> spscLinkedArrayQueue = this.queue.get();
            if (spscLinkedArrayQueue != null) {
                spscLinkedArrayQueue.clear();
            }
        }

        void drain() {
            if (getAndIncrement() == 0) {
                drainLoop();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:41:0x00e1, code lost:
            if (r0 != 0) goto L_0x0171;
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x00e8, code lost:
            if (r5.cancelled == false) goto L_0x00f0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x00eb, code lost:
            clear();
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x00ef, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:47:0x00f4, code lost:
            if (r5.delayErrors != false) goto L_0x011a;
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x0101, code lost:
            if (r5.errors.get() == null) goto L_0x011a;
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x0104, code lost:
            r0 = r5.errors.terminate();
            clear();
            r0.onError(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:51:0x0119, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:53:0x011e, code lost:
            if (r0.get() != 0) goto L_0x0127;
         */
        /* JADX WARN: Code restructure failed: missing block: B:54:0x0121, code lost:
            r17 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:55:0x0127, code lost:
            r17 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:0x012a, code lost:
            r0 = r0.get();
         */
        /* JADX WARN: Code restructure failed: missing block: B:57:0x0135, code lost:
            if (r0 == null) goto L_0x0144;
         */
        /* JADX WARN: Code restructure failed: missing block: B:59:0x0141, code lost:
            if (r0.isEmpty() == false) goto L_0x0147;
         */
        /* JADX WARN: Code restructure failed: missing block: B:60:0x0144, code lost:
            r18 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:62:0x0149, code lost:
            if (r17 == false) goto L_0x0171;
         */
        /* JADX WARN: Code restructure failed: missing block: B:64:0x014e, code lost:
            if (r18 == false) goto L_0x0171;
         */
        /* JADX WARN: Code restructure failed: missing block: B:65:0x0151, code lost:
            r0 = r5.errors.terminate();
         */
        /* JADX WARN: Code restructure failed: missing block: B:66:0x015c, code lost:
            if (r0 == null) goto L_0x016a;
         */
        /* JADX WARN: Code restructure failed: missing block: B:67:0x015f, code lost:
            r0.onError(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:68:0x016a, code lost:
            r0.onComplete();
         */
        /* JADX WARN: Code restructure failed: missing block: B:69:0x0170, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:71:0x0175, code lost:
            if (r0 == 0) goto L_0x0196;
         */
        /* JADX WARN: Code restructure failed: missing block: B:72:0x0178, code lost:
            io.reactivex.internal.util.BackpressureHelper.produced(r5.requested, r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:73:0x0188, code lost:
            if (r5.maxConcurrency == Integer.MAX_VALUE) goto L_0x0196;
         */
        /* JADX WARN: Code restructure failed: missing block: B:74:0x018b, code lost:
            r5.f424s.request(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:75:0x0196, code lost:
            r0 = addAndGet(-r9);
            r9 = r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:88:?, code lost:
            return;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void drainLoop() {
            /*
                Method dump skipped, instructions count: 425
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableFlatMapMaybe.FlatMapMaybeSubscriber.drainLoop():void");
        }

        SpscLinkedArrayQueue<R> getOrCreateQueue() {
            SpscLinkedArrayQueue<R> spscLinkedArrayQueue;
            do {
                SpscLinkedArrayQueue<R> spscLinkedArrayQueue2 = this.queue.get();
                if (spscLinkedArrayQueue2 != null) {
                    return spscLinkedArrayQueue2;
                }
                spscLinkedArrayQueue = new SpscLinkedArrayQueue<>(Flowable.bufferSize());
            } while (!this.queue.compareAndSet(null, spscLinkedArrayQueue));
            return spscLinkedArrayQueue;
        }

        void innerComplete(FlatMapMaybeSubscriber<T, R>.InnerObserver innerObserver) {
            this.set.delete(innerObserver);
            if (get() == 0) {
                boolean z = true;
                if (compareAndSet(0, 1)) {
                    if (this.active.decrementAndGet() != 0) {
                        z = false;
                    }
                    SpscLinkedArrayQueue<R> spscLinkedArrayQueue = this.queue.get();
                    if (!z || (spscLinkedArrayQueue != null && !spscLinkedArrayQueue.isEmpty())) {
                        if (this.maxConcurrency != Integer.MAX_VALUE) {
                            this.f424s.request(1L);
                        }
                        if (decrementAndGet() != 0) {
                            drainLoop();
                            return;
                        }
                        return;
                    }
                    Throwable terminate = this.errors.terminate();
                    if (terminate != null) {
                        this.actual.onError(terminate);
                        return;
                    } else {
                        this.actual.onComplete();
                        return;
                    }
                }
            }
            this.active.decrementAndGet();
            if (this.maxConcurrency != Integer.MAX_VALUE) {
                this.f424s.request(1L);
            }
            drain();
        }

        void innerError(FlatMapMaybeSubscriber<T, R>.InnerObserver innerObserver, Throwable th) {
            this.set.delete(innerObserver);
            if (this.errors.addThrowable(th)) {
                if (!this.delayErrors) {
                    this.f424s.cancel();
                    this.set.dispose();
                } else if (this.maxConcurrency != Integer.MAX_VALUE) {
                    this.f424s.request(1L);
                }
                this.active.decrementAndGet();
                drain();
                return;
            }
            RxJavaPlugins.onError(th);
        }

        void innerSuccess(FlatMapMaybeSubscriber<T, R>.InnerObserver innerObserver, R r) {
            this.set.delete(innerObserver);
            if (get() == 0) {
                boolean z = true;
                if (compareAndSet(0, 1)) {
                    if (this.active.decrementAndGet() != 0) {
                        z = false;
                    }
                    if (this.requested.get() != 0) {
                        this.actual.onNext(r);
                        SpscLinkedArrayQueue<R> spscLinkedArrayQueue = this.queue.get();
                        if (!z || (spscLinkedArrayQueue != null && !spscLinkedArrayQueue.isEmpty())) {
                            BackpressureHelper.produced(this.requested, 1L);
                            if (this.maxConcurrency != Integer.MAX_VALUE) {
                                this.f424s.request(1L);
                            }
                        } else {
                            Throwable terminate = this.errors.terminate();
                            if (terminate != null) {
                                this.actual.onError(terminate);
                                return;
                            } else {
                                this.actual.onComplete();
                                return;
                            }
                        }
                    } else {
                        SpscLinkedArrayQueue<R> orCreateQueue = getOrCreateQueue();
                        synchronized (orCreateQueue) {
                            orCreateQueue.offer(r);
                        }
                    }
                    if (decrementAndGet() == 0) {
                        return;
                    }
                    drainLoop();
                }
            }
            SpscLinkedArrayQueue<R> orCreateQueue2 = getOrCreateQueue();
            synchronized (orCreateQueue2) {
                orCreateQueue2.offer(r);
            }
            this.active.decrementAndGet();
            if (getAndIncrement() != 0) {
                return;
            }
            drainLoop();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.active.decrementAndGet();
            drain();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.active.decrementAndGet();
            if (this.errors.addThrowable(th)) {
                if (!this.delayErrors) {
                    this.set.dispose();
                }
                drain();
                return;
            }
            RxJavaPlugins.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            try {
                MaybeSource maybeSource = (MaybeSource) ObjectHelper.requireNonNull(this.mapper.apply(t), "The mapper returned a null MaybeSource");
                this.active.getAndIncrement();
                InnerObserver innerObserver = new InnerObserver();
                if (!this.cancelled && this.set.add(innerObserver)) {
                    maybeSource.subscribe(innerObserver);
                }
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.f424s.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f424s, subscription)) {
                this.f424s = subscription;
                this.actual.onSubscribe(this);
                if (this.maxConcurrency == Integer.MAX_VALUE) {
                    subscription.request(Long.MAX_VALUE);
                } else {
                    subscription.request(this.maxConcurrency);
                }
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.add(this.requested, j);
                drain();
            }
        }
    }

    public FlowableFlatMapMaybe(Flowable<T> flowable, Function<? super T, ? extends MaybeSource<? extends R>> function, boolean z, int i) {
        super(flowable);
        this.mapper = function;
        this.delayErrors = z;
        this.maxConcurrency = i;
    }

    @Override // io.reactivex.Flowable
    protected void subscribeActual(Subscriber<? super R> subscriber) {
        this.source.subscribe((FlowableSubscriber) new FlatMapMaybeSubscriber(subscriber, this.mapper, this.delayErrors, this.maxConcurrency));
    }
}

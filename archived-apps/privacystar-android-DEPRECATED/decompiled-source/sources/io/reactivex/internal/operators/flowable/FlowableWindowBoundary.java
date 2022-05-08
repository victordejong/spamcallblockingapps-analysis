package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.fuseable.SimpleQueue;
import io.reactivex.internal.queue.MpscLinkedQueue;
import io.reactivex.internal.subscribers.QueueDrainSubscriber;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.plugins.RxJavaPlugins;
import io.reactivex.processors.UnicastProcessor;
import io.reactivex.subscribers.DisposableSubscriber;
import io.reactivex.subscribers.SerializedSubscriber;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableWindowBoundary.class */
public final class FlowableWindowBoundary<T, B> extends AbstractFlowableWithUpstream<T, Flowable<T>> {
    final int bufferSize;
    final Publisher<B> other;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryInnerSubscriber.class */
    static final class WindowBoundaryInnerSubscriber<T, B> extends DisposableSubscriber<B> {
        boolean done;
        final WindowBoundaryMainSubscriber<T, B> parent;

        WindowBoundaryInnerSubscriber(WindowBoundaryMainSubscriber<T, B> windowBoundaryMainSubscriber) {
            this.parent = windowBoundaryMainSubscriber;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.done) {
                this.done = true;
                this.parent.onComplete();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.done) {
                RxJavaPlugins.onError(th);
                return;
            }
            this.done = true;
            this.parent.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(B b) {
            if (!this.done) {
                this.parent.next();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableWindowBoundary$WindowBoundaryMainSubscriber.class */
    static final class WindowBoundaryMainSubscriber<T, B> extends QueueDrainSubscriber<T, Object, Flowable<T>> implements Subscription {
        static final Object NEXT = new Object();
        final int bufferSize;
        final Publisher<B> other;

        /* renamed from: s */
        Subscription f491s;
        UnicastProcessor<T> window;
        final AtomicReference<Disposable> boundary = new AtomicReference<>();
        final AtomicLong windows = new AtomicLong();

        WindowBoundaryMainSubscriber(Subscriber<? super Flowable<T>> subscriber, Publisher<B> publisher, int i) {
            super(subscriber, new MpscLinkedQueue());
            this.other = publisher;
            this.bufferSize = i;
            this.windows.lazySet(1L);
        }

        @Override // io.reactivex.internal.subscribers.QueueDrainSubscriber, io.reactivex.internal.util.QueueDrain
        public boolean accept(Subscriber<? super Flowable<T>> subscriber, Object obj) {
            return false;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.cancelled = true;
        }

        /* JADX WARN: Multi-variable type inference failed */
        void drainLoop() {
            SimpleQueue simpleQueue = this.queue;
            Subscriber<? super V> subscriber = this.actual;
            UnicastProcessor<T> unicastProcessor = this.window;
            int i = 1;
            while (true) {
                boolean z = this.done;
                Object poll = simpleQueue.poll();
                boolean z2 = poll == null;
                if (z && z2) {
                    DisposableHelper.dispose(this.boundary);
                    Throwable th = this.error;
                    if (th != null) {
                        unicastProcessor.onError(th);
                        return;
                    } else {
                        unicastProcessor.onComplete();
                        return;
                    }
                } else if (z2) {
                    int leave = leave(-i);
                    i = leave;
                    if (leave == 0) {
                        return;
                    }
                } else if (poll == NEXT) {
                    unicastProcessor.onComplete();
                    if (this.windows.decrementAndGet() == 0) {
                        DisposableHelper.dispose(this.boundary);
                        return;
                    } else if (!this.cancelled) {
                        unicastProcessor = (UnicastProcessor<T>) UnicastProcessor.create(this.bufferSize);
                        long requested = requested();
                        if (requested != 0) {
                            this.windows.getAndIncrement();
                            subscriber.onNext(unicastProcessor);
                            if (requested != Long.MAX_VALUE) {
                                produced(1L);
                            }
                            this.window = unicastProcessor;
                        } else {
                            this.cancelled = true;
                            subscriber.onError(new MissingBackpressureException("Could not deliver new window due to lack of requests"));
                        }
                    }
                } else {
                    unicastProcessor.onNext(NotificationLite.getValue(poll));
                }
            }
        }

        void next() {
            this.queue.offer(NEXT);
            if (enter()) {
                drainLoop();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.done) {
                this.done = true;
                if (enter()) {
                    drainLoop();
                }
                if (this.windows.decrementAndGet() == 0) {
                    DisposableHelper.dispose(this.boundary);
                }
                this.actual.onComplete();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.done) {
                RxJavaPlugins.onError(th);
                return;
            }
            this.error = th;
            this.done = true;
            if (enter()) {
                drainLoop();
            }
            if (this.windows.decrementAndGet() == 0) {
                DisposableHelper.dispose(this.boundary);
            }
            this.actual.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (fastEnter()) {
                this.window.onNext(t);
                if (leave(-1) == 0) {
                    return;
                }
            } else {
                this.queue.offer(NotificationLite.next(t));
                if (!enter()) {
                    return;
                }
            }
            drainLoop();
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f491s, subscription)) {
                this.f491s = subscription;
                Subscriber<? super V> subscriber = this.actual;
                subscriber.onSubscribe(this);
                if (!this.cancelled) {
                    UnicastProcessor<T> create = UnicastProcessor.create(this.bufferSize);
                    long requested = requested();
                    if (requested != 0) {
                        subscriber.onNext(create);
                        if (requested != Long.MAX_VALUE) {
                            produced(1L);
                        }
                        this.window = create;
                        WindowBoundaryInnerSubscriber windowBoundaryInnerSubscriber = new WindowBoundaryInnerSubscriber(this);
                        if (this.boundary.compareAndSet(null, windowBoundaryInnerSubscriber)) {
                            this.windows.getAndIncrement();
                            subscription.request(Long.MAX_VALUE);
                            this.other.subscribe(windowBoundaryInnerSubscriber);
                            return;
                        }
                        return;
                    }
                    subscriber.onError(new MissingBackpressureException("Could not deliver first window due to lack of requests"));
                }
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            requested(j);
        }
    }

    public FlowableWindowBoundary(Flowable<T> flowable, Publisher<B> publisher, int i) {
        super(flowable);
        this.other = publisher;
        this.bufferSize = i;
    }

    @Override // io.reactivex.Flowable
    protected void subscribeActual(Subscriber<? super Flowable<T>> subscriber) {
        this.source.subscribe((FlowableSubscriber) new WindowBoundaryMainSubscriber(new SerializedSubscriber(subscriber), this.other, this.bufferSize));
    }
}

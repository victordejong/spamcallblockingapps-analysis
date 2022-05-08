package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.Scheduler;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.queue.MpscLinkedQueue;
import io.reactivex.internal.subscribers.QueueDrainSubscriber;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.QueueDrainHelper;
import io.reactivex.subscribers.SerializedSubscriber;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableBufferTimed.class */
public final class FlowableBufferTimed<T, U extends Collection<? super T>> extends AbstractFlowableWithUpstream<T, U> {
    final Callable<U> bufferSupplier;
    final int maxSize;
    final boolean restartTimerOnMaxSize;
    final Scheduler scheduler;
    final long timeskip;
    final long timespan;
    final TimeUnit unit;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber.class */
    static final class BufferExactBoundedSubscriber<T, U extends Collection<? super T>> extends QueueDrainSubscriber<T, U, U> implements Subscription, Runnable, Disposable {
        U buffer;
        final Callable<U> bufferSupplier;
        long consumerIndex;
        final int maxSize;
        long producerIndex;
        final boolean restartTimerOnMaxSize;

        /* renamed from: s */
        Subscription f390s;
        Disposable timer;
        final long timespan;
        final TimeUnit unit;

        /* renamed from: w */
        final Scheduler.Worker f391w;

        BufferExactBoundedSubscriber(Subscriber<? super U> subscriber, Callable<U> callable, long j, TimeUnit timeUnit, int i, boolean z, Scheduler.Worker worker) {
            super(subscriber, new MpscLinkedQueue());
            this.bufferSupplier = callable;
            this.timespan = j;
            this.unit = timeUnit;
            this.maxSize = i;
            this.restartTimerOnMaxSize = z;
            this.f391w = worker;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.internal.subscribers.QueueDrainSubscriber, io.reactivex.internal.util.QueueDrain
        public /* bridge */ /* synthetic */ boolean accept(Subscriber subscriber, Object obj) {
            return accept((Subscriber<? super Subscriber>) subscriber, (Subscriber) ((Collection) obj));
        }

        public boolean accept(Subscriber<? super U> subscriber, U u) {
            subscriber.onNext(u);
            return true;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (!this.cancelled) {
                this.cancelled = true;
                dispose();
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            synchronized (this) {
                this.buffer = null;
            }
            this.f390s.cancel();
            this.f391w.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f391w.isDisposed();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            U u;
            synchronized (this) {
                u = this.buffer;
                this.buffer = null;
            }
            this.queue.offer(u);
            this.done = true;
            if (enter()) {
                QueueDrainHelper.drainMaxLoop(this.queue, this.actual, false, this, this);
            }
            this.f391w.dispose();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            synchronized (this) {
                this.buffer = null;
            }
            this.actual.onError(th);
            this.f391w.dispose();
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            synchronized (this) {
                U u = this.buffer;
                if (u != null) {
                    u.add(t);
                    if (u.size() >= this.maxSize) {
                        this.buffer = null;
                        this.producerIndex++;
                        if (this.restartTimerOnMaxSize) {
                            this.timer.dispose();
                        }
                        fastPathOrderedEmitMax(u, false, this);
                        try {
                            U u2 = (U) ((Collection) ObjectHelper.requireNonNull(this.bufferSupplier.call(), "The supplied buffer is null"));
                            synchronized (this) {
                                this.buffer = u2;
                                this.consumerIndex++;
                            }
                            if (this.restartTimerOnMaxSize) {
                                this.timer = this.f391w.schedulePeriodically(this, this.timespan, this.timespan, this.unit);
                            }
                        } catch (Throwable th) {
                            Exceptions.throwIfFatal(th);
                            cancel();
                            this.actual.onError(th);
                        }
                    }
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f390s, subscription)) {
                this.f390s = subscription;
                try {
                    this.buffer = (U) ((Collection) ObjectHelper.requireNonNull(this.bufferSupplier.call(), "The supplied buffer is null"));
                    this.actual.onSubscribe(this);
                    this.timer = this.f391w.schedulePeriodically(this, this.timespan, this.timespan, this.unit);
                    subscription.request(Long.MAX_VALUE);
                } catch (Throwable th) {
                    Exceptions.throwIfFatal(th);
                    this.f391w.dispose();
                    subscription.cancel();
                    EmptySubscription.error(th, this.actual);
                }
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            requested(j);
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                U u = (U) ((Collection) ObjectHelper.requireNonNull(this.bufferSupplier.call(), "The supplied buffer is null"));
                synchronized (this) {
                    U u2 = this.buffer;
                    if (u2 != null && this.producerIndex == this.consumerIndex) {
                        this.buffer = u;
                        fastPathOrderedEmitMax(u2, false, this);
                    }
                }
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                cancel();
                this.actual.onError(th);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactUnboundedSubscriber.class */
    static final class BufferExactUnboundedSubscriber<T, U extends Collection<? super T>> extends QueueDrainSubscriber<T, U, U> implements Subscription, Runnable, Disposable {
        U buffer;
        final Callable<U> bufferSupplier;

        /* renamed from: s */
        Subscription f392s;
        final Scheduler scheduler;
        final AtomicReference<Disposable> timer = new AtomicReference<>();
        final long timespan;
        final TimeUnit unit;

        BufferExactUnboundedSubscriber(Subscriber<? super U> subscriber, Callable<U> callable, long j, TimeUnit timeUnit, Scheduler scheduler) {
            super(subscriber, new MpscLinkedQueue());
            this.bufferSupplier = callable;
            this.timespan = j;
            this.unit = timeUnit;
            this.scheduler = scheduler;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.internal.subscribers.QueueDrainSubscriber, io.reactivex.internal.util.QueueDrain
        public /* bridge */ /* synthetic */ boolean accept(Subscriber subscriber, Object obj) {
            return accept((Subscriber<? super Subscriber>) subscriber, (Subscriber) ((Collection) obj));
        }

        public boolean accept(Subscriber<? super U> subscriber, U u) {
            this.actual.onNext(u);
            return true;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f392s.cancel();
            DisposableHelper.dispose(this.timer);
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            cancel();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.timer.get() == DisposableHelper.DISPOSED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            DisposableHelper.dispose(this.timer);
            synchronized (this) {
                U u = this.buffer;
                if (u != null) {
                    this.buffer = null;
                    this.queue.offer(u);
                    this.done = true;
                    if (enter()) {
                        QueueDrainHelper.drainMaxLoop(this.queue, this.actual, false, this, this);
                    }
                }
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            DisposableHelper.dispose(this.timer);
            synchronized (this) {
                this.buffer = null;
            }
            this.actual.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            synchronized (this) {
                U u = this.buffer;
                if (u != null) {
                    u.add(t);
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f392s, subscription)) {
                this.f392s = subscription;
                try {
                    this.buffer = (U) ((Collection) ObjectHelper.requireNonNull(this.bufferSupplier.call(), "The supplied buffer is null"));
                    this.actual.onSubscribe(this);
                    if (!this.cancelled) {
                        subscription.request(Long.MAX_VALUE);
                        Disposable schedulePeriodicallyDirect = this.scheduler.schedulePeriodicallyDirect(this, this.timespan, this.timespan, this.unit);
                        if (!this.timer.compareAndSet(null, schedulePeriodicallyDirect)) {
                            schedulePeriodicallyDirect.dispose();
                        }
                    }
                } catch (Throwable th) {
                    Exceptions.throwIfFatal(th);
                    cancel();
                    EmptySubscription.error(th, this.actual);
                }
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            requested(j);
        }

        @Override // java.lang.Runnable
        public void run() {
            U u;
            try {
                U u2 = (U) ((Collection) ObjectHelper.requireNonNull(this.bufferSupplier.call(), "The supplied buffer is null"));
                synchronized (this) {
                    u = this.buffer;
                    if (u != null) {
                        this.buffer = u2;
                    }
                }
                if (u == null) {
                    DisposableHelper.dispose(this.timer);
                } else {
                    fastPathEmitMax(u, false, this);
                }
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                cancel();
                this.actual.onError(th);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferSkipBoundedSubscriber.class */
    static final class BufferSkipBoundedSubscriber<T, U extends Collection<? super T>> extends QueueDrainSubscriber<T, U, U> implements Subscription, Runnable {
        final Callable<U> bufferSupplier;
        final List<U> buffers = new LinkedList();

        /* renamed from: s */
        Subscription f393s;
        final long timeskip;
        final long timespan;
        final TimeUnit unit;

        /* renamed from: w */
        final Scheduler.Worker f394w;

        /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferSkipBoundedSubscriber$RemoveFromBuffer.class */
        final class RemoveFromBuffer implements Runnable {
            private final U buffer;

            RemoveFromBuffer(U u) {
                this.buffer = u;
            }

            @Override // java.lang.Runnable
            public void run() {
                synchronized (BufferSkipBoundedSubscriber.this) {
                    BufferSkipBoundedSubscriber.this.buffers.remove(this.buffer);
                }
                BufferSkipBoundedSubscriber.this.fastPathOrderedEmitMax(this.buffer, false, BufferSkipBoundedSubscriber.this.f394w);
            }
        }

        BufferSkipBoundedSubscriber(Subscriber<? super U> subscriber, Callable<U> callable, long j, long j2, TimeUnit timeUnit, Scheduler.Worker worker) {
            super(subscriber, new MpscLinkedQueue());
            this.bufferSupplier = callable;
            this.timespan = j;
            this.timeskip = j2;
            this.unit = timeUnit;
            this.f394w = worker;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.internal.subscribers.QueueDrainSubscriber, io.reactivex.internal.util.QueueDrain
        public /* bridge */ /* synthetic */ boolean accept(Subscriber subscriber, Object obj) {
            return accept((Subscriber<? super Subscriber>) subscriber, (Subscriber) ((Collection) obj));
        }

        public boolean accept(Subscriber<? super U> subscriber, U u) {
            subscriber.onNext(u);
            return true;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            clear();
            this.f393s.cancel();
            this.f394w.dispose();
        }

        void clear() {
            synchronized (this) {
                this.buffers.clear();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            ArrayList<Collection> arrayList;
            synchronized (this) {
                arrayList = new ArrayList(this.buffers);
                this.buffers.clear();
            }
            for (Collection collection : arrayList) {
                this.queue.offer(collection);
            }
            this.done = true;
            if (enter()) {
                QueueDrainHelper.drainMaxLoop(this.queue, this.actual, false, this.f394w, this);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.done = true;
            this.f394w.dispose();
            clear();
            this.actual.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            synchronized (this) {
                for (U u : this.buffers) {
                    u.add(t);
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f393s, subscription)) {
                this.f393s = subscription;
                try {
                    Collection collection = (Collection) ObjectHelper.requireNonNull(this.bufferSupplier.call(), "The supplied buffer is null");
                    this.buffers.add(collection);
                    this.actual.onSubscribe(this);
                    subscription.request(Long.MAX_VALUE);
                    this.f394w.schedulePeriodically(this, this.timeskip, this.timeskip, this.unit);
                    this.f394w.schedule(new RemoveFromBuffer(collection), this.timespan, this.unit);
                } catch (Throwable th) {
                    Exceptions.throwIfFatal(th);
                    this.f394w.dispose();
                    subscription.cancel();
                    EmptySubscription.error(th, this.actual);
                }
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            requested(j);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            if (!this.cancelled) {
                try {
                    Collection collection = (Collection) ObjectHelper.requireNonNull(this.bufferSupplier.call(), "The supplied buffer is null");
                    synchronized (this) {
                        if (!this.cancelled) {
                            this.buffers.add(collection);
                            this.f394w.schedule(new RemoveFromBuffer(collection), this.timespan, this.unit);
                        }
                    }
                } catch (Throwable th) {
                    Exceptions.throwIfFatal(th);
                    cancel();
                    this.actual.onError(th);
                }
            }
        }
    }

    public FlowableBufferTimed(Flowable<T> flowable, long j, long j2, TimeUnit timeUnit, Scheduler scheduler, Callable<U> callable, int i, boolean z) {
        super(flowable);
        this.timespan = j;
        this.timeskip = j2;
        this.unit = timeUnit;
        this.scheduler = scheduler;
        this.bufferSupplier = callable;
        this.maxSize = i;
        this.restartTimerOnMaxSize = z;
    }

    @Override // io.reactivex.Flowable
    protected void subscribeActual(Subscriber<? super U> subscriber) {
        if (this.timespan == this.timeskip && this.maxSize == Integer.MAX_VALUE) {
            this.source.subscribe((FlowableSubscriber) new BufferExactUnboundedSubscriber(new SerializedSubscriber(subscriber), this.bufferSupplier, this.timespan, this.unit, this.scheduler));
            return;
        }
        Scheduler.Worker createWorker = this.scheduler.createWorker();
        if (this.timespan == this.timeskip) {
            this.source.subscribe((FlowableSubscriber) new BufferExactBoundedSubscriber(new SerializedSubscriber(subscriber), this.bufferSupplier, this.timespan, this.unit, this.maxSize, this.restartTimerOnMaxSize, createWorker));
        } else {
            this.source.subscribe((FlowableSubscriber) new BufferSkipBoundedSubscriber(new SerializedSubscriber(subscriber), this.bufferSupplier, this.timespan, this.timeskip, this.unit, createWorker));
        }
    }
}

package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.queue.MpscLinkedQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.plugins.RxJavaPlugins;
import io.reactivex.processors.UnicastProcessor;
import io.reactivex.subscribers.DisposableSubscriber;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier.class */
public final class FlowableWindowBoundarySupplier<T, B> extends AbstractFlowableWithUpstream<T, Flowable<T>> {

    /* renamed from: h */
    final Callable<? extends Publisher<B>> f16848h;

    /* renamed from: i */
    final int f16849i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryInnerSubscriber.class */
    public static final class WindowBoundaryInnerSubscriber<T, B> extends DisposableSubscriber<B> {

        /* renamed from: g */
        final WindowBoundaryMainSubscriber<T, B> f16850g;

        /* renamed from: h */
        boolean f16851h;

        WindowBoundaryInnerSubscriber(WindowBoundaryMainSubscriber<T, B> windowBoundaryMainSubscriber) {
            this.f16850g = windowBoundaryMainSubscriber;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.f16851h) {
                this.f16851h = true;
                this.f16850g.m4033c();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f16851h) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f16851h = true;
            this.f16850g.m4032d(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(B b) {
            if (!this.f16851h) {
                this.f16851h = true;
                dispose();
                this.f16850g.m4031e(this);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber.class */
    static final class WindowBoundaryMainSubscriber<T, B> extends AtomicInteger implements FlowableSubscriber<T>, Subscription, Runnable {
        private static final long serialVersionUID = 2233020065421370272L;

        /* renamed from: f */
        final Subscriber<? super Flowable<T>> f16854f;

        /* renamed from: g */
        final int f16855g;

        /* renamed from: m */
        final Callable<? extends Publisher<B>> f16861m;

        /* renamed from: o */
        Subscription f16863o;

        /* renamed from: p */
        volatile boolean f16864p;

        /* renamed from: q */
        UnicastProcessor<T> f16865q;

        /* renamed from: r */
        long f16866r;

        /* renamed from: s */
        static final WindowBoundaryInnerSubscriber<Object, Object> f16852s = new WindowBoundaryInnerSubscriber<>(null);

        /* renamed from: t */
        static final Object f16853t = new Object();

        /* renamed from: h */
        final AtomicReference<WindowBoundaryInnerSubscriber<T, B>> f16856h = new AtomicReference<>();

        /* renamed from: i */
        final AtomicInteger f16857i = new AtomicInteger(1);

        /* renamed from: j */
        final MpscLinkedQueue<Object> f16858j = new MpscLinkedQueue<>();

        /* renamed from: k */
        final AtomicThrowable f16859k = new AtomicThrowable();

        /* renamed from: l */
        final AtomicBoolean f16860l = new AtomicBoolean();

        /* renamed from: n */
        final AtomicLong f16862n = new AtomicLong();

        WindowBoundaryMainSubscriber(Subscriber<? super Flowable<T>> subscriber, int i, Callable<? extends Publisher<B>> callable) {
            this.f16854f = subscriber;
            this.f16855g = i;
            this.f16861m = callable;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: a */
        void m4035a() {
            Disposable disposable = (Disposable) this.f16856h.getAndSet(f16852s);
            if (disposable != null && disposable != f16852s) {
                disposable.dispose();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: b */
        void m4034b() {
            if (getAndIncrement() == 0) {
                Subscriber<? super Flowable<T>> subscriber = this.f16854f;
                MpscLinkedQueue<Object> mpscLinkedQueue = this.f16858j;
                AtomicThrowable atomicThrowable = this.f16859k;
                long j = this.f16866r;
                int i = 1;
                while (this.f16857i.get() != 0) {
                    UnicastProcessor<T> unicastProcessor = this.f16865q;
                    boolean z = this.f16864p;
                    if (!z || atomicThrowable.get() == null) {
                        Object poll = mpscLinkedQueue.poll();
                        boolean z2 = poll == null;
                        if (z && z2) {
                            Throwable b = atomicThrowable.m3455b();
                            if (b == null) {
                                if (unicastProcessor != 0) {
                                    this.f16865q = null;
                                    unicastProcessor.onComplete();
                                }
                                subscriber.onComplete();
                                return;
                            }
                            if (unicastProcessor != 0) {
                                this.f16865q = null;
                                unicastProcessor.onError(b);
                            }
                            subscriber.onError(b);
                            return;
                        } else if (z2) {
                            this.f16866r = j;
                            int addAndGet = addAndGet(-i);
                            i = addAndGet;
                            if (addAndGet == 0) {
                                return;
                            }
                        } else if (poll != f16853t) {
                            unicastProcessor.onNext(poll);
                        } else {
                            if (unicastProcessor != 0) {
                                this.f16865q = null;
                                unicastProcessor.onComplete();
                            }
                            if (!this.f16860l.get()) {
                                if (j != this.f16862n.get()) {
                                    UnicastProcessor<T> G = UnicastProcessor.m3310G(this.f16855g, this);
                                    this.f16865q = G;
                                    this.f16857i.getAndIncrement();
                                    try {
                                        Object call = this.f16861m.call();
                                        ObjectHelper.m4363e(call, "The other Callable returned a null Publisher");
                                        Publisher publisher = (Publisher) call;
                                        WindowBoundaryInnerSubscriber<T, B> windowBoundaryInnerSubscriber = new WindowBoundaryInnerSubscriber<>(this);
                                        if (this.f16856h.compareAndSet(null, windowBoundaryInnerSubscriber)) {
                                            publisher.mo5c(windowBoundaryInnerSubscriber);
                                            j++;
                                            subscriber.onNext(G);
                                        }
                                    } catch (Throwable th) {
                                        Exceptions.m4428b(th);
                                        atomicThrowable.m3456a(th);
                                        this.f16864p = true;
                                    }
                                } else {
                                    this.f16863o.cancel();
                                    m4035a();
                                    atomicThrowable.m3456a(new MissingBackpressureException("Could not deliver a window due to lack of requests"));
                                    this.f16864p = true;
                                }
                            }
                        }
                    } else {
                        mpscLinkedQueue.clear();
                        Throwable b2 = atomicThrowable.m3455b();
                        if (unicastProcessor != 0) {
                            this.f16865q = null;
                            unicastProcessor.onError(b2);
                        }
                        subscriber.onError(b2);
                        return;
                    }
                }
                mpscLinkedQueue.clear();
                this.f16865q = null;
            }
        }

        /* renamed from: c */
        void m4033c() {
            this.f16863o.cancel();
            this.f16864p = true;
            m4034b();
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (this.f16860l.compareAndSet(false, true)) {
                m4035a();
                if (this.f16857i.decrementAndGet() == 0) {
                    this.f16863o.cancel();
                }
            }
        }

        /* renamed from: d */
        void m4032d(Throwable th) {
            this.f16863o.cancel();
            if (this.f16859k.m3456a(th)) {
                this.f16864p = true;
                m4034b();
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        /* renamed from: e */
        void m4031e(WindowBoundaryInnerSubscriber<T, B> windowBoundaryInnerSubscriber) {
            this.f16856h.compareAndSet(windowBoundaryInnerSubscriber, null);
            this.f16858j.offer(f16853t);
            m4034b();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            m4035a();
            this.f16864p = true;
            m4034b();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            m4035a();
            if (this.f16859k.m3456a(th)) {
                this.f16864p = true;
                m4034b();
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.f16858j.offer(t);
            m4034b();
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f16863o, subscription)) {
                this.f16863o = subscription;
                this.f16854f.onSubscribe(this);
                this.f16858j.offer(f16853t);
                m4034b();
                subscription.request(Long.MAX_VALUE);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            BackpressureHelper.m3454a(this.f16862n, j);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f16857i.decrementAndGet() == 0) {
                this.f16863o.cancel();
            }
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super Flowable<T>> subscriber) {
        this.f15411g.m4493v(new WindowBoundaryMainSubscriber(subscriber, this.f16849i, this.f16848h));
    }
}

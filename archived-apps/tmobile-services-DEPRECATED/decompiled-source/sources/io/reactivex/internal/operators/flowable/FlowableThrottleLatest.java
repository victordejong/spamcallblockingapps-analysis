package io.reactivex.internal.operators.flowable;

import io.reactivex.FlowableSubscriber;
import io.reactivex.Scheduler;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableThrottleLatest.class */
public final class FlowableThrottleLatest<T> extends AbstractFlowableWithUpstream<T, T> {

    /* renamed from: h */
    final long f16686h;

    /* renamed from: i */
    final TimeUnit f16687i;

    /* renamed from: j */
    final Scheduler f16688j;

    /* renamed from: k */
    final boolean f16689k;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber.class */
    static final class ThrottleLatestSubscriber<T> extends AtomicInteger implements FlowableSubscriber<T>, Subscription, Runnable {
        private static final long serialVersionUID = -8296689127439125014L;

        /* renamed from: f */
        final Subscriber<? super T> f16690f;

        /* renamed from: g */
        final long f16691g;

        /* renamed from: h */
        final TimeUnit f16692h;

        /* renamed from: i */
        final Scheduler.Worker f16693i;

        /* renamed from: j */
        final boolean f16694j;

        /* renamed from: k */
        final AtomicReference<T> f16695k = new AtomicReference<>();

        /* renamed from: l */
        final AtomicLong f16696l = new AtomicLong();

        /* renamed from: m */
        Subscription f16697m;

        /* renamed from: n */
        volatile boolean f16698n;

        /* renamed from: o */
        Throwable f16699o;

        /* renamed from: p */
        volatile boolean f16700p;

        /* renamed from: q */
        volatile boolean f16701q;

        /* renamed from: r */
        long f16702r;

        /* renamed from: s */
        boolean f16703s;

        ThrottleLatestSubscriber(Subscriber<? super T> subscriber, long j, TimeUnit timeUnit, Scheduler.Worker worker, boolean z) {
            this.f16690f = subscriber;
            this.f16691g = j;
            this.f16692h = timeUnit;
            this.f16693i = worker;
            this.f16694j = z;
        }

        /* renamed from: a */
        void m4054a() {
            if (getAndIncrement() == 0) {
                AtomicReference<T> atomicReference = this.f16695k;
                AtomicLong atomicLong = this.f16696l;
                Subscriber<? super T> subscriber = this.f16690f;
                int i = 1;
                while (!this.f16700p) {
                    boolean z = this.f16698n;
                    if (!z || this.f16699o == null) {
                        boolean z2 = atomicReference.get() == null;
                        if (z) {
                            if (z2 || !this.f16694j) {
                                atomicReference.lazySet(null);
                                subscriber.onComplete();
                            } else {
                                T andSet = atomicReference.getAndSet(null);
                                long j = this.f16702r;
                                if (j != atomicLong.get()) {
                                    this.f16702r = j + 1;
                                    subscriber.onNext(andSet);
                                    subscriber.onComplete();
                                } else {
                                    subscriber.onError(new MissingBackpressureException("Could not emit final value due to lack of requests"));
                                }
                            }
                            this.f16693i.dispose();
                            return;
                        }
                        if (z2) {
                            if (this.f16701q) {
                                this.f16703s = false;
                                this.f16701q = false;
                            }
                        } else if (!this.f16703s || this.f16701q) {
                            T andSet2 = atomicReference.getAndSet(null);
                            long j2 = this.f16702r;
                            if (j2 != atomicLong.get()) {
                                subscriber.onNext(andSet2);
                                this.f16702r = j2 + 1;
                                this.f16701q = false;
                                this.f16703s = true;
                                this.f16693i.mo3228c(this, this.f16691g, this.f16692h);
                            } else {
                                this.f16697m.cancel();
                                subscriber.onError(new MissingBackpressureException("Could not emit value due to lack of requests"));
                                this.f16693i.dispose();
                                return;
                            }
                        }
                        int addAndGet = addAndGet(-i);
                        i = addAndGet;
                        if (addAndGet == 0) {
                            return;
                        }
                    } else {
                        atomicReference.lazySet(null);
                        subscriber.onError(this.f16699o);
                        this.f16693i.dispose();
                        return;
                    }
                }
                atomicReference.lazySet(null);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f16700p = true;
            this.f16697m.cancel();
            this.f16693i.dispose();
            if (getAndIncrement() == 0) {
                this.f16695k.lazySet(null);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f16698n = true;
            m4054a();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f16699o = th;
            this.f16698n = true;
            m4054a();
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.f16695k.set(t);
            m4054a();
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f16697m, subscription)) {
                this.f16697m = subscription;
                this.f16690f.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.m3454a(this.f16696l, j);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f16701q = true;
            m4054a();
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        this.f15411g.m4493v(new ThrottleLatestSubscriber(subscriber, this.f16686h, this.f16687i, this.f16688j.mo3232b(), this.f16689k));
    }
}

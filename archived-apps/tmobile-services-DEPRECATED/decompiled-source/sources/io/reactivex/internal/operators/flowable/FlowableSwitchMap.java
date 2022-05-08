package io.reactivex.internal.operators.flowable;

import io.reactivex.FlowableSubscriber;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.fuseable.QueueSubscription;
import io.reactivex.internal.fuseable.SimpleQueue;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableSwitchMap.class */
public final class FlowableSwitchMap<T, R> extends AbstractFlowableWithUpstream<T, R> {

    /* renamed from: h */
    final Function<? super T, ? extends Publisher<? extends R>> f16602h;

    /* renamed from: i */
    final int f16603i;

    /* renamed from: j */
    final boolean f16604j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapInnerSubscriber.class */
    public static final class SwitchMapInnerSubscriber<T, R> extends AtomicReference<Subscription> implements FlowableSubscriber<R> {
        private static final long serialVersionUID = 3837284832786408377L;

        /* renamed from: f */
        final SwitchMapSubscriber<T, R> f16605f;

        /* renamed from: g */
        final long f16606g;

        /* renamed from: h */
        final int f16607h;

        /* renamed from: i */
        volatile SimpleQueue<R> f16608i;

        /* renamed from: j */
        volatile boolean f16609j;

        /* renamed from: k */
        int f16610k;

        SwitchMapInnerSubscriber(SwitchMapSubscriber<T, R> switchMapSubscriber, long j, int i) {
            this.f16605f = switchMapSubscriber;
            this.f16606g = j;
            this.f16607h = i;
        }

        /* renamed from: a */
        public void m4062a() {
            SubscriptionHelper.cancel(this);
        }

        /* renamed from: b */
        public void m4061b(long j) {
            if (this.f16610k != 1) {
                get().request(j);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            SwitchMapSubscriber<T, R> switchMapSubscriber = this.f16605f;
            if (this.f16606g == switchMapSubscriber.f16622p) {
                this.f16609j = true;
                switchMapSubscriber.m4059b();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            SwitchMapSubscriber<T, R> switchMapSubscriber = this.f16605f;
            if (this.f16606g != switchMapSubscriber.f16622p || !switchMapSubscriber.f16617k.m3456a(th)) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            if (!switchMapSubscriber.f16615i) {
                switchMapSubscriber.f16619m.cancel();
                switchMapSubscriber.f16616j = true;
            }
            this.f16609j = true;
            switchMapSubscriber.m4059b();
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(R r) {
            SwitchMapSubscriber<T, R> switchMapSubscriber = this.f16605f;
            if (this.f16606g != switchMapSubscriber.f16622p) {
                return;
            }
            if (this.f16610k != 0 || this.f16608i.offer(r)) {
                switchMapSubscriber.m4059b();
            } else {
                onError(new MissingBackpressureException("Queue full?!"));
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.setOnce(this, subscription)) {
                if (subscription instanceof QueueSubscription) {
                    QueueSubscription queueSubscription = (QueueSubscription) subscription;
                    int requestFusion = queueSubscription.requestFusion(7);
                    if (requestFusion == 1) {
                        this.f16610k = requestFusion;
                        this.f16608i = queueSubscription;
                        this.f16609j = true;
                        this.f16605f.m4059b();
                        return;
                    } else if (requestFusion == 2) {
                        this.f16610k = requestFusion;
                        this.f16608i = queueSubscription;
                        subscription.request(this.f16607h);
                        return;
                    }
                }
                this.f16608i = new SpscArrayQueue(this.f16607h);
                subscription.request(this.f16607h);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableSwitchMap$SwitchMapSubscriber.class */
    public static final class SwitchMapSubscriber<T, R> extends AtomicInteger implements FlowableSubscriber<T>, Subscription {

        /* renamed from: q */
        static final SwitchMapInnerSubscriber<Object, Object> f16611q;
        private static final long serialVersionUID = -3491074160481096299L;

        /* renamed from: f */
        final Subscriber<? super R> f16612f;

        /* renamed from: g */
        final Function<? super T, ? extends Publisher<? extends R>> f16613g;

        /* renamed from: h */
        final int f16614h;

        /* renamed from: i */
        final boolean f16615i;

        /* renamed from: j */
        volatile boolean f16616j;

        /* renamed from: l */
        volatile boolean f16618l;

        /* renamed from: m */
        Subscription f16619m;

        /* renamed from: p */
        volatile long f16622p;

        /* renamed from: n */
        final AtomicReference<SwitchMapInnerSubscriber<T, R>> f16620n = new AtomicReference<>();

        /* renamed from: o */
        final AtomicLong f16621o = new AtomicLong();

        /* renamed from: k */
        final AtomicThrowable f16617k = new AtomicThrowable();

        static {
            SwitchMapInnerSubscriber<Object, Object> switchMapInnerSubscriber = new SwitchMapInnerSubscriber<>(null, -1L, 1);
            f16611q = switchMapInnerSubscriber;
            switchMapInnerSubscriber.m4062a();
        }

        SwitchMapSubscriber(Subscriber<? super R> subscriber, Function<? super T, ? extends Publisher<? extends R>> function, int i, boolean z) {
            this.f16612f = subscriber;
            this.f16613g = function;
            this.f16614h = i;
            this.f16615i = z;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: a */
        void m4060a() {
            SwitchMapInnerSubscriber<Object, Object> switchMapInnerSubscriber;
            SwitchMapInnerSubscriber<T, R> switchMapInnerSubscriber2 = this.f16620n.get();
            SwitchMapInnerSubscriber<Object, Object> switchMapInnerSubscriber3 = f16611q;
            if (switchMapInnerSubscriber2 != switchMapInnerSubscriber3 && (switchMapInnerSubscriber = (SwitchMapInnerSubscriber) this.f16620n.getAndSet(switchMapInnerSubscriber3)) != f16611q && switchMapInnerSubscriber != null) {
                switchMapInnerSubscriber.m4062a();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:64:0x0167, code lost:
            r15 = true;
         */
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void m4059b() {
            /*
                Method dump skipped, instructions count: 534
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableSwitchMap.SwitchMapSubscriber.m4059b():void");
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (!this.f16618l) {
                this.f16618l = true;
                this.f16619m.cancel();
                m4060a();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.f16616j) {
                this.f16616j = true;
                m4059b();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f16616j || !this.f16617k.m3456a(th)) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            if (!this.f16615i) {
                m4060a();
            }
            this.f16616j = true;
            m4059b();
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            SwitchMapInnerSubscriber<T, R> switchMapInnerSubscriber;
            if (!this.f16616j) {
                long j = this.f16622p + 1;
                this.f16622p = j;
                SwitchMapInnerSubscriber<T, R> switchMapInnerSubscriber2 = this.f16620n.get();
                if (switchMapInnerSubscriber2 != null) {
                    switchMapInnerSubscriber2.m4062a();
                }
                try {
                    Object apply = this.f16613g.apply(t);
                    ObjectHelper.m4363e(apply, "The publisher returned is null");
                    Publisher publisher = (Publisher) apply;
                    SwitchMapInnerSubscriber<T, R> switchMapInnerSubscriber3 = new SwitchMapInnerSubscriber<>(this, j, this.f16614h);
                    do {
                        switchMapInnerSubscriber = this.f16620n.get();
                        if (switchMapInnerSubscriber == f16611q) {
                            return;
                        }
                    } while (!this.f16620n.compareAndSet(switchMapInnerSubscriber, switchMapInnerSubscriber3));
                    publisher.mo5c(switchMapInnerSubscriber3);
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    this.f16619m.cancel();
                    onError(th);
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f16619m, subscription)) {
                this.f16619m = subscription;
                this.f16612f.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.m3454a(this.f16621o, j);
                if (this.f16622p == 0) {
                    this.f16619m.request(Long.MAX_VALUE);
                } else {
                    m4059b();
                }
            }
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super R> subscriber) {
        if (!FlowableScalarXMap.m4076a(this.f15411g, subscriber, this.f16602h)) {
            this.f15411g.m4493v(new SwitchMapSubscriber(subscriber, this.f16602h, this.f16603i, this.f16604j));
        }
    }
}

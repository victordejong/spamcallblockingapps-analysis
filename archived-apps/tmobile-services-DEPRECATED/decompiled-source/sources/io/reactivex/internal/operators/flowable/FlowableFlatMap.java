package io.reactivex.internal.operators.flowable;

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
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableFlatMap.class */
public final class FlowableFlatMap<T, U> extends AbstractFlowableWithUpstream<T, U> {

    /* renamed from: h */
    final Function<? super T, ? extends Publisher<? extends U>> f15859h;

    /* renamed from: i */
    final boolean f15860i;

    /* renamed from: j */
    final int f15861j;

    /* renamed from: k */
    final int f15862k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber.class */
    public static final class InnerSubscriber<T, U> extends AtomicReference<Subscription> implements FlowableSubscriber<U>, Disposable {
        private static final long serialVersionUID = -4606175640614850599L;

        /* renamed from: f */
        final long f15863f;

        /* renamed from: g */
        final MergeSubscriber<T, U> f15864g;

        /* renamed from: h */
        final int f15865h;

        /* renamed from: i */
        final int f15866i;

        /* renamed from: j */
        volatile boolean f15867j;

        /* renamed from: k */
        volatile SimpleQueue<U> f15868k;

        /* renamed from: l */
        long f15869l;

        /* renamed from: m */
        int f15870m;

        InnerSubscriber(MergeSubscriber<T, U> mergeSubscriber, long j) {
            this.f15863f = j;
            this.f15864g = mergeSubscriber;
            int i = mergeSubscriber.f15877j;
            this.f15866i = i;
            this.f15865h = i >> 2;
        }

        /* renamed from: a */
        void m4250a(long j) {
            if (this.f15870m != 1) {
                long j2 = this.f15869l + j;
                if (j2 >= this.f15865h) {
                    this.f15869l = 0L;
                    get().request(j2);
                    return;
                }
                this.f15869l = j2;
            }
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
            this.f15867j = true;
            this.f15864g.m4245e();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            lazySet(SubscriptionHelper.CANCELLED);
            this.f15864g.m4241i(this, th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(U u) {
            if (this.f15870m != 2) {
                this.f15864g.m4239k(u, this);
            } else {
                this.f15864g.m4245e();
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.setOnce(this, subscription)) {
                if (subscription instanceof QueueSubscription) {
                    QueueSubscription queueSubscription = (QueueSubscription) subscription;
                    int requestFusion = queueSubscription.requestFusion(7);
                    if (requestFusion == 1) {
                        this.f15870m = requestFusion;
                        this.f15868k = queueSubscription;
                        this.f15867j = true;
                        this.f15864g.m4245e();
                        return;
                    } else if (requestFusion == 2) {
                        this.f15870m = requestFusion;
                        this.f15868k = queueSubscription;
                    }
                }
                subscription.request(this.f15866i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber.class */
    public static final class MergeSubscriber<T, U> extends AtomicInteger implements FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = -2117620485640801370L;

        /* renamed from: w */
        static final InnerSubscriber<?, ?>[] f15871w = new InnerSubscriber[0];

        /* renamed from: x */
        static final InnerSubscriber<?, ?>[] f15872x = new InnerSubscriber[0];

        /* renamed from: f */
        final Subscriber<? super U> f15873f;

        /* renamed from: g */
        final Function<? super T, ? extends Publisher<? extends U>> f15874g;

        /* renamed from: h */
        final boolean f15875h;

        /* renamed from: i */
        final int f15876i;

        /* renamed from: j */
        final int f15877j;

        /* renamed from: k */
        volatile SimplePlainQueue<U> f15878k;

        /* renamed from: l */
        volatile boolean f15879l;

        /* renamed from: n */
        volatile boolean f15881n;

        /* renamed from: q */
        Subscription f15884q;

        /* renamed from: r */
        long f15885r;

        /* renamed from: s */
        long f15886s;

        /* renamed from: t */
        int f15887t;

        /* renamed from: u */
        int f15888u;

        /* renamed from: v */
        final int f15889v;

        /* renamed from: m */
        final AtomicThrowable f15880m = new AtomicThrowable();

        /* renamed from: o */
        final AtomicReference<InnerSubscriber<?, ?>[]> f15882o = new AtomicReference<>();

        /* renamed from: p */
        final AtomicLong f15883p = new AtomicLong();

        MergeSubscriber(Subscriber<? super U> subscriber, Function<? super T, ? extends Publisher<? extends U>> function, boolean z, int i, int i2) {
            this.f15873f = subscriber;
            this.f15874g = function;
            this.f15875h = z;
            this.f15876i = i;
            this.f15877j = i2;
            this.f15889v = Math.max(1, i >> 1);
            this.f15882o.lazySet(f15871w);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: a */
        boolean m4249a(InnerSubscriber<T, U> innerSubscriber) {
            InnerSubscriber<?, ?>[] innerSubscriberArr;
            InnerSubscriber[] innerSubscriberArr2;
            do {
                innerSubscriberArr = this.f15882o.get();
                if (innerSubscriberArr == f15872x) {
                    innerSubscriber.dispose();
                    return false;
                }
                int length = innerSubscriberArr.length;
                innerSubscriberArr2 = new InnerSubscriber[length + 1];
                System.arraycopy(innerSubscriberArr, 0, innerSubscriberArr2, 0, length);
                innerSubscriberArr2[length] = innerSubscriber;
            } while (!this.f15882o.compareAndSet(innerSubscriberArr, innerSubscriberArr2));
            return true;
        }

        /* renamed from: b */
        boolean m4248b() {
            if (this.f15881n) {
                m4247c();
                return true;
            } else if (this.f15875h || this.f15880m.get() == null) {
                return false;
            } else {
                m4247c();
                Throwable b = this.f15880m.m3455b();
                if (b == ExceptionHelper.f19422a) {
                    return true;
                }
                this.f15873f.onError(b);
                return true;
            }
        }

        /* renamed from: c */
        void m4247c() {
            SimplePlainQueue<U> simplePlainQueue = this.f15878k;
            if (simplePlainQueue != null) {
                simplePlainQueue.clear();
            }
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            SimplePlainQueue<U> simplePlainQueue;
            if (!this.f15881n) {
                this.f15881n = true;
                this.f15884q.cancel();
                m4246d();
                if (getAndIncrement() == 0 && (simplePlainQueue = this.f15878k) != null) {
                    simplePlainQueue.clear();
                }
            }
        }

        /* renamed from: d */
        void m4246d() {
            InnerSubscriber<?, ?>[] andSet;
            InnerSubscriber<?, ?>[] innerSubscriberArr = this.f15882o.get();
            InnerSubscriber<?, ?>[] innerSubscriberArr2 = f15872x;
            if (!(innerSubscriberArr == innerSubscriberArr2 || (andSet = this.f15882o.getAndSet(innerSubscriberArr2)) == f15872x)) {
                for (InnerSubscriber<?, ?> innerSubscriber : andSet) {
                    innerSubscriber.dispose();
                }
                Throwable b = this.f15880m.m3455b();
                if (!(b == null || b == ExceptionHelper.f19422a)) {
                    RxJavaPlugins.m3354t(b);
                }
            }
        }

        /* renamed from: e */
        void m4245e() {
            if (getAndIncrement() == 0) {
                m4244f();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:115:0x02d9, code lost:
            if (r0.isEmpty() != false) goto L_0x02dc;
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x0144, code lost:
            if (r18[r0].f15863f != r0) goto L_0x0147;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v38, types: [org.reactivestreams.Subscription] */
        /* JADX WARN: Type inference failed for: r12v10 */
        /* JADX WARN: Type inference failed for: r12v11 */
        /* JADX WARN: Type inference failed for: r12v7, types: [long] */
        /* JADX WARN: Type inference failed for: r16v26 */
        /* JADX WARN: Type inference failed for: r16v29 */
        /* JADX WARN: Type inference failed for: r9v0, types: [long] */
        /* JADX WARN: Type inference failed for: r9v1, types: [long] */
        /* JADX WARN: Type inference failed for: r9v12, types: [long] */
        /* JADX WARN: Type inference failed for: r9v14 */
        /* JADX WARN: Type inference failed for: r9v2 */
        /* JADX WARN: Type inference failed for: r9v24 */
        /* JADX WARN: Type inference failed for: r9v25 */
        /* JADX WARN: Type inference failed for: r9v28 */
        /* JADX WARN: Type inference failed for: r9v30 */
        /* JADX WARN: Unknown variable types count: 4 */
        /* renamed from: f */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void m4244f() {
            /*
                Method dump skipped, instructions count: 934
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableFlatMap.MergeSubscriber.m4244f():void");
        }

        /* renamed from: g */
        SimpleQueue<U> m4243g(InnerSubscriber<T, U> innerSubscriber) {
            SimpleQueue<U> simpleQueue = innerSubscriber.f15868k;
            SimpleQueue<U> simpleQueue2 = simpleQueue;
            if (simpleQueue == null) {
                simpleQueue2 = new SpscArrayQueue<>(this.f15877j);
                innerSubscriber.f15868k = simpleQueue2;
            }
            return simpleQueue2;
        }

        /* renamed from: h */
        SimpleQueue<U> m4242h() {
            SimplePlainQueue<U> simplePlainQueue = this.f15878k;
            SimplePlainQueue<U> simplePlainQueue2 = simplePlainQueue;
            if (simplePlainQueue == null) {
                simplePlainQueue2 = this.f15876i == Integer.MAX_VALUE ? new SpscLinkedArrayQueue<>(this.f15877j) : new SpscArrayQueue<>(this.f15876i);
                this.f15878k = simplePlainQueue2;
            }
            return simplePlainQueue2;
        }

        /* renamed from: i */
        void m4241i(InnerSubscriber<T, U> innerSubscriber, Throwable th) {
            if (this.f15880m.m3456a(th)) {
                innerSubscriber.f15867j = true;
                if (!this.f15875h) {
                    this.f15884q.cancel();
                    for (InnerSubscriber<?, ?> innerSubscriber2 : this.f15882o.getAndSet(f15872x)) {
                        innerSubscriber2.dispose();
                    }
                }
                m4245e();
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        /* renamed from: j */
        void m4240j(InnerSubscriber<T, U> innerSubscriber) {
            InnerSubscriber<?, ?>[] innerSubscriberArr;
            InnerSubscriber<?, ?>[] innerSubscriberArr2;
            do {
                innerSubscriberArr = this.f15882o.get();
                int length = innerSubscriberArr.length;
                if (length != 0) {
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
                            innerSubscriberArr2 = f15871w;
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
            } while (!this.f15882o.compareAndSet(innerSubscriberArr, innerSubscriberArr2));
        }

        /* renamed from: k */
        void m4239k(U u, InnerSubscriber<T, U> innerSubscriber) {
            if (get() != 0 || !compareAndSet(0, 1)) {
                SimpleQueue<U> simpleQueue = innerSubscriber.f15868k;
                SimpleQueue<U> simpleQueue2 = simpleQueue;
                if (simpleQueue == null) {
                    simpleQueue2 = new SpscArrayQueue<>(this.f15877j);
                    innerSubscriber.f15868k = simpleQueue2;
                }
                if (!simpleQueue2.offer(u)) {
                    onError(new MissingBackpressureException("Inner queue full?!"));
                    return;
                } else if (getAndIncrement() != 0) {
                    return;
                }
            } else {
                long j = this.f15883p.get();
                SimpleQueue<U> simpleQueue3 = innerSubscriber.f15868k;
                if (j == 0 || (simpleQueue3 != null && !simpleQueue3.isEmpty())) {
                    SimpleQueue<U> simpleQueue4 = simpleQueue3;
                    if (simpleQueue3 == null) {
                        simpleQueue4 = m4243g(innerSubscriber);
                    }
                    if (!simpleQueue4.offer(u)) {
                        onError(new MissingBackpressureException("Inner queue full?!"));
                        return;
                    }
                } else {
                    this.f15873f.onNext(u);
                    if (j != Long.MAX_VALUE) {
                        this.f15883p.decrementAndGet();
                    }
                    innerSubscriber.m4250a(1L);
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            }
            m4244f();
        }

        /* renamed from: l */
        void m4238l(U u) {
            if (get() == 0 && compareAndSet(0, 1)) {
                long j = this.f15883p.get();
                SimplePlainQueue<U> simplePlainQueue = this.f15878k;
                if (j == 0 || (simplePlainQueue != null && !simplePlainQueue.isEmpty())) {
                    SimpleQueue<U> simpleQueue = simplePlainQueue;
                    if (simplePlainQueue == null) {
                        simpleQueue = m4242h();
                    }
                    if (!simpleQueue.offer(u)) {
                        onError(new IllegalStateException("Scalar queue full?!"));
                        return;
                    }
                } else {
                    this.f15873f.onNext(u);
                    if (j != Long.MAX_VALUE) {
                        this.f15883p.decrementAndGet();
                    }
                    if (this.f15876i != Integer.MAX_VALUE && !this.f15881n) {
                        int i = this.f15888u + 1;
                        this.f15888u = i;
                        int i2 = this.f15889v;
                        if (i == i2) {
                            this.f15888u = 0;
                            this.f15884q.request(i2);
                        }
                    }
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            } else if (!m4242h().offer(u)) {
                onError(new IllegalStateException("Scalar queue full?!"));
                return;
            } else if (getAndIncrement() != 0) {
                return;
            }
            m4244f();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.f15879l) {
                this.f15879l = true;
                m4245e();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f15879l) {
                RxJavaPlugins.m3354t(th);
            } else if (this.f15880m.m3456a(th)) {
                this.f15879l = true;
                if (!this.f15875h) {
                    for (InnerSubscriber<?, ?> innerSubscriber : this.f15882o.getAndSet(f15872x)) {
                        innerSubscriber.dispose();
                    }
                }
                m4245e();
            } else {
                RxJavaPlugins.m3354t(th);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!this.f15879l) {
                try {
                    Object apply = this.f15874g.apply(t);
                    ObjectHelper.m4363e(apply, "The mapper returned a null Publisher");
                    Publisher publisher = (Publisher) apply;
                    if (publisher instanceof Callable) {
                        try {
                            Object call = ((Callable) publisher).call();
                            if (call != null) {
                                m4238l(call);
                            } else if (this.f15876i != Integer.MAX_VALUE && !this.f15881n) {
                                int i = this.f15888u + 1;
                                this.f15888u = i;
                                int i2 = this.f15889v;
                                if (i == i2) {
                                    this.f15888u = 0;
                                    this.f15884q.request(i2);
                                }
                            }
                        } catch (Throwable th) {
                            Exceptions.m4428b(th);
                            this.f15880m.m3456a(th);
                            m4245e();
                        }
                    } else {
                        long j = this.f15885r;
                        this.f15885r = 1 + j;
                        InnerSubscriber innerSubscriber = new InnerSubscriber(this, j);
                        if (m4249a(innerSubscriber)) {
                            publisher.mo5c(innerSubscriber);
                        }
                    }
                } catch (Throwable th2) {
                    Exceptions.m4428b(th2);
                    this.f15884q.cancel();
                    onError(th2);
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f15884q, subscription)) {
                this.f15884q = subscription;
                this.f15873f.onSubscribe(this);
                if (!this.f15881n) {
                    int i = this.f15876i;
                    if (i == Integer.MAX_VALUE) {
                        subscription.request(Long.MAX_VALUE);
                    } else {
                        subscription.request(i);
                    }
                }
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.m3454a(this.f15883p, j);
                m4245e();
            }
        }
    }

    /* renamed from: C */
    public static <T, U> FlowableSubscriber<T> m4251C(Subscriber<? super U> subscriber, Function<? super T, ? extends Publisher<? extends U>> function, boolean z, int i, int i2) {
        return new MergeSubscriber(subscriber, function, z, i, i2);
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super U> subscriber) {
        if (!FlowableScalarXMap.m4076a(this.f15411g, subscriber, this.f15859h)) {
            this.f15411g.m4493v(m4251C(subscriber, this.f15859h, this.f15860i, this.f15861j, this.f15862k));
        }
    }
}

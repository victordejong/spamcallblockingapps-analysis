package io.reactivex.internal.operators.parallel;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.fuseable.SimplePlainQueue;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.parallel.ParallelFlowable;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelJoin.class */
public final class ParallelJoin<T> extends Flowable<T> {

    /* renamed from: g */
    final ParallelFlowable<? extends T> f18863g;

    /* renamed from: h */
    final int f18864h;

    /* renamed from: i */
    final boolean f18865i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelJoin$JoinInnerSubscriber.class */
    public static final class JoinInnerSubscriber<T> extends AtomicReference<Subscription> implements FlowableSubscriber<T> {
        private static final long serialVersionUID = 8410034718427740355L;

        /* renamed from: f */
        final JoinSubscriptionBase<T> f18866f;

        /* renamed from: g */
        final int f18867g;

        /* renamed from: h */
        final int f18868h;

        /* renamed from: i */
        long f18869i;

        /* renamed from: j */
        volatile SimplePlainQueue<T> f18870j;

        JoinInnerSubscriber(JoinSubscriptionBase<T> joinSubscriptionBase, int i) {
            this.f18866f = joinSubscriptionBase;
            this.f18867g = i;
            this.f18868h = i - (i >> 2);
        }

        /* renamed from: a */
        public boolean m3617a() {
            return SubscriptionHelper.cancel(this);
        }

        /* renamed from: b */
        SimplePlainQueue<T> m3616b() {
            SimplePlainQueue<T> simplePlainQueue = this.f18870j;
            SimplePlainQueue<T> simplePlainQueue2 = simplePlainQueue;
            if (simplePlainQueue == null) {
                simplePlainQueue2 = new SpscArrayQueue<>(this.f18867g);
                this.f18870j = simplePlainQueue2;
            }
            return simplePlainQueue2;
        }

        /* renamed from: c */
        public void m3615c(long j) {
            long j2 = this.f18869i + j;
            if (j2 >= this.f18868h) {
                this.f18869i = 0L;
                get().request(j2);
                return;
            }
            this.f18869i = j2;
        }

        /* renamed from: d */
        public void m3614d() {
            long j = this.f18869i + 1;
            if (j == this.f18868h) {
                this.f18869i = 0L;
                get().request(j);
                return;
            }
            this.f18869i = j;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f18866f.mo3609d();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f18866f.mo3608e(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.f18866f.mo3607f(this, t);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            SubscriptionHelper.setOnce(this, subscription, this.f18867g);
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscription.class */
    static final class JoinSubscription<T> extends JoinSubscriptionBase<T> {
        private static final long serialVersionUID = 6312374661811000451L;

        JoinSubscription(Subscriber<? super T> subscriber, int i, int i2) {
            super(subscriber, i, i2);
        }

        @Override // io.reactivex.internal.operators.parallel.ParallelJoin.JoinSubscriptionBase
        /* renamed from: c */
        void mo3610c() {
            if (getAndIncrement() == 0) {
                m3613g();
            }
        }

        @Override // io.reactivex.internal.operators.parallel.ParallelJoin.JoinSubscriptionBase
        /* renamed from: d */
        public void mo3609d() {
            this.f18876k.decrementAndGet();
            mo3610c();
        }

        @Override // io.reactivex.internal.operators.parallel.ParallelJoin.JoinSubscriptionBase
        /* renamed from: e */
        public void mo3608e(Throwable th) {
            if (this.f18873h.compareAndSet(null, th)) {
                m3612a();
                mo3610c();
            } else if (th != this.f18873h.get()) {
                RxJavaPlugins.m3354t(th);
            }
        }

        @Override // io.reactivex.internal.operators.parallel.ParallelJoin.JoinSubscriptionBase
        /* renamed from: f */
        public void mo3607f(JoinInnerSubscriber<T> joinInnerSubscriber, T t) {
            if (get() == 0 && compareAndSet(0, 1)) {
                if (this.f18874i.get() != 0) {
                    this.f18871f.onNext(t);
                    if (this.f18874i.get() != Long.MAX_VALUE) {
                        this.f18874i.decrementAndGet();
                    }
                    joinInnerSubscriber.m3615c(1L);
                } else if (!joinInnerSubscriber.m3616b().offer(t)) {
                    m3612a();
                    MissingBackpressureException missingBackpressureException = new MissingBackpressureException("Queue full?!");
                    if (this.f18873h.compareAndSet(null, missingBackpressureException)) {
                        this.f18871f.onError(missingBackpressureException);
                        return;
                    } else {
                        RxJavaPlugins.m3354t(missingBackpressureException);
                        return;
                    }
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            } else if (!joinInnerSubscriber.m3616b().offer(t)) {
                m3612a();
                mo3608e(new MissingBackpressureException("Queue full?!"));
                return;
            } else if (getAndIncrement() != 0) {
                return;
            }
            m3613g();
        }

        /* JADX WARN: Code restructure failed: missing block: B:30:0x00db, code lost:
            if (r17 == false) goto L_0x00ea;
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x00e0, code lost:
            if (r19 == false) goto L_0x00ea;
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x00e3, code lost:
            r0.onComplete();
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x00e9, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x00ea, code lost:
            r12 = r14;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r12v0 */
        /* JADX WARN: Type inference failed for: r12v1, types: [long] */
        /* JADX WARN: Type inference failed for: r12v2 */
        /* JADX WARN: Type inference failed for: r14v0 */
        /* JADX WARN: Type inference failed for: r14v1, types: [long] */
        /* JADX WARN: Type inference failed for: r14v2 */
        /* JADX WARN: Type inference failed for: r14v3 */
        /* JADX WARN: Type inference failed for: r14v5, types: [long] */
        /* JADX WARN: Type inference failed for: r14v8 */
        /* JADX WARN: Unknown variable types count: 2 */
        /* renamed from: g */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void m3613g() {
            /*
                Method dump skipped, instructions count: 447
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.parallel.ParallelJoin.JoinSubscription.m3613g():void");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase.class */
    public static abstract class JoinSubscriptionBase<T> extends AtomicInteger implements Subscription {
        private static final long serialVersionUID = 3100232009247827843L;

        /* renamed from: f */
        final Subscriber<? super T> f18871f;

        /* renamed from: g */
        final JoinInnerSubscriber<T>[] f18872g;

        /* renamed from: j */
        volatile boolean f18875j;

        /* renamed from: h */
        final AtomicThrowable f18873h = new AtomicThrowable();

        /* renamed from: i */
        final AtomicLong f18874i = new AtomicLong();

        /* renamed from: k */
        final AtomicInteger f18876k = new AtomicInteger();

        JoinSubscriptionBase(Subscriber<? super T> subscriber, int i, int i2) {
            this.f18871f = subscriber;
            JoinInnerSubscriber<T>[] joinInnerSubscriberArr = new JoinInnerSubscriber[i];
            for (int i3 = 0; i3 < i; i3++) {
                joinInnerSubscriberArr[i3] = new JoinInnerSubscriber<>(this, i2);
            }
            this.f18872g = joinInnerSubscriberArr;
            this.f18876k.lazySet(i);
        }

        /* renamed from: a */
        void m3612a() {
            for (JoinInnerSubscriber<T> joinInnerSubscriber : this.f18872g) {
                joinInnerSubscriber.m3617a();
            }
        }

        /* renamed from: b */
        void m3611b() {
            for (JoinInnerSubscriber<T> joinInnerSubscriber : this.f18872g) {
                joinInnerSubscriber.f18870j = null;
            }
        }

        /* renamed from: c */
        abstract void mo3610c();

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (!this.f18875j) {
                this.f18875j = true;
                m3612a();
                if (getAndIncrement() == 0) {
                    m3611b();
                }
            }
        }

        /* renamed from: d */
        abstract void mo3609d();

        /* renamed from: e */
        abstract void mo3608e(Throwable th);

        /* renamed from: f */
        abstract void mo3607f(JoinInnerSubscriber<T> joinInnerSubscriber, T t);

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.m3454a(this.f18874i, j);
                mo3610c();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionDelayError.class */
    static final class JoinSubscriptionDelayError<T> extends JoinSubscriptionBase<T> {
        private static final long serialVersionUID = -5737965195918321883L;

        JoinSubscriptionDelayError(Subscriber<? super T> subscriber, int i, int i2) {
            super(subscriber, i, i2);
        }

        @Override // io.reactivex.internal.operators.parallel.ParallelJoin.JoinSubscriptionBase
        /* renamed from: c */
        void mo3610c() {
            if (getAndIncrement() == 0) {
                m3606g();
            }
        }

        @Override // io.reactivex.internal.operators.parallel.ParallelJoin.JoinSubscriptionBase
        /* renamed from: d */
        void mo3609d() {
            this.f18876k.decrementAndGet();
            mo3610c();
        }

        @Override // io.reactivex.internal.operators.parallel.ParallelJoin.JoinSubscriptionBase
        /* renamed from: e */
        void mo3608e(Throwable th) {
            this.f18873h.m3456a(th);
            this.f18876k.decrementAndGet();
            mo3610c();
        }

        @Override // io.reactivex.internal.operators.parallel.ParallelJoin.JoinSubscriptionBase
        /* renamed from: f */
        void mo3607f(JoinInnerSubscriber<T> joinInnerSubscriber, T t) {
            if (get() != 0 || !compareAndSet(0, 1)) {
                if (!joinInnerSubscriber.m3616b().offer(t) && joinInnerSubscriber.m3617a()) {
                    this.f18873h.m3456a(new MissingBackpressureException("Queue full?!"));
                    this.f18876k.decrementAndGet();
                }
                if (getAndIncrement() != 0) {
                    return;
                }
            } else {
                if (this.f18874i.get() != 0) {
                    this.f18871f.onNext(t);
                    if (this.f18874i.get() != Long.MAX_VALUE) {
                        this.f18874i.decrementAndGet();
                    }
                    joinInnerSubscriber.m3615c(1L);
                } else if (!joinInnerSubscriber.m3616b().offer(t)) {
                    joinInnerSubscriber.m3617a();
                    this.f18873h.m3456a(new MissingBackpressureException("Queue full?!"));
                    this.f18876k.decrementAndGet();
                    m3606g();
                    return;
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            }
            m3606g();
        }

        /* JADX WARN: Code restructure failed: missing block: B:26:0x00bc, code lost:
            if (r16 == false) goto L_0x00e8;
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x00c1, code lost:
            if (r18 == false) goto L_0x00e8;
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x00ce, code lost:
            if (r5.f18873h.get() == null) goto L_0x00e1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x00d1, code lost:
            r0.onError(r5.f18873h.m3455b());
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x00e1, code lost:
            r0.onComplete();
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x00e7, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x00e8, code lost:
            r12 = r14;
         */
        /* JADX WARN: Code restructure failed: missing block: B:94:?, code lost:
            return;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r12v0 */
        /* JADX WARN: Type inference failed for: r12v1, types: [long] */
        /* JADX WARN: Type inference failed for: r12v2 */
        /* JADX WARN: Type inference failed for: r14v0 */
        /* JADX WARN: Type inference failed for: r14v1, types: [long] */
        /* JADX WARN: Type inference failed for: r14v2 */
        /* JADX WARN: Type inference failed for: r14v3 */
        /* JADX WARN: Type inference failed for: r14v5, types: [long] */
        /* JADX WARN: Type inference failed for: r14v8 */
        /* JADX WARN: Unknown variable types count: 2 */
        /* renamed from: g */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void m3606g() {
            /*
                Method dump skipped, instructions count: 444
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.parallel.ParallelJoin.JoinSubscriptionDelayError.m3606g():void");
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        JoinSubscriptionBase joinSubscriptionDelayError = this.f18865i ? new JoinSubscriptionDelayError(subscriber, this.f18863g.mo3379a(), this.f18864h) : new JoinSubscription(subscriber, this.f18863g.mo3379a(), this.f18864h);
        subscriber.onSubscribe(joinSubscriptionDelayError);
        this.f18863g.mo3378b(joinSubscriptionDelayError.f18872g);
    }
}

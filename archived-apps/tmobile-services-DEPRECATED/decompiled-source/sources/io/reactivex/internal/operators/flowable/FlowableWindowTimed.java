package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.Scheduler;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.fuseable.SimpleQueue;
import io.reactivex.internal.queue.MpscLinkedQueue;
import io.reactivex.internal.subscribers.QueueDrainSubscriber;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.processors.UnicastProcessor;
import io.reactivex.subscribers.SerializedSubscriber;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableWindowTimed.class */
public final class FlowableWindowTimed<T> extends AbstractFlowableWithUpstream<T, Flowable<T>> {

    /* renamed from: h */
    final long f16867h;

    /* renamed from: i */
    final long f16868i;

    /* renamed from: j */
    final TimeUnit f16869j;

    /* renamed from: k */
    final Scheduler f16870k;

    /* renamed from: l */
    final long f16871l;

    /* renamed from: m */
    final int f16872m;

    /* renamed from: n */
    final boolean f16873n;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber.class */
    static final class WindowExactBoundedSubscriber<T> extends QueueDrainSubscriber<T, Object, Flowable<T>> implements Subscription {

        /* renamed from: m */
        final long f16874m;

        /* renamed from: n */
        final TimeUnit f16875n;

        /* renamed from: o */
        final Scheduler f16876o;

        /* renamed from: p */
        final int f16877p;

        /* renamed from: q */
        final boolean f16878q;

        /* renamed from: r */
        final long f16879r;

        /* renamed from: s */
        final Scheduler.Worker f16880s;

        /* renamed from: t */
        long f16881t;

        /* renamed from: u */
        long f16882u;

        /* renamed from: v */
        Subscription f16883v;

        /* renamed from: w */
        UnicastProcessor<T> f16884w;

        /* renamed from: x */
        volatile boolean f16885x;

        /* renamed from: y */
        final SequentialDisposable f16886y = new SequentialDisposable();

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactBoundedSubscriber$ConsumerIndexHolder.class */
        public static final class ConsumerIndexHolder implements Runnable {

            /* renamed from: f */
            final long f16887f;

            /* renamed from: g */
            final WindowExactBoundedSubscriber<?> f16888g;

            ConsumerIndexHolder(long j, WindowExactBoundedSubscriber<?> windowExactBoundedSubscriber) {
                this.f16887f = j;
                this.f16888g = windowExactBoundedSubscriber;
            }

            @Override // java.lang.Runnable
            public void run() {
                WindowExactBoundedSubscriber<?> windowExactBoundedSubscriber = this.f16888g;
                if (!((QueueDrainSubscriber) windowExactBoundedSubscriber).f19386j) {
                    ((QueueDrainSubscriber) windowExactBoundedSubscriber).f19385i.offer(this);
                } else {
                    windowExactBoundedSubscriber.f16885x = true;
                }
                if (windowExactBoundedSubscriber.m3478h()) {
                    windowExactBoundedSubscriber.m4027q();
                }
            }
        }

        WindowExactBoundedSubscriber(Subscriber<? super Flowable<T>> subscriber, long j, TimeUnit timeUnit, Scheduler scheduler, int i, long j2, boolean z) {
            super(subscriber, new MpscLinkedQueue());
            this.f16874m = j;
            this.f16875n = timeUnit;
            this.f16876o = scheduler;
            this.f16877p = i;
            this.f16879r = j2;
            this.f16878q = z;
            if (z) {
                this.f16880s = scheduler.mo3232b();
            } else {
                this.f16880s = null;
            }
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f19386j = true;
        }

        /* renamed from: o */
        public void m4028o() {
            this.f16886y.dispose();
            Scheduler.Worker worker = this.f16880s;
            if (worker != null) {
                worker.dispose();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f19387k = true;
            if (m3478h()) {
                m4027q();
            }
            this.f19384h.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f19388l = th;
            this.f19387k = true;
            if (m3478h()) {
                m4027q();
            }
            this.f19384h.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!this.f16885x) {
                if (m3477i()) {
                    UnicastProcessor<T> unicastProcessor = this.f16884w;
                    unicastProcessor.onNext(t);
                    long j = this.f16881t + 1;
                    if (j >= this.f16879r) {
                        this.f16882u++;
                        this.f16881t = 0L;
                        unicastProcessor.onComplete();
                        long e = mo3408e();
                        if (e != 0) {
                            UnicastProcessor<T> F = UnicastProcessor.m3311F(this.f16877p);
                            this.f16884w = F;
                            this.f19384h.onNext(F);
                            if (e != Long.MAX_VALUE) {
                                mo3406g(1L);
                            }
                            if (this.f16878q) {
                                this.f16886y.get().dispose();
                                Scheduler.Worker worker = this.f16880s;
                                ConsumerIndexHolder consumerIndexHolder = new ConsumerIndexHolder(this.f16882u, this);
                                long j2 = this.f16874m;
                                this.f16886y.m4422a(worker.mo3531d(consumerIndexHolder, j2, j2, this.f16875n));
                            }
                        } else {
                            this.f16884w = null;
                            this.f16883v.cancel();
                            this.f19384h.onError(new MissingBackpressureException("Could not deliver window due to lack of requests"));
                            m4028o();
                            return;
                        }
                    } else {
                        this.f16881t = j;
                    }
                    if (mo3409d(-1) == 0) {
                        return;
                    }
                } else {
                    this.f19385i.offer(NotificationLite.next(t));
                    if (!m3478h()) {
                        return;
                    }
                }
                m4027q();
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            Disposable disposable;
            if (SubscriptionHelper.validate(this.f16883v, subscription)) {
                this.f16883v = subscription;
                Subscriber<? super V> subscriber = this.f19384h;
                subscriber.onSubscribe(this);
                if (!this.f19386j) {
                    UnicastProcessor<T> F = UnicastProcessor.m3311F(this.f16877p);
                    this.f16884w = F;
                    long e = mo3408e();
                    if (e != 0) {
                        subscriber.onNext(F);
                        if (e != Long.MAX_VALUE) {
                            mo3406g(1L);
                        }
                        ConsumerIndexHolder consumerIndexHolder = new ConsumerIndexHolder(this.f16882u, this);
                        if (this.f16878q) {
                            Scheduler.Worker worker = this.f16880s;
                            long j = this.f16874m;
                            disposable = worker.mo3531d(consumerIndexHolder, j, j, this.f16875n);
                        } else {
                            Scheduler scheduler = this.f16876o;
                            long j2 = this.f16874m;
                            disposable = scheduler.mo3501f(consumerIndexHolder, j2, j2, this.f16875n);
                        }
                        if (this.f16886y.m4422a(disposable)) {
                            subscription.request(Long.MAX_VALUE);
                            return;
                        }
                        return;
                    }
                    this.f19386j = true;
                    subscription.cancel();
                    subscriber.onError(new MissingBackpressureException("Could not deliver initial window due to lack of requests."));
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:33:0x00bf, code lost:
            if (r8.f16882u == r0.f16887f) goto L_0x00cb;
         */
        /* renamed from: q */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void m4027q() {
            /*
                Method dump skipped, instructions count: 535
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableWindowTimed.WindowExactBoundedSubscriber.m4027q():void");
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            m3474l(j);
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowExactUnboundedSubscriber.class */
    static final class WindowExactUnboundedSubscriber<T> extends QueueDrainSubscriber<T, Object, Flowable<T>> implements FlowableSubscriber<T>, Subscription, Runnable {

        /* renamed from: u */
        static final Object f16889u = new Object();

        /* renamed from: m */
        final long f16890m;

        /* renamed from: n */
        final TimeUnit f16891n;

        /* renamed from: o */
        final Scheduler f16892o;

        /* renamed from: p */
        final int f16893p;

        /* renamed from: q */
        Subscription f16894q;

        /* renamed from: r */
        UnicastProcessor<T> f16895r;

        /* renamed from: s */
        final SequentialDisposable f16896s = new SequentialDisposable();

        /* renamed from: t */
        volatile boolean f16897t;

        WindowExactUnboundedSubscriber(Subscriber<? super Flowable<T>> subscriber, long j, TimeUnit timeUnit, Scheduler scheduler, int i) {
            super(subscriber, new MpscLinkedQueue());
            this.f16890m = j;
            this.f16891n = timeUnit;
            this.f16892o = scheduler;
            this.f16893p = i;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f19386j = true;
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x004b, code lost:
            if (r0 == null) goto L_0x0057;
         */
        /* JADX WARN: Code restructure failed: missing block: B:11:0x004e, code lost:
            r8.onError(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x0057, code lost:
            r8.onComplete();
         */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x005b, code lost:
            r5.f16896s.dispose();
         */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x0062, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:9:0x0038, code lost:
            r5.f16895r = null;
            r0.clear();
            r0 = r5.f19388l;
         */
        /* renamed from: m */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void m4026m() {
            /*
                Method dump skipped, instructions count: 270
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableWindowTimed.WindowExactUnboundedSubscriber.m4026m():void");
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f19387k = true;
            if (m3478h()) {
                m4026m();
            }
            this.f19384h.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f19388l = th;
            this.f19387k = true;
            if (m3478h()) {
                m4026m();
            }
            this.f19384h.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!this.f16897t) {
                if (m3477i()) {
                    this.f16895r.onNext(t);
                    if (mo3409d(-1) == 0) {
                        return;
                    }
                } else {
                    this.f19385i.offer(NotificationLite.next(t));
                    if (!m3478h()) {
                        return;
                    }
                }
                m4026m();
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f16894q, subscription)) {
                this.f16894q = subscription;
                this.f16895r = UnicastProcessor.m3311F(this.f16893p);
                Subscriber<? super V> subscriber = this.f19384h;
                subscriber.onSubscribe(this);
                long e = mo3408e();
                if (e != 0) {
                    subscriber.onNext(this.f16895r);
                    if (e != Long.MAX_VALUE) {
                        mo3406g(1L);
                    }
                    if (!this.f19386j) {
                        SequentialDisposable sequentialDisposable = this.f16896s;
                        Scheduler scheduler = this.f16892o;
                        long j = this.f16890m;
                        if (sequentialDisposable.m4422a(scheduler.mo3501f(this, j, j, this.f16891n))) {
                            subscription.request(Long.MAX_VALUE);
                            return;
                        }
                        return;
                    }
                    return;
                }
                this.f19386j = true;
                subscription.cancel();
                subscriber.onError(new MissingBackpressureException("Could not deliver first window due to lack of requests."));
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            m3474l(j);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f19386j) {
                this.f16897t = true;
            }
            this.f19385i.offer(f16889u);
            if (m3478h()) {
                m4026m();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber.class */
    static final class WindowSkipSubscriber<T> extends QueueDrainSubscriber<T, Object, Flowable<T>> implements Subscription, Runnable {

        /* renamed from: m */
        final long f16898m;

        /* renamed from: n */
        final long f16899n;

        /* renamed from: o */
        final TimeUnit f16900o;

        /* renamed from: p */
        final Scheduler.Worker f16901p;

        /* renamed from: q */
        final int f16902q;

        /* renamed from: r */
        final List<UnicastProcessor<T>> f16903r = new LinkedList();

        /* renamed from: s */
        Subscription f16904s;

        /* renamed from: t */
        volatile boolean f16905t;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber$Completion.class */
        public final class Completion implements Runnable {

            /* renamed from: f */
            private final UnicastProcessor<T> f16906f;

            Completion(UnicastProcessor<T> unicastProcessor) {
                this.f16906f = unicastProcessor;
            }

            @Override // java.lang.Runnable
            public void run() {
                WindowSkipSubscriber.this.m4025m(this.f16906f);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber$SubjectWork.class */
        public static final class SubjectWork<T> {

            /* renamed from: a */
            final UnicastProcessor<T> f16908a;

            /* renamed from: b */
            final boolean f16909b;

            SubjectWork(UnicastProcessor<T> unicastProcessor, boolean z) {
                this.f16908a = unicastProcessor;
                this.f16909b = z;
            }
        }

        WindowSkipSubscriber(Subscriber<? super Flowable<T>> subscriber, long j, long j2, TimeUnit timeUnit, Scheduler.Worker worker, int i) {
            super(subscriber, new MpscLinkedQueue());
            this.f16898m = j;
            this.f16899n = j2;
            this.f16900o = timeUnit;
            this.f16901p = worker;
            this.f16902q = i;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f19386j = true;
        }

        /* renamed from: m */
        void m4025m(UnicastProcessor<T> unicastProcessor) {
            this.f19385i.offer(new SubjectWork(unicastProcessor, false));
            if (m3478h()) {
                m4024n();
            }
        }

        /* renamed from: n */
        void m4024n() {
            SimpleQueue simpleQueue = this.f19385i;
            Subscriber<? super V> subscriber = this.f19384h;
            List<UnicastProcessor<T>> list = this.f16903r;
            int i = 1;
            while (!this.f16905t) {
                boolean z = this.f19387k;
                T t = (T) simpleQueue.poll();
                boolean z2 = t == null;
                boolean z3 = t instanceof SubjectWork;
                if (z && (z2 || z3)) {
                    simpleQueue.clear();
                    Throwable th = this.f19388l;
                    if (th != null) {
                        for (UnicastProcessor<T> unicastProcessor : list) {
                            unicastProcessor.onError(th);
                        }
                    } else {
                        for (UnicastProcessor<T> unicastProcessor2 : list) {
                            unicastProcessor2.onComplete();
                        }
                    }
                    list.clear();
                    this.f16901p.dispose();
                    return;
                } else if (z2) {
                    int d = mo3409d(-i);
                    i = d;
                    if (d == 0) {
                        return;
                    }
                } else if (z3) {
                    SubjectWork subjectWork = (SubjectWork) t;
                    if (!subjectWork.f16909b) {
                        list.remove(subjectWork.f16908a);
                        subjectWork.f16908a.onComplete();
                        if (list.isEmpty() && this.f19386j) {
                            this.f16905t = true;
                        }
                    } else if (!this.f19386j) {
                        long e = mo3408e();
                        if (e != 0) {
                            UnicastProcessor<T> F = UnicastProcessor.m3311F(this.f16902q);
                            list.add(F);
                            subscriber.onNext(F);
                            if (e != Long.MAX_VALUE) {
                                mo3406g(1L);
                            }
                            this.f16901p.mo3228c(new Completion(F), this.f16898m, this.f16900o);
                        } else {
                            subscriber.onError(new MissingBackpressureException("Can't emit window due to lack of requests"));
                        }
                    }
                } else {
                    for (UnicastProcessor<T> unicastProcessor3 : list) {
                        unicastProcessor3.onNext(t);
                    }
                }
            }
            this.f16904s.cancel();
            simpleQueue.clear();
            list.clear();
            this.f16901p.dispose();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f19387k = true;
            if (m3478h()) {
                m4024n();
            }
            this.f19384h.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f19388l = th;
            this.f19387k = true;
            if (m3478h()) {
                m4024n();
            }
            this.f19384h.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (m3477i()) {
                for (UnicastProcessor<T> unicastProcessor : this.f16903r) {
                    unicastProcessor.onNext(t);
                }
                if (mo3409d(-1) == 0) {
                    return;
                }
            } else {
                this.f19385i.offer(t);
                if (!m3478h()) {
                    return;
                }
            }
            m4024n();
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f16904s, subscription)) {
                this.f16904s = subscription;
                this.f19384h.onSubscribe(this);
                if (!this.f19386j) {
                    long e = mo3408e();
                    if (e != 0) {
                        UnicastProcessor<T> F = UnicastProcessor.m3311F(this.f16902q);
                        this.f16903r.add(F);
                        this.f19384h.onNext(F);
                        if (e != Long.MAX_VALUE) {
                            mo3406g(1L);
                        }
                        this.f16901p.mo3228c(new Completion(F), this.f16898m, this.f16900o);
                        Scheduler.Worker worker = this.f16901p;
                        long j = this.f16899n;
                        worker.mo3531d(this, j, j, this.f16900o);
                        subscription.request(Long.MAX_VALUE);
                        return;
                    }
                    subscription.cancel();
                    this.f19384h.onError(new MissingBackpressureException("Could not emit the first window due to lack of requests"));
                }
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            m3474l(j);
        }

        @Override // java.lang.Runnable
        public void run() {
            SubjectWork subjectWork = new SubjectWork(UnicastProcessor.m3311F(this.f16902q), true);
            if (!this.f19386j) {
                this.f19385i.offer(subjectWork);
            }
            if (m3478h()) {
                m4024n();
            }
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super Flowable<T>> subscriber) {
        SerializedSubscriber serializedSubscriber = new SerializedSubscriber(subscriber);
        long j = this.f16867h;
        long j2 = this.f16868i;
        if (j == j2) {
            long j3 = this.f16871l;
            if (j3 == Long.MAX_VALUE) {
                this.f15411g.m4493v(new WindowExactUnboundedSubscriber(serializedSubscriber, this.f16867h, this.f16869j, this.f16870k, this.f16872m));
            } else {
                this.f15411g.m4493v(new WindowExactBoundedSubscriber(serializedSubscriber, j, this.f16869j, this.f16870k, this.f16872m, j3, this.f16873n));
            }
        } else {
            this.f15411g.m4493v(new WindowSkipSubscriber(serializedSubscriber, j, j2, this.f16869j, this.f16870k.mo3232b(), this.f16872m));
        }
    }
}

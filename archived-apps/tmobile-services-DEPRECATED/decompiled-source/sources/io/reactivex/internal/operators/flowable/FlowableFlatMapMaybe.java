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
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableFlatMapMaybe.class */
public final class FlowableFlatMapMaybe<T, R> extends AbstractFlowableWithUpstream<T, R> {

    /* renamed from: h */
    final Function<? super T, ? extends MaybeSource<? extends R>> f15915h;

    /* renamed from: i */
    final boolean f15916i;

    /* renamed from: j */
    final int f15917j;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber.class */
    static final class FlatMapMaybeSubscriber<T, R> extends AtomicInteger implements FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = 8600231336733376951L;

        /* renamed from: f */
        final Subscriber<? super R> f15918f;

        /* renamed from: g */
        final boolean f15919g;

        /* renamed from: h */
        final int f15920h;

        /* renamed from: m */
        final Function<? super T, ? extends MaybeSource<? extends R>> f15925m;

        /* renamed from: o */
        Subscription f15927o;

        /* renamed from: p */
        volatile boolean f15928p;

        /* renamed from: i */
        final AtomicLong f15921i = new AtomicLong();

        /* renamed from: j */
        final CompositeDisposable f15922j = new CompositeDisposable();

        /* renamed from: l */
        final AtomicThrowable f15924l = new AtomicThrowable();

        /* renamed from: k */
        final AtomicInteger f15923k = new AtomicInteger(1);

        /* renamed from: n */
        final AtomicReference<SpscLinkedArrayQueue<R>> f15926n = new AtomicReference<>();

        /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableFlatMapMaybe$FlatMapMaybeSubscriber$InnerObserver.class */
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
                FlatMapMaybeSubscriber.this.m4229e(this);
            }

            @Override // io.reactivex.MaybeObserver
            public void onError(Throwable th) {
                FlatMapMaybeSubscriber.this.m4228f(this, th);
            }

            @Override // io.reactivex.MaybeObserver
            public void onSubscribe(Disposable disposable) {
                DisposableHelper.setOnce(this, disposable);
            }

            @Override // io.reactivex.MaybeObserver
            public void onSuccess(R r) {
                FlatMapMaybeSubscriber.this.m4227g(this, r);
            }
        }

        FlatMapMaybeSubscriber(Subscriber<? super R> subscriber, Function<? super T, ? extends MaybeSource<? extends R>> function, boolean z, int i) {
            this.f15918f = subscriber;
            this.f15925m = function;
            this.f15919g = z;
            this.f15920h = i;
        }

        /* renamed from: a */
        void m4233a() {
            SpscLinkedArrayQueue<R> spscLinkedArrayQueue = this.f15926n.get();
            if (spscLinkedArrayQueue != null) {
                spscLinkedArrayQueue.clear();
            }
        }

        /* renamed from: b */
        void m4232b() {
            if (getAndIncrement() == 0) {
                m4231c();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:41:0x00e1, code lost:
            if (r0 != 0) goto L_0x0171;
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x00e8, code lost:
            if (r5.f15928p == false) goto L_0x00f0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x00eb, code lost:
            m4233a();
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x00ef, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:47:0x00f4, code lost:
            if (r5.f15919g != false) goto L_0x011a;
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x0101, code lost:
            if (r5.f15924l.get() == null) goto L_0x011a;
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x0104, code lost:
            r0 = r5.f15924l.m3455b();
            m4233a();
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
            r0 = r5.f15924l.m3455b();
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
            io.reactivex.internal.util.BackpressureHelper.m3450e(r5.f15921i, r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:73:0x0188, code lost:
            if (r5.f15920h == Integer.MAX_VALUE) goto L_0x0196;
         */
        /* JADX WARN: Code restructure failed: missing block: B:74:0x018b, code lost:
            r5.f15927o.request(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:75:0x0196, code lost:
            r0 = addAndGet(-r9);
            r9 = r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:88:?, code lost:
            return;
         */
        /* renamed from: c */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void m4231c() {
            /*
                Method dump skipped, instructions count: 425
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableFlatMapMaybe.FlatMapMaybeSubscriber.m4231c():void");
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f15928p = true;
            this.f15927o.cancel();
            this.f15922j.dispose();
        }

        /* renamed from: d */
        SpscLinkedArrayQueue<R> m4230d() {
            SpscLinkedArrayQueue<R> spscLinkedArrayQueue;
            do {
                SpscLinkedArrayQueue<R> spscLinkedArrayQueue2 = this.f15926n.get();
                if (spscLinkedArrayQueue2 != null) {
                    return spscLinkedArrayQueue2;
                }
                spscLinkedArrayQueue = new SpscLinkedArrayQueue<>(Flowable.m4511a());
            } while (!this.f15926n.compareAndSet(null, spscLinkedArrayQueue));
            return spscLinkedArrayQueue;
        }

        /* renamed from: e */
        void m4229e(FlatMapMaybeSubscriber<T, R>.InnerObserver innerObserver) {
            this.f15922j.mo4424c(innerObserver);
            if (get() == 0) {
                boolean z = false;
                if (compareAndSet(0, 1)) {
                    if (this.f15923k.decrementAndGet() == 0) {
                        z = true;
                    }
                    SpscLinkedArrayQueue<R> spscLinkedArrayQueue = this.f15926n.get();
                    if (!z || (spscLinkedArrayQueue != null && !spscLinkedArrayQueue.isEmpty())) {
                        if (this.f15920h != Integer.MAX_VALUE) {
                            this.f15927o.request(1L);
                        }
                        if (decrementAndGet() != 0) {
                            m4231c();
                            return;
                        }
                        return;
                    }
                    Throwable b = this.f15924l.m3455b();
                    if (b != null) {
                        this.f15918f.onError(b);
                        return;
                    } else {
                        this.f15918f.onComplete();
                        return;
                    }
                }
            }
            this.f15923k.decrementAndGet();
            if (this.f15920h != Integer.MAX_VALUE) {
                this.f15927o.request(1L);
            }
            m4232b();
        }

        /* renamed from: f */
        void m4228f(FlatMapMaybeSubscriber<T, R>.InnerObserver innerObserver, Throwable th) {
            this.f15922j.mo4424c(innerObserver);
            if (this.f15924l.m3456a(th)) {
                if (!this.f15919g) {
                    this.f15927o.cancel();
                    this.f15922j.dispose();
                } else if (this.f15920h != Integer.MAX_VALUE) {
                    this.f15927o.request(1L);
                }
                this.f15923k.decrementAndGet();
                m4232b();
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        /* renamed from: g */
        void m4227g(FlatMapMaybeSubscriber<T, R>.InnerObserver innerObserver, R r) {
            this.f15922j.mo4424c(innerObserver);
            if (get() == 0) {
                boolean z = false;
                if (compareAndSet(0, 1)) {
                    if (this.f15923k.decrementAndGet() == 0) {
                        z = true;
                    }
                    if (this.f15921i.get() != 0) {
                        this.f15918f.onNext(r);
                        SpscLinkedArrayQueue<R> spscLinkedArrayQueue = this.f15926n.get();
                        if (!z || (spscLinkedArrayQueue != null && !spscLinkedArrayQueue.isEmpty())) {
                            BackpressureHelper.m3450e(this.f15921i, 1L);
                            if (this.f15920h != Integer.MAX_VALUE) {
                                this.f15927o.request(1L);
                            }
                        } else {
                            Throwable b = this.f15924l.m3455b();
                            if (b != null) {
                                this.f15918f.onError(b);
                                return;
                            } else {
                                this.f15918f.onComplete();
                                return;
                            }
                        }
                    } else {
                        SpscLinkedArrayQueue<R> d = m4230d();
                        synchronized (d) {
                            d.offer(r);
                        }
                    }
                    if (decrementAndGet() == 0) {
                        return;
                    }
                    m4231c();
                }
            }
            SpscLinkedArrayQueue<R> d2 = m4230d();
            synchronized (d2) {
                d2.offer(r);
            }
            this.f15923k.decrementAndGet();
            if (getAndIncrement() != 0) {
                return;
            }
            m4231c();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f15923k.decrementAndGet();
            m4232b();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f15923k.decrementAndGet();
            if (this.f15924l.m3456a(th)) {
                if (!this.f15919g) {
                    this.f15922j.dispose();
                }
                m4232b();
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            try {
                Object apply = this.f15925m.apply(t);
                ObjectHelper.m4363e(apply, "The mapper returned a null MaybeSource");
                MaybeSource maybeSource = (MaybeSource) apply;
                this.f15923k.getAndIncrement();
                InnerObserver innerObserver = new InnerObserver();
                if (!this.f15928p && this.f15922j.mo4425b(innerObserver)) {
                    maybeSource.mo4485b(innerObserver);
                }
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                this.f15927o.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f15927o, subscription)) {
                this.f15927o = subscription;
                this.f15918f.onSubscribe(this);
                int i = this.f15920h;
                if (i == Integer.MAX_VALUE) {
                    subscription.request(Long.MAX_VALUE);
                } else {
                    subscription.request(i);
                }
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.m3454a(this.f15921i, j);
                m4232b();
            }
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super R> subscriber) {
        this.f15411g.m4493v(new FlatMapMaybeSubscriber(subscriber, this.f15915h, this.f15916i, this.f15917j));
    }
}

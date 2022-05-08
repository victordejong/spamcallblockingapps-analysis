package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.fuseable.SimplePlainQueue;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableMergeWithSingle.class */
public final class FlowableMergeWithSingle<T> extends AbstractFlowableWithUpstream<T, T> {

    /* renamed from: h */
    final SingleSource<? extends T> f16182h;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver.class */
    static final class MergeWithObserver<T> extends AtomicInteger implements FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = -4592979584110982903L;

        /* renamed from: f */
        final Subscriber<? super T> f16183f;

        /* renamed from: g */
        final AtomicReference<Subscription> f16184g = new AtomicReference<>();

        /* renamed from: h */
        final OtherObserver<T> f16185h = new OtherObserver<>(this);

        /* renamed from: i */
        final AtomicThrowable f16186i = new AtomicThrowable();

        /* renamed from: j */
        final AtomicLong f16187j = new AtomicLong();

        /* renamed from: k */
        final int f16188k;

        /* renamed from: l */
        final int f16189l;

        /* renamed from: m */
        volatile SimplePlainQueue<T> f16190m;

        /* renamed from: n */
        T f16191n;

        /* renamed from: o */
        volatile boolean f16192o;

        /* renamed from: p */
        volatile boolean f16193p;

        /* renamed from: q */
        volatile int f16194q;

        /* renamed from: r */
        long f16195r;

        /* renamed from: s */
        int f16196s;

        /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver$OtherObserver.class */
        static final class OtherObserver<T> extends AtomicReference<Disposable> implements SingleObserver<T> {
            private static final long serialVersionUID = -2935427570954647017L;

            /* renamed from: f */
            final MergeWithObserver<T> f16197f;

            OtherObserver(MergeWithObserver<T> mergeWithObserver) {
                this.f16197f = mergeWithObserver;
            }

            @Override // io.reactivex.SingleObserver
            public void onError(Throwable th) {
                this.f16197f.m4158d(th);
            }

            @Override // io.reactivex.SingleObserver
            public void onSubscribe(Disposable disposable) {
                DisposableHelper.setOnce(this, disposable);
            }

            @Override // io.reactivex.SingleObserver
            public void onSuccess(T t) {
                this.f16197f.m4157e(t);
            }
        }

        MergeWithObserver(Subscriber<? super T> subscriber) {
            this.f16183f = subscriber;
            int a = Flowable.m4511a();
            this.f16188k = a;
            this.f16189l = a - (a >> 2);
        }

        /* renamed from: a */
        void m4161a() {
            if (getAndIncrement() == 0) {
                m4160b();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:39:0x0115, code lost:
            if (r0 != 0) goto L_0x0191;
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x011c, code lost:
            if (r5.f16192o == false) goto L_0x012a;
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x011f, code lost:
            r5.f16191n = null;
            r5.f16190m = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x0129, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x0131, code lost:
            if (r5.f16186i.get() == null) goto L_0x014c;
         */
        /* JADX WARN: Code restructure failed: missing block: B:46:0x0134, code lost:
            r5.f16191n = null;
            r5.f16190m = null;
            r0.onError(r5.f16186i.m3455b());
         */
        /* JADX WARN: Code restructure failed: missing block: B:47:0x014b, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x014c, code lost:
            r0 = r5.f16193p;
            r0 = r5.f16190m;
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x015a, code lost:
            if (r0 == null) goto L_0x0170;
         */
        /* JADX WARN: Code restructure failed: missing block: B:51:0x0164, code lost:
            if (r0.isEmpty() == false) goto L_0x016a;
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x016a, code lost:
            r18 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:53:0x0170, code lost:
            r18 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:55:0x0175, code lost:
            if (r0 == false) goto L_0x0191;
         */
        /* JADX WARN: Code restructure failed: missing block: B:57:0x017a, code lost:
            if (r18 == false) goto L_0x0191;
         */
        /* JADX WARN: Code restructure failed: missing block: B:59:0x0182, code lost:
            if (r5.f16194q != 2) goto L_0x0191;
         */
        /* JADX WARN: Code restructure failed: missing block: B:60:0x0185, code lost:
            r5.f16190m = null;
            r0.onComplete();
         */
        /* JADX WARN: Code restructure failed: missing block: B:61:0x0190, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:62:0x0191, code lost:
            r5.f16195r = r7;
            r5.f16196s = r9;
            r11 = addAndGet(-r11);
         */
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void m4160b() {
            /*
                Method dump skipped, instructions count: 430
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableMergeWithSingle.MergeWithObserver.m4160b():void");
        }

        /* renamed from: c */
        SimplePlainQueue<T> m4159c() {
            SimplePlainQueue<T> simplePlainQueue = this.f16190m;
            SimplePlainQueue<T> simplePlainQueue2 = simplePlainQueue;
            if (simplePlainQueue == null) {
                simplePlainQueue2 = new SpscArrayQueue<>(Flowable.m4511a());
                this.f16190m = simplePlainQueue2;
            }
            return simplePlainQueue2;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f16192o = true;
            SubscriptionHelper.cancel(this.f16184g);
            DisposableHelper.dispose(this.f16185h);
            if (getAndIncrement() == 0) {
                this.f16190m = null;
                this.f16191n = null;
            }
        }

        /* renamed from: d */
        void m4158d(Throwable th) {
            if (this.f16186i.m3456a(th)) {
                SubscriptionHelper.cancel(this.f16184g);
                m4161a();
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        /* renamed from: e */
        void m4157e(T t) {
            if (compareAndSet(0, 1)) {
                long j = this.f16195r;
                if (this.f16187j.get() != j) {
                    this.f16195r = j + 1;
                    this.f16183f.onNext(t);
                    this.f16194q = 2;
                } else {
                    this.f16191n = t;
                    this.f16194q = 1;
                    if (decrementAndGet() == 0) {
                        return;
                    }
                }
            } else {
                this.f16191n = t;
                this.f16194q = 1;
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            m4160b();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f16193p = true;
            m4161a();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f16186i.m3456a(th)) {
                DisposableHelper.dispose(this.f16185h);
                m4161a();
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (compareAndSet(0, 1)) {
                long j = this.f16195r;
                if (this.f16187j.get() != j) {
                    SimplePlainQueue<T> simplePlainQueue = this.f16190m;
                    if (simplePlainQueue == null || simplePlainQueue.isEmpty()) {
                        this.f16195r = j + 1;
                        this.f16183f.onNext(t);
                        int i = this.f16196s + 1;
                        if (i == this.f16189l) {
                            this.f16196s = 0;
                            this.f16184g.get().request(i);
                        } else {
                            this.f16196s = i;
                        }
                    } else {
                        simplePlainQueue.offer(t);
                    }
                } else {
                    m4159c().offer(t);
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            } else {
                m4159c().offer(t);
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            m4160b();
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            SubscriptionHelper.setOnce(this.f16184g, subscription, this.f16188k);
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            BackpressureHelper.m3454a(this.f16187j, j);
            m4161a();
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        MergeWithObserver mergeWithObserver = new MergeWithObserver(subscriber);
        subscriber.onSubscribe(mergeWithObserver);
        this.f15411g.m4493v(mergeWithObserver);
        this.f16182h.mo4457b(mergeWithObserver.f16185h);
    }
}

package io.reactivex.internal.operators.parallel;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.parallel.ParallelFlowable;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelSortedJoin.class */
public final class ParallelSortedJoin<T> extends Flowable<T> {

    /* renamed from: g */
    final ParallelFlowable<List<T>> f18952g;

    /* renamed from: h */
    final Comparator<? super T> f18953h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinInnerSubscriber.class */
    public static final class SortedJoinInnerSubscriber<T> extends AtomicReference<Subscription> implements FlowableSubscriber<List<T>> {
        private static final long serialVersionUID = 6751017204873808094L;

        /* renamed from: f */
        final SortedJoinSubscription<T> f18954f;

        /* renamed from: g */
        final int f18955g;

        SortedJoinInnerSubscriber(SortedJoinSubscription<T> sortedJoinSubscription, int i) {
            this.f18954f = sortedJoinSubscription;
            this.f18955g = i;
        }

        /* renamed from: a */
        void m3595a() {
            SubscriptionHelper.cancel(this);
        }

        /* renamed from: b */
        public void onNext(List<T> list) {
            this.f18954f.m3590d(list, this.f18955g);
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f18954f.m3591c(th);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            SubscriptionHelper.setOnce(this, subscription, Long.MAX_VALUE);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription.class */
    public static final class SortedJoinSubscription<T> extends AtomicInteger implements Subscription {
        private static final long serialVersionUID = 3481980673745556697L;

        /* renamed from: f */
        final Subscriber<? super T> f18956f;

        /* renamed from: g */
        final SortedJoinInnerSubscriber<T>[] f18957g;

        /* renamed from: h */
        final List<T>[] f18958h;

        /* renamed from: i */
        final int[] f18959i;

        /* renamed from: j */
        final Comparator<? super T> f18960j;

        /* renamed from: l */
        volatile boolean f18962l;

        /* renamed from: k */
        final AtomicLong f18961k = new AtomicLong();

        /* renamed from: m */
        final AtomicInteger f18963m = new AtomicInteger();

        /* renamed from: n */
        final AtomicReference<Throwable> f18964n = new AtomicReference<>();

        SortedJoinSubscription(Subscriber<? super T> subscriber, int i, Comparator<? super T> comparator) {
            this.f18956f = subscriber;
            this.f18960j = comparator;
            SortedJoinInnerSubscriber<T>[] sortedJoinInnerSubscriberArr = new SortedJoinInnerSubscriber[i];
            for (int i2 = 0; i2 < i; i2++) {
                sortedJoinInnerSubscriberArr[i2] = new SortedJoinInnerSubscriber<>(this, i2);
            }
            this.f18957g = sortedJoinInnerSubscriberArr;
            this.f18958h = new List[i];
            this.f18959i = new int[i];
            this.f18963m.lazySet(i);
        }

        /* renamed from: a */
        void m3593a() {
            for (SortedJoinInnerSubscriber<T> sortedJoinInnerSubscriber : this.f18957g) {
                sortedJoinInnerSubscriber.m3595a();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:47:0x015c, code lost:
            if (r0 != 0) goto L_0x01c9;
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x0163, code lost:
            if (r5.f18962l == false) goto L_0x016c;
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x0166, code lost:
            java.util.Arrays.fill(r0, (java.lang.Object) null);
         */
        /* JADX WARN: Code restructure failed: missing block: B:51:0x016b, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x016c, code lost:
            r0 = r5.f18964n.get();
         */
        /* JADX WARN: Code restructure failed: missing block: B:53:0x017a, code lost:
            if (r0 == null) goto L_0x018f;
         */
        /* JADX WARN: Code restructure failed: missing block: B:54:0x017d, code lost:
            m3593a();
            java.util.Arrays.fill(r0, (java.lang.Object) null);
            r0.onError(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:55:0x018e, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:0x018f, code lost:
            r15 = 0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x0196, code lost:
            if (r15 >= r0) goto L_0x01b5;
         */
        /* JADX WARN: Code restructure failed: missing block: B:60:0x01a6, code lost:
            if (r0[r15] == r0[r15].size()) goto L_0x01af;
         */
        /* JADX WARN: Code restructure failed: missing block: B:61:0x01a9, code lost:
            r15 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:62:0x01af, code lost:
            r15 = r15 + 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:63:0x01b5, code lost:
            r15 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:65:0x01ba, code lost:
            if (r15 == false) goto L_0x01c9;
         */
        /* JADX WARN: Code restructure failed: missing block: B:66:0x01bd, code lost:
            java.util.Arrays.fill(r0, (java.lang.Object) null);
            r0.onComplete();
         */
        /* JADX WARN: Code restructure failed: missing block: B:67:0x01c8, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:69:0x01cd, code lost:
            if (r0 == 0) goto L_0x01e4;
         */
        /* JADX WARN: Code restructure failed: missing block: B:71:0x01d6, code lost:
            if (r0 == Long.MAX_VALUE) goto L_0x01e4;
         */
        /* JADX WARN: Code restructure failed: missing block: B:72:0x01d9, code lost:
            r5.f18961k.addAndGet(-r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:73:0x01e4, code lost:
            r0 = get();
            r15 = r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:74:0x01f2, code lost:
            if (r0 != r0) goto L_0x0208;
         */
        /* JADX WARN: Code restructure failed: missing block: B:75:0x01f5, code lost:
            r0 = addAndGet(-r0);
            r15 = r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:76:0x0204, code lost:
            if (r0 != 0) goto L_0x0208;
         */
        /* JADX WARN: Code restructure failed: missing block: B:77:0x0207, code lost:
            return;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void m3592b() {
            /*
                Method dump skipped, instructions count: 527
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.parallel.ParallelSortedJoin.SortedJoinSubscription.m3592b():void");
        }

        /* renamed from: c */
        void m3591c(Throwable th) {
            if (this.f18964n.compareAndSet(null, th)) {
                m3592b();
            } else if (th != this.f18964n.get()) {
                RxJavaPlugins.m3354t(th);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (!this.f18962l) {
                this.f18962l = true;
                m3593a();
                if (getAndIncrement() == 0) {
                    Arrays.fill(this.f18958h, (Object) null);
                }
            }
        }

        /* renamed from: d */
        void m3590d(List<T> list, int i) {
            this.f18958h[i] = list;
            if (this.f18963m.decrementAndGet() == 0) {
                m3592b();
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.m3454a(this.f18961k, j);
                if (this.f18963m.get() == 0) {
                    m3592b();
                }
            }
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        SortedJoinSubscription sortedJoinSubscription = new SortedJoinSubscription(subscriber, this.f18952g.mo3379a(), this.f18953h);
        subscriber.onSubscribe(sortedJoinSubscription);
        this.f18952g.mo3378b(sortedJoinSubscription.f18957g);
    }
}

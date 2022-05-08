package io.reactivex.internal.operators.flowable;

import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import java.util.ArrayDeque;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableTakeLast.class */
public final class FlowableTakeLast<T> extends AbstractFlowableWithUpstream<T, T> {

    /* renamed from: h */
    final int f16629h;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableTakeLast$TakeLastSubscriber.class */
    static final class TakeLastSubscriber<T> extends ArrayDeque<T> implements FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = 7240042530241604978L;

        /* renamed from: f */
        final Subscriber<? super T> f16630f;

        /* renamed from: g */
        final int f16631g;

        /* renamed from: h */
        Subscription f16632h;

        /* renamed from: i */
        volatile boolean f16633i;

        /* renamed from: j */
        volatile boolean f16634j;

        /* renamed from: k */
        final AtomicLong f16635k = new AtomicLong();

        /* renamed from: l */
        final AtomicInteger f16636l = new AtomicInteger();

        TakeLastSubscriber(Subscriber<? super T> subscriber, int i) {
            this.f16630f = subscriber;
            this.f16631g = i;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r7v1, types: [long] */
        /* JADX WARN: Type inference failed for: r7v2 */
        /* JADX WARN: Type inference failed for: r7v3 */
        /* JADX WARN: Type inference failed for: r7v4 */
        /* JADX WARN: Type inference failed for: r9v0 */
        /* JADX WARN: Type inference failed for: r9v2 */
        /* JADX WARN: Type inference failed for: r9v3 */
        /* JADX WARN: Type inference failed for: r9v5 */
        /* JADX WARN: Unknown variable types count: 2 */
        /* renamed from: c */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void m4058c() {
            /*
                r5 = this;
                r0 = r5
                java.util.concurrent.atomic.AtomicInteger r0 = r0.f16636l
                int r0 = r0.getAndIncrement()
                if (r0 != 0) goto L_0x008c
                r0 = r5
                org.reactivestreams.Subscriber<? super T> r0 = r0.f16630f
                r6 = r0
                r0 = r5
                java.util.concurrent.atomic.AtomicLong r0 = r0.f16635k
                long r0 = r0.get()
                r7 = r0
            L_0x0017:
                r0 = r5
                boolean r0 = r0.f16634j
                if (r0 == 0) goto L_0x001f
                return
            L_0x001f:
                r0 = r7
                r9 = r0
                r0 = r5
                boolean r0 = r0.f16633i
                if (r0 == 0) goto L_0x007f
                r0 = 0
                r11 = r0
            L_0x002c:
                r0 = r11
                r1 = r7
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 == 0) goto L_0x005e
                r0 = r5
                boolean r0 = r0.f16634j
                if (r0 == 0) goto L_0x003b
                return
            L_0x003b:
                r0 = r5
                java.lang.Object r0 = r0.poll()
                r13 = r0
                r0 = r13
                if (r0 != 0) goto L_0x004d
                r0 = r6
                r0.onComplete()
                return
            L_0x004d:
                r0 = r6
                r1 = r13
                r0.onNext(r1)
                r0 = r11
                r1 = 1
                long r0 = r0 + r1
                r11 = r0
                goto L_0x002c
            L_0x005e:
                r0 = r7
                r9 = r0
                r0 = r11
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 == 0) goto L_0x007f
                r0 = r7
                r9 = r0
                r0 = r7
                r1 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 == 0) goto L_0x007f
                r0 = r5
                java.util.concurrent.atomic.AtomicLong r0 = r0.f16635k
                r1 = r11
                long r1 = -r1
                long r0 = r0.addAndGet(r1)
                r9 = r0
            L_0x007f:
                r0 = r9
                r7 = r0
                r0 = r5
                java.util.concurrent.atomic.AtomicInteger r0 = r0.f16636l
                int r0 = r0.decrementAndGet()
                if (r0 != 0) goto L_0x0017
            L_0x008c:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableTakeLast.TakeLastSubscriber.m4058c():void");
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f16634j = true;
            this.f16632h.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f16633i = true;
            m4058c();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f16630f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.f16631g == size()) {
                poll();
            }
            offer(t);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f16632h, subscription)) {
                this.f16632h = subscription;
                this.f16630f.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.m3454a(this.f16635k, j);
                m4058c();
            }
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        this.f15411g.m4493v(new TakeLastSubscriber(subscriber, this.f16629h));
    }
}

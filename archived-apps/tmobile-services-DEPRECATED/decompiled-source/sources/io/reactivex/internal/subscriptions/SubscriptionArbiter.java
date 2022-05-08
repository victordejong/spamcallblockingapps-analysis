package io.reactivex.internal.subscriptions;

import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.util.BackpressureHelper;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/subscriptions/SubscriptionArbiter.class */
public class SubscriptionArbiter extends AtomicInteger implements Subscription {
    private static final long serialVersionUID = -2189523197179400958L;

    /* renamed from: f */
    Subscription f19409f;

    /* renamed from: g */
    long f19410g;

    /* renamed from: h */
    final AtomicReference<Subscription> f19411h = new AtomicReference<>();

    /* renamed from: i */
    final AtomicLong f19412i = new AtomicLong();

    /* renamed from: j */
    final AtomicLong f19413j = new AtomicLong();

    /* renamed from: k */
    final boolean f19414k;

    /* renamed from: l */
    volatile boolean f19415l;

    /* renamed from: m */
    protected boolean f19416m;

    public SubscriptionArbiter(boolean z) {
        this.f19414k = z;
    }

    /* renamed from: c */
    final void m3467c() {
        if (getAndIncrement() == 0) {
            m3466d();
        }
    }

    public void cancel() {
        if (!this.f19415l) {
            this.f19415l = true;
            m3467c();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v35, types: [long] */
    /* JADX WARN: Type inference failed for: r0v63, types: [long] */
    /* JADX WARN: Type inference failed for: r0v70, types: [long] */
    /* JADX WARN: Type inference failed for: r12v10, types: [long] */
    /* JADX WARN: Type inference failed for: r12v11 */
    /* JADX WARN: Type inference failed for: r12v12 */
    /* JADX WARN: Type inference failed for: r12v13 */
    /* JADX WARN: Type inference failed for: r12v14 */
    /* JADX WARN: Type inference failed for: r12v15 */
    /* JADX WARN: Type inference failed for: r12v16 */
    /* JADX WARN: Type inference failed for: r12v2, types: [long] */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r12v7 */
    /* JADX WARN: Type inference failed for: r12v9 */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1, types: [long] */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1, types: [long] */
    /* JADX WARN: Type inference failed for: r16v4 */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Unknown variable types count: 10 */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final void m3466d() {
        /*
            Method dump skipped, instructions count: 367
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.subscriptions.SubscriptionArbiter.m3466d():void");
    }

    /* renamed from: e */
    public final boolean m3465e() {
        return this.f19415l;
    }

    /* renamed from: f */
    public final boolean m3464f() {
        return this.f19416m;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m3463g(long r6) {
        /*
            r5 = this;
            r0 = r5
            boolean r0 = r0.f19416m
            if (r0 == 0) goto L_0x0008
            return
        L_0x0008:
            r0 = r5
            int r0 = r0.get()
            if (r0 != 0) goto L_0x0049
            r0 = r5
            r1 = 0
            r2 = 1
            boolean r0 = r0.compareAndSet(r1, r2)
            if (r0 == 0) goto L_0x0049
            r0 = r5
            long r0 = r0.f19410g
            r8 = r0
            r0 = r8
            r1 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x003c
            r0 = r8
            r1 = r6
            long r0 = r0 - r1
            r8 = r0
            r0 = r8
            r6 = r0
            r0 = r8
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0037
            r0 = r8
            io.reactivex.internal.subscriptions.SubscriptionHelper.reportMoreProduced(r0)
            r0 = 0
            r6 = r0
        L_0x0037:
            r0 = r5
            r1 = r6
            r0.f19410g = r1
        L_0x003c:
            r0 = r5
            int r0 = r0.decrementAndGet()
            if (r0 != 0) goto L_0x0044
            return
        L_0x0044:
            r0 = r5
            r0.m3466d()
            return
        L_0x0049:
            r0 = r5
            java.util.concurrent.atomic.AtomicLong r0 = r0.f19413j
            r1 = r6
            long r0 = io.reactivex.internal.util.BackpressureHelper.m3454a(r0, r1)
            r0 = r5
            r0.m3467c()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.subscriptions.SubscriptionArbiter.m3463g(long):void");
    }

    /* renamed from: h */
    public final void m3462h(Subscription subscription) {
        if (this.f19415l) {
            subscription.cancel();
            return;
        }
        ObjectHelper.m4363e(subscription, "s is null");
        if (get() != 0 || !compareAndSet(0, 1)) {
            Subscription andSet = this.f19411h.getAndSet(subscription);
            if (andSet != null && this.f19414k) {
                andSet.cancel();
            }
            m3467c();
            return;
        }
        Subscription subscription2 = this.f19409f;
        if (subscription2 != null && this.f19414k) {
            subscription2.cancel();
        }
        this.f19409f = subscription;
        long j = this.f19410g;
        if (decrementAndGet() != 0) {
            m3466d();
        }
        if (j != 0) {
            subscription.request(j);
        }
    }

    @Override // org.reactivestreams.Subscription
    public final void request(long j) {
        if (SubscriptionHelper.validate(j) && !this.f19416m) {
            if (get() != 0 || !compareAndSet(0, 1)) {
                BackpressureHelper.m3454a(this.f19412i, j);
                m3467c();
                return;
            }
            long j2 = this.f19410g;
            if (j2 != Long.MAX_VALUE) {
                long c = BackpressureHelper.m3452c(j2, j);
                this.f19410g = c;
                if (c == Long.MAX_VALUE) {
                    this.f19416m = true;
                }
            }
            Subscription subscription = this.f19409f;
            if (decrementAndGet() != 0) {
                m3466d();
            }
            if (subscription != null) {
                subscription.request(j);
            }
        }
    }
}

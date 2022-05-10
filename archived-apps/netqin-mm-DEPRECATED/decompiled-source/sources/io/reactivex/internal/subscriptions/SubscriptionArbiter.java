package io.reactivex.internal.subscriptions;

import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p543b0.p557i.C9800b;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/subscriptions/SubscriptionArbiter.class */
public class SubscriptionArbiter extends AtomicInteger implements AbstractC10434d {
    public static final long serialVersionUID = -2189523197179400958L;
    public AbstractC10434d actual;
    public volatile boolean cancelled;
    public long requested;
    public boolean unbounded;
    public final AtomicReference<AbstractC10434d> missedSubscription = new AtomicReference<>();
    public final AtomicLong missedRequested = new AtomicLong();
    public final AtomicLong missedProduced = new AtomicLong();

    public void cancel() {
        if (!this.cancelled) {
            this.cancelled = true;
            drain();
        }
    }

    public final void drain() {
        if (getAndIncrement() == 0) {
            drainLoop();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v35, types: [long] */
    /* JADX WARN: Type inference failed for: r0v61, types: [long] */
    /* JADX WARN: Type inference failed for: r0v68, types: [long] */
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
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void drainLoop() {
        /*
            Method dump skipped, instructions count: 360
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.subscriptions.SubscriptionArbiter.drainLoop():void");
    }

    public final boolean isCancelled() {
        return this.cancelled;
    }

    public final boolean isUnbounded() {
        return this.unbounded;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void produced(long r6) {
        /*
            r5 = this;
            r0 = r5
            boolean r0 = r0.unbounded
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
            long r0 = r0.requested
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
            r0.requested = r1
        L_0x003c:
            r0 = r5
            int r0 = r0.decrementAndGet()
            if (r0 != 0) goto L_0x0044
            return
        L_0x0044:
            r0 = r5
            r0.drainLoop()
            return
        L_0x0049:
            r0 = r5
            java.util.concurrent.atomic.AtomicLong r0 = r0.missedProduced
            r1 = r6
            long r0 = p530d.p541c.p543b0.p557i.C9800b.m2012a(r0, r1)
            r0 = r5
            r0.drain()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.subscriptions.SubscriptionArbiter.produced(long):void");
    }

    @Override // p611j.p612a.AbstractC10434d
    public final void request(long j) {
        if (SubscriptionHelper.validate(j) && !this.unbounded) {
            if (get() != 0 || !compareAndSet(0, 1)) {
                C9800b.m2012a(this.missedRequested, j);
                drain();
                return;
            }
            long j2 = this.requested;
            if (j2 != Long.MAX_VALUE) {
                long a = C9800b.m2013a(j2, j);
                this.requested = a;
                if (a == Long.MAX_VALUE) {
                    this.unbounded = true;
                }
            }
            AbstractC10434d dVar = this.actual;
            if (decrementAndGet() != 0) {
                drainLoop();
            }
            if (dVar != null) {
                dVar.request(j);
            }
        }
    }

    public final void setSubscription(AbstractC10434d dVar) {
        if (this.cancelled) {
            dVar.cancel();
            return;
        }
        C9650a.m2095a(dVar, "s is null");
        if (get() != 0 || !compareAndSet(0, 1)) {
            AbstractC10434d andSet = this.missedSubscription.getAndSet(dVar);
            if (andSet != null) {
                andSet.cancel();
            }
            drain();
            return;
        }
        AbstractC10434d dVar2 = this.actual;
        if (dVar2 != null) {
            dVar2.cancel();
        }
        this.actual = dVar;
        long j = this.requested;
        if (decrementAndGet() != 0) {
            drainLoop();
        }
        if (j != 0) {
            dVar.request(j);
        }
    }
}

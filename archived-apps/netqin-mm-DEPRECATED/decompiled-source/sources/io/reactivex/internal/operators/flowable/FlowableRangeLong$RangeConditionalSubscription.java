package io.reactivex.internal.operators.flowable;

import p530d.p541c.p543b0.p546c.AbstractC9652a;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableRangeLong$RangeConditionalSubscription.class */
public final class FlowableRangeLong$RangeConditionalSubscription extends FlowableRangeLong$BaseRangeSubscription {
    public static final long serialVersionUID = 2587302975077663557L;
    public final AbstractC9652a<? super Long> actual;

    public FlowableRangeLong$RangeConditionalSubscription(AbstractC9652a<? super Long> aVar, long j, long j2) {
        super(j, j2);
        this.actual = aVar;
    }

    @Override // io.reactivex.internal.operators.flowable.FlowableRangeLong$BaseRangeSubscription
    public void fastPath() {
        long j = this.end;
        AbstractC9652a<? super Long> aVar = this.actual;
        for (long j2 = this.index; j2 != j; j2++) {
            if (!this.cancelled) {
                aVar.tryOnNext(Long.valueOf(j2));
            } else {
                return;
            }
        }
        if (!this.cancelled) {
            aVar.onComplete();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1, types: [long] */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v4 */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v9 */
    /* JADX WARN: Unknown variable types count: 4 */
    @Override // io.reactivex.internal.operators.flowable.FlowableRangeLong$BaseRangeSubscription
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void slowPath(long r6) {
        /*
            r5 = this;
            r0 = r5
            long r0 = r0.end
            r8 = r0
            r0 = r5
            long r0 = r0.index
            r10 = r0
            r0 = r5
            d.c.b0.c.a<? super java.lang.Long> r0 = r0.actual
            r12 = r0
        L_0x0011:
            r0 = 0
            r13 = r0
        L_0x0014:
            r0 = r13
            r1 = r6
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0050
            r0 = r10
            r1 = r8
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0050
            r0 = r5
            boolean r0 = r0.cancelled
            if (r0 == 0) goto L_0x002a
            return
        L_0x002a:
            r0 = r13
            r15 = r0
            r0 = r12
            r1 = r10
            java.lang.Long r1 = java.lang.Long.valueOf(r1)
            boolean r0 = r0.tryOnNext(r1)
            if (r0 == 0) goto L_0x0043
            r0 = r13
            r1 = 1
            long r0 = r0 + r1
            r15 = r0
        L_0x0043:
            r0 = r10
            r1 = 1
            long r0 = r0 + r1
            r10 = r0
            r0 = r15
            r13 = r0
            goto L_0x0014
        L_0x0050:
            r0 = r10
            r1 = r8
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0066
            r0 = r5
            boolean r0 = r0.cancelled
            if (r0 != 0) goto L_0x0065
            r0 = r12
            r0.onComplete()
        L_0x0065:
            return
        L_0x0066:
            r0 = r5
            long r0 = r0.get()
            r15 = r0
            r0 = r15
            r6 = r0
            r0 = r13
            r1 = r15
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0014
            r0 = r5
            r1 = r10
            r0.index = r1
            r0 = r5
            r1 = r13
            long r1 = -r1
            long r0 = r0.addAndGet(r1)
            r13 = r0
            r0 = r13
            r6 = r0
            r0 = r13
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0011
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableRangeLong$RangeConditionalSubscription.slowPath(long):void");
    }
}

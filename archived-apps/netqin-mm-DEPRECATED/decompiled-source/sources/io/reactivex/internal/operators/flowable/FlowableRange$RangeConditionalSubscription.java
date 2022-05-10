package io.reactivex.internal.operators.flowable;

import p530d.p541c.p543b0.p546c.AbstractC9652a;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableRange$RangeConditionalSubscription.class */
public final class FlowableRange$RangeConditionalSubscription extends FlowableRange$BaseRangeSubscription {
    public static final long serialVersionUID = 2587302975077663557L;
    public final AbstractC9652a<? super Integer> actual;

    public FlowableRange$RangeConditionalSubscription(AbstractC9652a<? super Integer> aVar, int i, int i2) {
        super(i, i2);
        this.actual = aVar;
    }

    @Override // io.reactivex.internal.operators.flowable.FlowableRange$BaseRangeSubscription
    public void fastPath() {
        int i = this.end;
        AbstractC9652a<? super Integer> aVar = this.actual;
        for (int i2 = this.index; i2 != i; i2++) {
            if (!this.cancelled) {
                aVar.tryOnNext(Integer.valueOf(i2));
            } else {
                return;
            }
        }
        if (!this.cancelled) {
            aVar.onComplete();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1, types: [long] */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v9 */
    /* JADX WARN: Unknown variable types count: 4 */
    @Override // io.reactivex.internal.operators.flowable.FlowableRange$BaseRangeSubscription
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void slowPath(long r6) {
        /*
            r5 = this;
            r0 = r5
            int r0 = r0.end
            r8 = r0
            r0 = r5
            int r0 = r0.index
            r9 = r0
            r0 = r5
            d.c.b0.c.a<? super java.lang.Integer> r0 = r0.actual
            r10 = r0
        L_0x0011:
            r0 = 0
            r11 = r0
        L_0x0014:
            r0 = r11
            r1 = r6
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x004c
            r0 = r9
            r1 = r8
            if (r0 == r1) goto L_0x004c
            r0 = r5
            boolean r0 = r0.cancelled
            if (r0 == 0) goto L_0x0029
            return
        L_0x0029:
            r0 = r11
            r13 = r0
            r0 = r10
            r1 = r9
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            boolean r0 = r0.tryOnNext(r1)
            if (r0 == 0) goto L_0x0042
            r0 = r11
            r1 = 1
            long r0 = r0 + r1
            r13 = r0
        L_0x0042:
            int r9 = r9 + 1
            r0 = r13
            r11 = r0
            goto L_0x0014
        L_0x004c:
            r0 = r9
            r1 = r8
            if (r0 != r1) goto L_0x0061
            r0 = r5
            boolean r0 = r0.cancelled
            if (r0 != 0) goto L_0x0060
            r0 = r10
            r0.onComplete()
        L_0x0060:
            return
        L_0x0061:
            r0 = r5
            long r0 = r0.get()
            r13 = r0
            r0 = r13
            r6 = r0
            r0 = r11
            r1 = r13
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0014
            r0 = r5
            r1 = r9
            r0.index = r1
            r0 = r5
            r1 = r11
            long r1 = -r1
            long r0 = r0.addAndGet(r1)
            r11 = r0
            r0 = r11
            r6 = r0
            r0 = r11
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0011
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableRange$RangeConditionalSubscription.slowPath(long):void");
    }
}

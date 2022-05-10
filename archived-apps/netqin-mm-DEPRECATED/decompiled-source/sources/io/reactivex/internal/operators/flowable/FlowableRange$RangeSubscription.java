package io.reactivex.internal.operators.flowable;

import p611j.p612a.AbstractC10433c;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableRange$RangeSubscription.class */
public final class FlowableRange$RangeSubscription extends FlowableRange$BaseRangeSubscription {
    public static final long serialVersionUID = 2587302975077663557L;
    public final AbstractC10433c<? super Integer> actual;

    public FlowableRange$RangeSubscription(AbstractC10433c<? super Integer> cVar, int i, int i2) {
        super(i, i2);
        this.actual = cVar;
    }

    @Override // io.reactivex.internal.operators.flowable.FlowableRange$BaseRangeSubscription
    public void fastPath() {
        int i = this.end;
        AbstractC10433c<? super Integer> cVar = this.actual;
        for (int i2 = this.index; i2 != i; i2++) {
            if (!this.cancelled) {
                cVar.onNext(Integer.valueOf(i2));
            } else {
                return;
            }
        }
        if (!this.cancelled) {
            cVar.onComplete();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v9 */
    /* JADX WARN: Unknown variable types count: 3 */
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
            j.a.c<? super java.lang.Integer> r0 = r0.actual
            r10 = r0
        L_0x0011:
            r0 = 0
            r11 = r0
        L_0x0014:
            r0 = r11
            r1 = r6
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0041
            r0 = r9
            r1 = r8
            if (r0 == r1) goto L_0x0041
            r0 = r5
            boolean r0 = r0.cancelled
            if (r0 == 0) goto L_0x0029
            return
        L_0x0029:
            r0 = r10
            r1 = r9
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            r0.onNext(r1)
            r0 = r11
            r1 = 1
            long r0 = r0 + r1
            r11 = r0
            int r9 = r9 + 1
            goto L_0x0014
        L_0x0041:
            r0 = r9
            r1 = r8
            if (r0 != r1) goto L_0x0056
            r0 = r5
            boolean r0 = r0.cancelled
            if (r0 != 0) goto L_0x0055
            r0 = r10
            r0.onComplete()
        L_0x0055:
            return
        L_0x0056:
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
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableRange$RangeSubscription.slowPath(long):void");
    }
}

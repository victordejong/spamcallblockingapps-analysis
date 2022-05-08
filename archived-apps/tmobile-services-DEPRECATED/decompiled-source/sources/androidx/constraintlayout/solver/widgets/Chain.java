package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.LinearSystem;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/Chain.class */
public class Chain {
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0082, code lost:
        if (r0.f2285z0 == 2) goto L_0x00bc;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00b9, code lost:
        if (r0.f2199A0 == 2) goto L_0x00bc;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00bc, code lost:
        r27 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00c6, code lost:
        r27 = false;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static void m20422a(androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer r10, androidx.constraintlayout.solver.LinearSystem r11, int r12, int r13, androidx.constraintlayout.solver.widgets.ChainHead r14) {
        /*
            Method dump skipped, instructions count: 2637
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.Chain.m20422a(androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer, androidx.constraintlayout.solver.LinearSystem, int, int, androidx.constraintlayout.solver.widgets.ChainHead):void");
    }

    /* renamed from: b */
    public static void m20421b(ConstraintWidgetContainer constraintWidgetContainer, LinearSystem linearSystem, ArrayList<ConstraintWidget> arrayList, int i) {
        int i2;
        ChainHead[] chainHeadArr;
        int i3;
        if (i == 0) {
            i3 = constraintWidgetContainer.f2296U0;
            chainHeadArr = constraintWidgetContainer.f2299X0;
            i2 = 0;
        } else {
            i3 = constraintWidgetContainer.f2297V0;
            chainHeadArr = constraintWidgetContainer.f2298W0;
            i2 = 2;
        }
        for (int i4 = 0; i4 < i3; i4++) {
            ChainHead chainHead = chainHeadArr[i4];
            chainHead.m20420a();
            if (arrayList == null || (arrayList != null && arrayList.contains(chainHead.f2167a))) {
                m20422a(constraintWidgetContainer, linearSystem, i, i2, chainHead);
            }
        }
    }
}

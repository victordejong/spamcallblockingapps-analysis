package androidx.constraintlayout.solver.widgets.analyzer;

import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/analyzer/RunGroup.class */
public class RunGroup {

    /* renamed from: d */
    public static int f2412d;

    /* renamed from: a */
    public boolean f2413a;

    /* renamed from: b */
    WidgetRun f2414b;

    /* renamed from: c */
    ArrayList<WidgetRun> f2415c = new ArrayList<>();

    public RunGroup(WidgetRun widgetRun, int i) {
        this.f2414b = null;
        f2412d++;
        this.f2414b = widgetRun;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v30 */
    /* JADX WARN: Type inference failed for: r11v0, types: [long] */
    /* JADX WARN: Type inference failed for: r19v1, types: [long] */
    /* JADX WARN: Type inference failed for: r19v4 */
    /* JADX WARN: Type inference failed for: r19v6, types: [long] */
    /* JADX WARN: Type inference failed for: r19v7 */
    /* JADX WARN: Type inference failed for: r19v8 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private long m20118c(androidx.constraintlayout.solver.widgets.analyzer.DependencyNode r10, long r11) {
        /*
            r9 = this;
            r0 = r10
            androidx.constraintlayout.solver.widgets.analyzer.WidgetRun r0 = r0.f2399d
            r13 = r0
            r0 = r13
            boolean r0 = r0 instanceof androidx.constraintlayout.solver.widgets.analyzer.HelperReferences
            if (r0 == 0) goto L_0x0010
            r0 = r11
            return r0
        L_0x0010:
            r0 = r10
            java.util.List<androidx.constraintlayout.solver.widgets.analyzer.Dependency> r0 = r0.f2406k
            int r0 = r0.size()
            r14 = r0
            r0 = 0
            r15 = r0
            r0 = r11
            r16 = r0
        L_0x0021:
            r0 = r15
            r1 = r14
            if (r0 >= r1) goto L_0x007b
            r0 = r10
            java.util.List<androidx.constraintlayout.solver.widgets.analyzer.Dependency> r0 = r0.f2406k
            r1 = r15
            java.lang.Object r0 = r0.get(r1)
            androidx.constraintlayout.solver.widgets.analyzer.Dependency r0 = (androidx.constraintlayout.solver.widgets.analyzer.Dependency) r0
            r18 = r0
            r0 = r16
            r19 = r0
            r0 = r18
            boolean r0 = r0 instanceof androidx.constraintlayout.solver.widgets.analyzer.DependencyNode
            if (r0 == 0) goto L_0x0071
            r0 = r18
            androidx.constraintlayout.solver.widgets.analyzer.DependencyNode r0 = (androidx.constraintlayout.solver.widgets.analyzer.DependencyNode) r0
            r18 = r0
            r0 = r18
            androidx.constraintlayout.solver.widgets.analyzer.WidgetRun r0 = r0.f2399d
            r1 = r13
            if (r0 != r1) goto L_0x005c
            r0 = r16
            r19 = r0
            goto L_0x0071
        L_0x005c:
            r0 = r16
            r1 = r9
            r2 = r18
            r3 = r18
            int r3 = r3.f2401f
            long r3 = (long) r3
            r4 = r11
            long r3 = r3 + r4
            long r1 = r1.m20118c(r2, r3)
            long r0 = java.lang.Math.min(r0, r1)
            r19 = r0
        L_0x0071:
            int r15 = r15 + 1
            r0 = r19
            r16 = r0
            goto L_0x0021
        L_0x007b:
            r0 = r16
            r19 = r0
            r0 = r10
            r1 = r13
            androidx.constraintlayout.solver.widgets.analyzer.DependencyNode r1 = r1.f2433i
            if (r0 != r1) goto L_0x00b5
            r0 = r13
            long r0 = r0.mo20096j()
            r19 = r0
            r0 = r13
            androidx.constraintlayout.solver.widgets.analyzer.DependencyNode r0 = r0.f2432h
            r10 = r0
            r0 = r11
            r1 = r19
            long r0 = r0 - r1
            r11 = r0
            r0 = r16
            r1 = r9
            r2 = r10
            r3 = r11
            long r1 = r1.m20118c(r2, r3)
            long r0 = java.lang.Math.min(r0, r1)
            r1 = r11
            r2 = r13
            androidx.constraintlayout.solver.widgets.analyzer.DependencyNode r2 = r2.f2432h
            int r2 = r2.f2401f
            long r2 = (long) r2
            long r1 = r1 - r2
            long r0 = java.lang.Math.min(r0, r1)
            r19 = r0
        L_0x00b5:
            r0 = r19
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.analyzer.RunGroup.m20118c(androidx.constraintlayout.solver.widgets.analyzer.DependencyNode, long):long");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v30 */
    /* JADX WARN: Type inference failed for: r11v0, types: [long] */
    /* JADX WARN: Type inference failed for: r19v1, types: [long] */
    /* JADX WARN: Type inference failed for: r19v4 */
    /* JADX WARN: Type inference failed for: r19v6, types: [long] */
    /* JADX WARN: Type inference failed for: r19v7 */
    /* JADX WARN: Type inference failed for: r19v8 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private long m20117d(androidx.constraintlayout.solver.widgets.analyzer.DependencyNode r10, long r11) {
        /*
            r9 = this;
            r0 = r10
            androidx.constraintlayout.solver.widgets.analyzer.WidgetRun r0 = r0.f2399d
            r13 = r0
            r0 = r13
            boolean r0 = r0 instanceof androidx.constraintlayout.solver.widgets.analyzer.HelperReferences
            if (r0 == 0) goto L_0x0010
            r0 = r11
            return r0
        L_0x0010:
            r0 = r10
            java.util.List<androidx.constraintlayout.solver.widgets.analyzer.Dependency> r0 = r0.f2406k
            int r0 = r0.size()
            r14 = r0
            r0 = 0
            r15 = r0
            r0 = r11
            r16 = r0
        L_0x0021:
            r0 = r15
            r1 = r14
            if (r0 >= r1) goto L_0x007b
            r0 = r10
            java.util.List<androidx.constraintlayout.solver.widgets.analyzer.Dependency> r0 = r0.f2406k
            r1 = r15
            java.lang.Object r0 = r0.get(r1)
            androidx.constraintlayout.solver.widgets.analyzer.Dependency r0 = (androidx.constraintlayout.solver.widgets.analyzer.Dependency) r0
            r18 = r0
            r0 = r16
            r19 = r0
            r0 = r18
            boolean r0 = r0 instanceof androidx.constraintlayout.solver.widgets.analyzer.DependencyNode
            if (r0 == 0) goto L_0x0071
            r0 = r18
            androidx.constraintlayout.solver.widgets.analyzer.DependencyNode r0 = (androidx.constraintlayout.solver.widgets.analyzer.DependencyNode) r0
            r18 = r0
            r0 = r18
            androidx.constraintlayout.solver.widgets.analyzer.WidgetRun r0 = r0.f2399d
            r1 = r13
            if (r0 != r1) goto L_0x005c
            r0 = r16
            r19 = r0
            goto L_0x0071
        L_0x005c:
            r0 = r16
            r1 = r9
            r2 = r18
            r3 = r18
            int r3 = r3.f2401f
            long r3 = (long) r3
            r4 = r11
            long r3 = r3 + r4
            long r1 = r1.m20117d(r2, r3)
            long r0 = java.lang.Math.max(r0, r1)
            r19 = r0
        L_0x0071:
            int r15 = r15 + 1
            r0 = r19
            r16 = r0
            goto L_0x0021
        L_0x007b:
            r0 = r16
            r19 = r0
            r0 = r10
            r1 = r13
            androidx.constraintlayout.solver.widgets.analyzer.DependencyNode r1 = r1.f2432h
            if (r0 != r1) goto L_0x00b5
            r0 = r13
            long r0 = r0.mo20096j()
            r19 = r0
            r0 = r13
            androidx.constraintlayout.solver.widgets.analyzer.DependencyNode r0 = r0.f2433i
            r10 = r0
            r0 = r11
            r1 = r19
            long r0 = r0 + r1
            r11 = r0
            r0 = r16
            r1 = r9
            r2 = r10
            r3 = r11
            long r1 = r1.m20117d(r2, r3)
            long r0 = java.lang.Math.max(r0, r1)
            r1 = r11
            r2 = r13
            androidx.constraintlayout.solver.widgets.analyzer.DependencyNode r2 = r2.f2433i
            int r2 = r2.f2401f
            long r2 = (long) r2
            long r1 = r1 - r2
            long r0 = java.lang.Math.max(r0, r1)
            r19 = r0
        L_0x00b5:
            r0 = r19
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.analyzer.RunGroup.m20117d(androidx.constraintlayout.solver.widgets.analyzer.DependencyNode, long):long");
    }

    /* renamed from: a */
    public void m20120a(WidgetRun widgetRun) {
        this.f2415c.add(widgetRun);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v68, types: [long] */
    /* JADX WARN: Type inference failed for: r0v84, types: [long] */
    /* JADX WARN: Type inference failed for: r17v13 */
    /* JADX WARN: Type inference failed for: r17v8 */
    /* JADX WARN: Type inference failed for: r17v9, types: [long] */
    /* JADX WARN: Type inference failed for: r21v3 */
    /* JADX WARN: Type inference failed for: r21v4, types: [long] */
    /* JADX WARN: Type inference failed for: r21v7 */
    /* JADX WARN: Unknown variable types count: 4 */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long m20119b(androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer r8, int r9) {
        /*
            Method dump skipped, instructions count: 514
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.analyzer.RunGroup.m20119b(androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer, int):long");
    }
}

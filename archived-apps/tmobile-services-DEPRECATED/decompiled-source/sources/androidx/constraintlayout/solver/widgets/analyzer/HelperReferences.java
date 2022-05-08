package androidx.constraintlayout.solver.widgets.analyzer;

import androidx.constraintlayout.solver.widgets.Barrier;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.analyzer.DependencyNode;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/analyzer/HelperReferences.class */
public class HelperReferences extends WidgetRun {
    public HelperReferences(ConstraintWidget constraintWidget) {
        super(constraintWidget);
    }

    /* renamed from: q */
    private void m20123q(DependencyNode dependencyNode) {
        this.f2432h.f2406k.add(dependencyNode);
        dependencyNode.f2407l.add(this.f2432h);
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0045, code lost:
        if (r0 < r9) goto L_0x0048;
     */
    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun, androidx.constraintlayout.solver.widgets.analyzer.Dependency
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo20105a(androidx.constraintlayout.solver.widgets.analyzer.Dependency r5) {
        /*
            r4 = this;
            r0 = r4
            androidx.constraintlayout.solver.widgets.ConstraintWidget r0 = r0.f2426b
            androidx.constraintlayout.solver.widgets.Barrier r0 = (androidx.constraintlayout.solver.widgets.Barrier) r0
            r6 = r0
            r0 = r6
            int r0 = r0.m20429i1()
            r7 = r0
            r0 = r4
            androidx.constraintlayout.solver.widgets.analyzer.DependencyNode r0 = r0.f2432h
            java.util.List<androidx.constraintlayout.solver.widgets.analyzer.DependencyNode> r0 = r0.f2407l
            java.util.Iterator r0 = r0.iterator()
            r5 = r0
            r0 = 0
            r8 = r0
            r0 = -1
            r9 = r0
        L_0x0020:
            r0 = r5
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x0062
            r0 = r5
            java.lang.Object r0 = r0.next()
            androidx.constraintlayout.solver.widgets.analyzer.DependencyNode r0 = (androidx.constraintlayout.solver.widgets.analyzer.DependencyNode) r0
            int r0 = r0.f2402g
            r10 = r0
            r0 = r9
            r1 = -1
            if (r0 == r1) goto L_0x0048
            r0 = r9
            r11 = r0
            r0 = r10
            r1 = r9
            if (r0 >= r1) goto L_0x004c
        L_0x0048:
            r0 = r10
            r11 = r0
        L_0x004c:
            r0 = r11
            r9 = r0
            r0 = r8
            r1 = r10
            if (r0 >= r1) goto L_0x0020
            r0 = r10
            r8 = r0
            r0 = r11
            r9 = r0
            goto L_0x0020
        L_0x0062:
            r0 = r7
            if (r0 == 0) goto L_0x007f
            r0 = r7
            r1 = 2
            if (r0 != r1) goto L_0x006e
            goto L_0x007f
        L_0x006e:
            r0 = r4
            androidx.constraintlayout.solver.widgets.analyzer.DependencyNode r0 = r0.f2432h
            r1 = r8
            r2 = r6
            int r2 = r2.m20428j1()
            int r1 = r1 + r2
            r0.mo20138d(r1)
            goto L_0x008d
        L_0x007f:
            r0 = r4
            androidx.constraintlayout.solver.widgets.analyzer.DependencyNode r0 = r0.f2432h
            r1 = r9
            r2 = r6
            int r2 = r2.m20428j1()
            int r1 = r1 + r2
            r0.mo20138d(r1)
        L_0x008d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.analyzer.HelperReferences.mo20105a(androidx.constraintlayout.solver.widgets.analyzer.Dependency):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    /* renamed from: d */
    public void mo20102d() {
        ConstraintWidget constraintWidget = this.f2426b;
        if (constraintWidget instanceof Barrier) {
            this.f2432h.f2397b = true;
            Barrier barrier = (Barrier) constraintWidget;
            int i1 = barrier.m20429i1();
            boolean h1 = barrier.m20430h1();
            if (i1 == 0) {
                this.f2432h.f2400e = DependencyNode.Type.LEFT;
                for (int i = 0; i < barrier.f2359M0; i++) {
                    ConstraintWidget constraintWidget2 = barrier.f2358L0[i];
                    if (h1 || constraintWidget2.m20358T() != 8) {
                        DependencyNode dependencyNode = constraintWidget2.f2240d.f2432h;
                        dependencyNode.f2406k.add(this.f2432h);
                        this.f2432h.f2407l.add(dependencyNode);
                    }
                }
                m20123q(this.f2426b.f2240d.f2432h);
                m20123q(this.f2426b.f2240d.f2433i);
            } else if (i1 == 1) {
                this.f2432h.f2400e = DependencyNode.Type.RIGHT;
                for (int i2 = 0; i2 < barrier.f2359M0; i2++) {
                    ConstraintWidget constraintWidget3 = barrier.f2358L0[i2];
                    if (h1 || constraintWidget3.m20358T() != 8) {
                        DependencyNode dependencyNode2 = constraintWidget3.f2240d.f2433i;
                        dependencyNode2.f2406k.add(this.f2432h);
                        this.f2432h.f2407l.add(dependencyNode2);
                    }
                }
                m20123q(this.f2426b.f2240d.f2432h);
                m20123q(this.f2426b.f2240d.f2433i);
            } else if (i1 == 2) {
                this.f2432h.f2400e = DependencyNode.Type.TOP;
                for (int i3 = 0; i3 < barrier.f2359M0; i3++) {
                    ConstraintWidget constraintWidget4 = barrier.f2358L0[i3];
                    if (h1 || constraintWidget4.m20358T() != 8) {
                        DependencyNode dependencyNode3 = constraintWidget4.f2242e.f2432h;
                        dependencyNode3.f2406k.add(this.f2432h);
                        this.f2432h.f2407l.add(dependencyNode3);
                    }
                }
                m20123q(this.f2426b.f2242e.f2432h);
                m20123q(this.f2426b.f2242e.f2433i);
            } else if (i1 == 3) {
                this.f2432h.f2400e = DependencyNode.Type.BOTTOM;
                for (int i4 = 0; i4 < barrier.f2359M0; i4++) {
                    ConstraintWidget constraintWidget5 = barrier.f2358L0[i4];
                    if (h1 || constraintWidget5.m20358T() != 8) {
                        DependencyNode dependencyNode4 = constraintWidget5.f2242e.f2433i;
                        dependencyNode4.f2406k.add(this.f2432h);
                        this.f2432h.f2407l.add(dependencyNode4);
                    }
                }
                m20123q(this.f2426b.f2242e.f2432h);
                m20123q(this.f2426b.f2242e.f2433i);
            }
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    /* renamed from: e */
    public void mo20101e() {
        ConstraintWidget constraintWidget = this.f2426b;
        if (constraintWidget instanceof Barrier) {
            int i1 = ((Barrier) constraintWidget).m20429i1();
            if (i1 == 0 || i1 == 1) {
                this.f2426b.m20345Z0(this.f2432h.f2402g);
            } else {
                this.f2426b.m20343a1(this.f2432h.f2402g);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    /* renamed from: f */
    public void mo20100f() {
        this.f2427c = null;
        this.f2432h.m20139c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    /* renamed from: m */
    public boolean mo20093m() {
        return false;
    }
}

package androidx.constraintlayout.solver.widgets.analyzer;

import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/analyzer/ChainRun.class */
public class ChainRun extends WidgetRun {

    /* renamed from: k */
    ArrayList<WidgetRun> f2386k = new ArrayList<>();

    /* renamed from: l */
    private int f2387l;

    public ChainRun(ConstraintWidget constraintWidget, int i) {
        super(constraintWidget);
        this.f2430f = i;
        m20157q();
    }

    /* renamed from: q */
    private void m20157q() {
        ConstraintWidget constraintWidget = this.f2426b;
        ConstraintWidget M = constraintWidget.m20372M(this.f2430f);
        while (M != null) {
            M = M.m20372M(this.f2430f);
            constraintWidget = M;
        }
        this.f2426b = constraintWidget;
        this.f2386k.add(constraintWidget.m20368O(this.f2430f));
        ConstraintWidget K = constraintWidget.m20376K(this.f2430f);
        while (K != null) {
            this.f2386k.add(K.m20368O(this.f2430f));
            K = K.m20376K(this.f2430f);
        }
        Iterator<WidgetRun> it = this.f2386k.iterator();
        while (it.hasNext()) {
            WidgetRun next = it.next();
            int i = this.f2430f;
            if (i == 0) {
                next.f2426b.f2236b = this;
            } else if (i == 1) {
                next.f2426b.f2238c = this;
            }
        }
        if ((this.f2430f == 0 && ((ConstraintWidgetContainer) this.f2426b.m20374L()).m20299C1()) && this.f2386k.size() > 1) {
            ArrayList<WidgetRun> arrayList = this.f2386k;
            this.f2426b = arrayList.get(arrayList.size() - 1).f2426b;
        }
        this.f2387l = this.f2430f == 0 ? this.f2426b.m20396A() : this.f2426b.m20364Q();
    }

    /* renamed from: r */
    private ConstraintWidget m20156r() {
        for (int i = 0; i < this.f2386k.size(); i++) {
            WidgetRun widgetRun = this.f2386k.get(i);
            if (widgetRun.f2426b.m20358T() != 8) {
                return widgetRun.f2426b;
            }
        }
        return null;
    }

    /* renamed from: s */
    private ConstraintWidget m20155s() {
        for (int size = this.f2386k.size() - 1; size >= 0; size--) {
            WidgetRun widgetRun = this.f2386k.get(size);
            if (widgetRun.f2426b.m20358T() != 8) {
                return widgetRun.f2426b;
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:118:0x03be, code lost:
        if (r22 != r9) goto L_0x041f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x041c, code lost:
        if (r22 != r9) goto L_0x041f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x041f, code lost:
        r19 = r17 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x0429, code lost:
        r0.f2429e.mo20138d(r26);
     */
    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun, androidx.constraintlayout.solver.widgets.analyzer.Dependency
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo20105a(androidx.constraintlayout.solver.widgets.analyzer.Dependency r5) {
        /*
            Method dump skipped, instructions count: 2501
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.analyzer.ChainRun.mo20105a(androidx.constraintlayout.solver.widgets.analyzer.Dependency):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    /* renamed from: d */
    public void mo20102d() {
        Iterator<WidgetRun> it = this.f2386k.iterator();
        while (it.hasNext()) {
            it.next().mo20102d();
        }
        int size = this.f2386k.size();
        if (size >= 1) {
            ConstraintWidget constraintWidget = this.f2386k.get(0).f2426b;
            ConstraintWidget constraintWidget2 = this.f2386k.get(size - 1).f2426b;
            if (this.f2430f == 0) {
                ConstraintAnchor constraintAnchor = constraintWidget.f2214I;
                ConstraintAnchor constraintAnchor2 = constraintWidget2.f2218K;
                DependencyNode i = m20097i(constraintAnchor, 0);
                int f = constraintAnchor.m20412f();
                ConstraintWidget r = m20156r();
                if (r != null) {
                    f = r.f2214I.m20412f();
                }
                if (i != null) {
                    m20104b(this.f2432h, i, f);
                }
                DependencyNode i2 = m20097i(constraintAnchor2, 0);
                int f2 = constraintAnchor2.m20412f();
                ConstraintWidget s = m20155s();
                if (s != null) {
                    f2 = s.f2218K.m20412f();
                }
                if (i2 != null) {
                    m20104b(this.f2433i, i2, -f2);
                }
            } else {
                ConstraintAnchor constraintAnchor3 = constraintWidget.f2216J;
                ConstraintAnchor constraintAnchor4 = constraintWidget2.f2219L;
                DependencyNode i3 = m20097i(constraintAnchor3, 1);
                int f3 = constraintAnchor3.m20412f();
                ConstraintWidget r2 = m20156r();
                if (r2 != null) {
                    f3 = r2.f2216J.m20412f();
                }
                if (i3 != null) {
                    m20104b(this.f2432h, i3, f3);
                }
                DependencyNode i4 = m20097i(constraintAnchor4, 1);
                int f4 = constraintAnchor4.m20412f();
                ConstraintWidget s2 = m20155s();
                if (s2 != null) {
                    f4 = s2.f2219L.m20412f();
                }
                if (i4 != null) {
                    m20104b(this.f2433i, i4, -f4);
                }
            }
            this.f2432h.f2396a = this;
            this.f2433i.f2396a = this;
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    /* renamed from: e */
    public void mo20101e() {
        for (int i = 0; i < this.f2386k.size(); i++) {
            this.f2386k.get(i).mo20101e();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    /* renamed from: f */
    public void mo20100f() {
        this.f2427c = null;
        Iterator<WidgetRun> it = this.f2386k.iterator();
        while (it.hasNext()) {
            it.next().mo20100f();
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    /* renamed from: j */
    public long mo20096j() {
        int size = this.f2386k.size();
        long j = 0;
        for (int i = 0; i < size; i++) {
            WidgetRun widgetRun = this.f2386k.get(i);
            j = j + widgetRun.f2432h.f2401f + widgetRun.mo20096j() + widgetRun.f2433i.f2401f;
        }
        return j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    /* renamed from: m */
    public boolean mo20093m() {
        int size = this.f2386k.size();
        for (int i = 0; i < size; i++) {
            if (!this.f2386k.get(i).mo20093m()) {
                return false;
            }
        }
        return true;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("ChainRun ");
        sb.append(this.f2430f == 0 ? "horizontal : " : "vertical : ");
        String sb2 = sb.toString();
        Iterator<WidgetRun> it = this.f2386k.iterator();
        while (it.hasNext()) {
            WidgetRun next = it.next();
            sb2 = ((sb2 + "<") + next) + "> ";
        }
        return sb2;
    }
}

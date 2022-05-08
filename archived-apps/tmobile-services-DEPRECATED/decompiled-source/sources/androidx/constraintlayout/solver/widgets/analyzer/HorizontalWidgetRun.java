package androidx.constraintlayout.solver.widgets.analyzer;

import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.Helper;
import androidx.constraintlayout.solver.widgets.analyzer.DependencyNode;
import androidx.constraintlayout.solver.widgets.analyzer.WidgetRun;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun.class */
public class HorizontalWidgetRun extends WidgetRun {

    /* renamed from: k */
    private static int[] f2410k = new int[2];

    /* renamed from: androidx.constraintlayout.solver.widgets.analyzer.HorizontalWidgetRun$1 */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun$1.class */
    static /* synthetic */ class C01691 {

        /* renamed from: a */
        static final /* synthetic */ int[] f2411a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[WidgetRun.RunType.values().length];
            f2411a = iArr;
            try {
                iArr[WidgetRun.RunType.START.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f2411a[WidgetRun.RunType.END.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f2411a[WidgetRun.RunType.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public HorizontalWidgetRun(ConstraintWidget constraintWidget) {
        super(constraintWidget);
        this.f2432h.f2400e = DependencyNode.Type.LEFT;
        this.f2433i.f2400e = DependencyNode.Type.RIGHT;
        this.f2430f = 0;
    }

    /* renamed from: q */
    private void m20122q(int[] iArr, int i, int i2, int i3, int i4, float f, int i5) {
        int i6 = i2 - i;
        int i7 = i4 - i3;
        if (i5 == -1) {
            int i8 = (int) ((i7 * f) + 0.5f);
            int i9 = (int) ((i6 / f) + 0.5f);
            if (i8 <= i6) {
                iArr[0] = i8;
                iArr[1] = i7;
            } else if (i9 <= i7) {
                iArr[0] = i6;
                iArr[1] = i9;
            }
        } else if (i5 == 0) {
            iArr[0] = (int) ((i7 * f) + 0.5f);
            iArr[1] = i7;
        } else if (i5 == 1) {
            iArr[0] = i6;
            iArr[1] = (int) ((i6 * f) + 0.5f);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:127:0x0533, code lost:
        if (r0 != 1) goto L_0x0604;
     */
    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun, androidx.constraintlayout.solver.widgets.analyzer.Dependency
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo20105a(androidx.constraintlayout.solver.widgets.analyzer.Dependency r10) {
        /*
            Method dump skipped, instructions count: 2060
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.analyzer.HorizontalWidgetRun.mo20105a(androidx.constraintlayout.solver.widgets.analyzer.Dependency):void");
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    /* renamed from: d */
    void mo20102d() {
        ConstraintWidget L;
        ConstraintWidget L2;
        ConstraintWidget constraintWidget = this.f2426b;
        if (constraintWidget.f2234a) {
            this.f2429e.mo20138d(constraintWidget.m20356U());
        }
        if (!this.f2429e.f2405j) {
            ConstraintWidget.DimensionBehaviour B = this.f2426b.m20394B();
            this.f2428d = B;
            if (B != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                if (B == ConstraintWidget.DimensionBehaviour.MATCH_PARENT && (((L2 = this.f2426b.m20374L()) != null && L2.m20394B() == ConstraintWidget.DimensionBehaviour.FIXED) || L2.m20394B() == ConstraintWidget.DimensionBehaviour.MATCH_PARENT)) {
                    int U = L2.m20356U();
                    int f = this.f2426b.f2214I.m20412f();
                    int f2 = this.f2426b.f2218K.m20412f();
                    m20104b(this.f2432h, L2.f2240d.f2432h, this.f2426b.f2214I.m20412f());
                    m20104b(this.f2433i, L2.f2240d.f2433i, -this.f2426b.f2218K.m20412f());
                    this.f2429e.mo20138d((U - f) - f2);
                    return;
                } else if (this.f2428d == ConstraintWidget.DimensionBehaviour.FIXED) {
                    this.f2429e.mo20138d(this.f2426b.m20356U());
                }
            }
        } else if (this.f2428d == ConstraintWidget.DimensionBehaviour.MATCH_PARENT && (((L = this.f2426b.m20374L()) != null && L.m20394B() == ConstraintWidget.DimensionBehaviour.FIXED) || L.m20394B() == ConstraintWidget.DimensionBehaviour.MATCH_PARENT)) {
            m20104b(this.f2432h, L.f2240d.f2432h, this.f2426b.f2214I.m20412f());
            m20104b(this.f2433i, L.f2240d.f2433i, -this.f2426b.f2218K.m20412f());
            return;
        }
        if (this.f2429e.f2405j) {
            ConstraintWidget constraintWidget2 = this.f2426b;
            if (constraintWidget2.f2234a) {
                ConstraintAnchor[] constraintAnchorArr = constraintWidget2.f2224Q;
                if (constraintAnchorArr[0].f2192f == null || constraintAnchorArr[1].f2192f == null) {
                    ConstraintWidget constraintWidget3 = this.f2426b;
                    ConstraintAnchor[] constraintAnchorArr2 = constraintWidget3.f2224Q;
                    if (constraintAnchorArr2[0].f2192f != null) {
                        DependencyNode h = m20098h(constraintAnchorArr2[0]);
                        if (h != null) {
                            m20104b(this.f2432h, h, this.f2426b.f2224Q[0].m20412f());
                            m20104b(this.f2433i, this.f2432h, this.f2429e.f2402g);
                            return;
                        }
                        return;
                    } else if (constraintAnchorArr2[1].f2192f != null) {
                        DependencyNode h2 = m20098h(constraintAnchorArr2[1]);
                        if (h2 != null) {
                            m20104b(this.f2433i, h2, -this.f2426b.f2224Q[1].m20412f());
                            m20104b(this.f2432h, this.f2433i, -this.f2429e.f2402g);
                            return;
                        }
                        return;
                    } else if (!(constraintWidget3 instanceof Helper) && constraintWidget3.m20374L() != null && this.f2426b.mo20199p(ConstraintAnchor.Type.CENTER).f2192f == null) {
                        m20104b(this.f2432h, this.f2426b.m20374L().f2240d.f2432h, this.f2426b.m20354V());
                        m20104b(this.f2433i, this.f2432h, this.f2429e.f2402g);
                        return;
                    } else {
                        return;
                    }
                } else if (constraintWidget2.m20340c0()) {
                    this.f2432h.f2401f = this.f2426b.f2224Q[0].m20412f();
                    this.f2433i.f2401f = -this.f2426b.f2224Q[1].m20412f();
                    return;
                } else {
                    DependencyNode h3 = m20098h(this.f2426b.f2224Q[0]);
                    if (h3 != null) {
                        m20104b(this.f2432h, h3, this.f2426b.f2224Q[0].m20412f());
                    }
                    DependencyNode h4 = m20098h(this.f2426b.f2224Q[1]);
                    if (h4 != null) {
                        m20104b(this.f2433i, h4, -this.f2426b.f2224Q[1].m20412f());
                    }
                    this.f2432h.f2397b = true;
                    this.f2433i.f2397b = true;
                    return;
                }
            }
        }
        if (this.f2428d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            ConstraintWidget constraintWidget4 = this.f2426b;
            int i = constraintWidget4.f2262o;
            if (i == 2) {
                ConstraintWidget L3 = constraintWidget4.m20374L();
                if (L3 != null) {
                    DimensionDependency dimensionDependency = L3.f2242e.f2429e;
                    this.f2429e.f2407l.add(dimensionDependency);
                    dimensionDependency.f2406k.add(this.f2429e);
                    DimensionDependency dimensionDependency2 = this.f2429e;
                    dimensionDependency2.f2397b = true;
                    dimensionDependency2.f2406k.add(this.f2432h);
                    this.f2429e.f2406k.add(this.f2433i);
                }
            } else if (i == 3) {
                if (constraintWidget4.f2264p == 3) {
                    this.f2432h.f2396a = this;
                    this.f2433i.f2396a = this;
                    VerticalWidgetRun verticalWidgetRun = constraintWidget4.f2242e;
                    verticalWidgetRun.f2432h.f2396a = this;
                    verticalWidgetRun.f2433i.f2396a = this;
                    this.f2429e.f2396a = this;
                    if (constraintWidget4.m20336e0()) {
                        this.f2429e.f2407l.add(this.f2426b.f2242e.f2429e);
                        this.f2426b.f2242e.f2429e.f2406k.add(this.f2429e);
                        VerticalWidgetRun verticalWidgetRun2 = this.f2426b.f2242e;
                        verticalWidgetRun2.f2429e.f2396a = this;
                        this.f2429e.f2407l.add(verticalWidgetRun2.f2432h);
                        this.f2429e.f2407l.add(this.f2426b.f2242e.f2433i);
                        this.f2426b.f2242e.f2432h.f2406k.add(this.f2429e);
                        this.f2426b.f2242e.f2433i.f2406k.add(this.f2429e);
                    } else if (this.f2426b.m20340c0()) {
                        this.f2426b.f2242e.f2429e.f2407l.add(this.f2429e);
                        this.f2429e.f2406k.add(this.f2426b.f2242e.f2429e);
                    } else {
                        this.f2426b.f2242e.f2429e.f2407l.add(this.f2429e);
                    }
                } else {
                    DimensionDependency dimensionDependency3 = constraintWidget4.f2242e.f2429e;
                    this.f2429e.f2407l.add(dimensionDependency3);
                    dimensionDependency3.f2406k.add(this.f2429e);
                    this.f2426b.f2242e.f2432h.f2406k.add(this.f2429e);
                    this.f2426b.f2242e.f2433i.f2406k.add(this.f2429e);
                    DimensionDependency dimensionDependency4 = this.f2429e;
                    dimensionDependency4.f2397b = true;
                    dimensionDependency4.f2406k.add(this.f2432h);
                    this.f2429e.f2406k.add(this.f2433i);
                    this.f2432h.f2407l.add(this.f2429e);
                    this.f2433i.f2407l.add(this.f2429e);
                }
            }
        }
        ConstraintWidget constraintWidget5 = this.f2426b;
        ConstraintAnchor[] constraintAnchorArr3 = constraintWidget5.f2224Q;
        if (constraintAnchorArr3[0].f2192f == null || constraintAnchorArr3[1].f2192f == null) {
            ConstraintWidget constraintWidget6 = this.f2426b;
            ConstraintAnchor[] constraintAnchorArr4 = constraintWidget6.f2224Q;
            if (constraintAnchorArr4[0].f2192f != null) {
                DependencyNode h5 = m20098h(constraintAnchorArr4[0]);
                if (h5 != null) {
                    m20104b(this.f2432h, h5, this.f2426b.f2224Q[0].m20412f());
                    m20103c(this.f2433i, this.f2432h, 1, this.f2429e);
                }
            } else if (constraintAnchorArr4[1].f2192f != null) {
                DependencyNode h6 = m20098h(constraintAnchorArr4[1]);
                if (h6 != null) {
                    m20104b(this.f2433i, h6, -this.f2426b.f2224Q[1].m20412f());
                    m20103c(this.f2432h, this.f2433i, -1, this.f2429e);
                }
            } else if (!(constraintWidget6 instanceof Helper) && constraintWidget6.m20374L() != null) {
                m20104b(this.f2432h, this.f2426b.m20374L().f2240d.f2432h, this.f2426b.m20354V());
                m20103c(this.f2433i, this.f2432h, 1, this.f2429e);
            }
        } else if (constraintWidget5.m20340c0()) {
            this.f2432h.f2401f = this.f2426b.f2224Q[0].m20412f();
            this.f2433i.f2401f = -this.f2426b.f2224Q[1].m20412f();
        } else {
            DependencyNode h7 = m20098h(this.f2426b.f2224Q[0]);
            DependencyNode h8 = m20098h(this.f2426b.f2224Q[1]);
            h7.m20140b(this);
            h8.m20140b(this);
            this.f2434j = WidgetRun.RunType.CENTER;
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    /* renamed from: e */
    public void mo20101e() {
        DependencyNode dependencyNode = this.f2432h;
        if (dependencyNode.f2405j) {
            this.f2426b.m20345Z0(dependencyNode.f2402g);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    /* renamed from: f */
    public void mo20100f() {
        this.f2427c = null;
        this.f2432h.m20139c();
        this.f2433i.m20139c();
        this.f2429e.m20139c();
        this.f2431g = false;
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    /* renamed from: m */
    boolean mo20093m() {
        return this.f2428d != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT || this.f2426b.f2262o == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: r */
    public void m20121r() {
        this.f2431g = false;
        this.f2432h.m20139c();
        this.f2432h.f2405j = false;
        this.f2433i.m20139c();
        this.f2433i.f2405j = false;
        this.f2429e.f2405j = false;
    }

    public String toString() {
        return "HorizontalRun " + this.f2426b.m20313u();
    }
}

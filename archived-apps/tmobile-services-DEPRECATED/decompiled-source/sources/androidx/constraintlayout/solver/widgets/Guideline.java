package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.LinearSystem;
import androidx.constraintlayout.solver.SolverVariable;
import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/Guideline.class */
public class Guideline extends ConstraintWidget {

    /* renamed from: L0 */
    protected float f2351L0 = -1.0f;

    /* renamed from: M0 */
    protected int f2352M0 = -1;

    /* renamed from: N0 */
    protected int f2353N0 = -1;

    /* renamed from: O0 */
    private ConstraintAnchor f2354O0 = this.f2216J;

    /* renamed from: P0 */
    private int f2355P0 = 0;

    /* renamed from: Q0 */
    private boolean f2356Q0;

    /* renamed from: androidx.constraintlayout.solver.widgets.Guideline$1 */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/Guideline$1.class */
    static /* synthetic */ class C01681 {

        /* renamed from: a */
        static final /* synthetic */ int[] f2357a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0071 -> B:40:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0075 -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0079 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x007d -> B:44:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0081 -> B:38:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0085 -> B:34:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0089 -> B:30:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x008d -> B:42:0x0064). Please submit an issue!!! */
        static {
            int[] iArr = new int[ConstraintAnchor.Type.values().length];
            f2357a = iArr;
            try {
                iArr[ConstraintAnchor.Type.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f2357a[ConstraintAnchor.Type.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f2357a[ConstraintAnchor.Type.TOP.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f2357a[ConstraintAnchor.Type.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f2357a[ConstraintAnchor.Type.BASELINE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f2357a[ConstraintAnchor.Type.CENTER.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f2357a[ConstraintAnchor.Type.CENTER_X.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f2357a[ConstraintAnchor.Type.CENTER_Y.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f2357a[ConstraintAnchor.Type.NONE.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
        }
    }

    public Guideline() {
        this.f2225R.clear();
        this.f2225R.add(this.f2354O0);
        int length = this.f2224Q.length;
        for (int i = 0; i < length; i++) {
            this.f2224Q[i] = this.f2354O0;
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    /* renamed from: d1 */
    public void mo20214d1(LinearSystem linearSystem, boolean z) {
        if (m20374L() != null) {
            int x = linearSystem.m20477x(this.f2354O0);
            if (this.f2355P0 == 1) {
                m20345Z0(x);
                m20343a1(0);
                m20302z0(m20374L().m20305y());
                m20347Y0(0);
                return;
            }
            m20345Z0(0);
            m20343a1(x);
            m20347Y0(m20374L().m20356U());
            m20302z0(0);
        }
    }

    /* renamed from: e1 */
    public ConstraintAnchor m20213e1() {
        return this.f2354O0;
    }

    /* renamed from: f1 */
    public int m20212f1() {
        return this.f2355P0;
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    /* renamed from: g */
    public void mo20211g(LinearSystem linearSystem, boolean z) {
        ConstraintWidgetContainer constraintWidgetContainer = (ConstraintWidgetContainer) m20374L();
        if (constraintWidgetContainer != null) {
            ConstraintAnchor p = constraintWidgetContainer.mo20199p(ConstraintAnchor.Type.LEFT);
            ConstraintAnchor p2 = constraintWidgetContainer.mo20199p(ConstraintAnchor.Type.RIGHT);
            ConstraintWidget constraintWidget = this.f2228U;
            boolean z2 = true;
            z2 = constraintWidget != null && constraintWidget.f2227T[0] == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            if (this.f2355P0 == 0) {
                p = constraintWidgetContainer.mo20199p(ConstraintAnchor.Type.TOP);
                p2 = constraintWidgetContainer.mo20199p(ConstraintAnchor.Type.BOTTOM);
                ConstraintWidget constraintWidget2 = this.f2228U;
                if (constraintWidget2 == null || constraintWidget2.f2227T[1] != ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                    z2 = false;
                }
            }
            if (this.f2356Q0 && this.f2354O0.m20404n()) {
                SolverVariable q = linearSystem.m20484q(this.f2354O0);
                linearSystem.m20495f(q, this.f2354O0.m20413e());
                if (this.f2352M0 != -1) {
                    if (z2) {
                        linearSystem.m20493h(linearSystem.m20484q(p2), q, 0, 5);
                    }
                } else if (this.f2353N0 != -1 && z2) {
                    SolverVariable q2 = linearSystem.m20484q(p2);
                    linearSystem.m20493h(q, linearSystem.m20484q(p), 0, 5);
                    linearSystem.m20493h(q2, q, 0, 5);
                }
                this.f2356Q0 = false;
            } else if (this.f2352M0 != -1) {
                SolverVariable q3 = linearSystem.m20484q(this.f2354O0);
                linearSystem.m20496e(q3, linearSystem.m20484q(p), this.f2352M0, 8);
                if (z2) {
                    linearSystem.m20493h(linearSystem.m20484q(p2), q3, 0, 5);
                }
            } else if (this.f2353N0 != -1) {
                SolverVariable q4 = linearSystem.m20484q(this.f2354O0);
                SolverVariable q5 = linearSystem.m20484q(p2);
                linearSystem.m20496e(q4, q5, -this.f2353N0, 8);
                if (z2) {
                    linearSystem.m20493h(q4, linearSystem.m20484q(p), 0, 5);
                    linearSystem.m20493h(q5, q4, 0, 5);
                }
            } else if (this.f2351L0 != -1.0f) {
                linearSystem.m20497d(LinearSystem.m20482s(linearSystem, linearSystem.m20484q(this.f2354O0), linearSystem.m20484q(p2), this.f2351L0));
            }
        }
    }

    /* renamed from: g1 */
    public int m20210g1() {
        return this.f2352M0;
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    /* renamed from: h */
    public boolean mo20209h() {
        return true;
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    /* renamed from: h0 */
    public boolean mo20208h0() {
        return this.f2356Q0;
    }

    /* renamed from: h1 */
    public int m20207h1() {
        return this.f2353N0;
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    /* renamed from: i0 */
    public boolean mo20206i0() {
        return this.f2356Q0;
    }

    /* renamed from: i1 */
    public float m20205i1() {
        return this.f2351L0;
    }

    /* renamed from: j1 */
    public void m20204j1(int i) {
        this.f2354O0.m20398t(i);
        this.f2356Q0 = true;
    }

    /* renamed from: k1 */
    public void m20203k1(int i) {
        if (i > -1) {
            this.f2351L0 = -1.0f;
            this.f2352M0 = i;
            this.f2353N0 = -1;
        }
    }

    /* renamed from: l1 */
    public void m20202l1(int i) {
        if (i > -1) {
            this.f2351L0 = -1.0f;
            this.f2352M0 = -1;
            this.f2353N0 = i;
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    /* renamed from: m */
    public void mo20194m(ConstraintWidget constraintWidget, HashMap<ConstraintWidget, ConstraintWidget> hashMap) {
        super.mo20194m(constraintWidget, hashMap);
        Guideline guideline = (Guideline) constraintWidget;
        this.f2351L0 = guideline.f2351L0;
        this.f2352M0 = guideline.f2352M0;
        this.f2353N0 = guideline.f2353N0;
        m20200n1(guideline.f2355P0);
    }

    /* renamed from: m1 */
    public void m20201m1(float f) {
        if (f > -1.0f) {
            this.f2351L0 = f;
            this.f2352M0 = -1;
            this.f2353N0 = -1;
        }
    }

    /* renamed from: n1 */
    public void m20200n1(int i) {
        if (this.f2355P0 != i) {
            this.f2355P0 = i;
            this.f2225R.clear();
            if (this.f2355P0 == 1) {
                this.f2354O0 = this.f2214I;
            } else {
                this.f2354O0 = this.f2216J;
            }
            this.f2225R.add(this.f2354O0);
            int length = this.f2224Q.length;
            for (int i2 = 0; i2 < length; i2++) {
                this.f2224Q[i2] = this.f2354O0;
            }
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    /* renamed from: p */
    public ConstraintAnchor mo20199p(ConstraintAnchor.Type type) {
        switch (C01681.f2357a[type.ordinal()]) {
            case 1:
            case 2:
                if (this.f2355P0 == 1) {
                    return this.f2354O0;
                }
                break;
            case 3:
            case 4:
                if (this.f2355P0 == 0) {
                    return this.f2354O0;
                }
                break;
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                return null;
        }
        throw new AssertionError(type.name());
    }
}

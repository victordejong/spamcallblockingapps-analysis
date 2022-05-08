package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.analyzer.BasicMeasure;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/VirtualLayout.class */
public class VirtualLayout extends HelperWidget {

    /* renamed from: N0 */
    private int f2361N0 = 0;

    /* renamed from: O0 */
    private int f2362O0 = 0;

    /* renamed from: P0 */
    private int f2363P0 = 0;

    /* renamed from: Q0 */
    private int f2364Q0 = 0;

    /* renamed from: R0 */
    private int f2365R0 = 0;

    /* renamed from: S0 */
    private int f2366S0 = 0;

    /* renamed from: T0 */
    private boolean f2367T0 = false;

    /* renamed from: U0 */
    private int f2368U0 = 0;

    /* renamed from: V0 */
    private int f2369V0 = 0;

    /* renamed from: W0 */
    protected BasicMeasure.Measure f2370W0 = new BasicMeasure.Measure();

    /* renamed from: X0 */
    BasicMeasure.Measurer f2371X0 = null;

    /* renamed from: A1 */
    public void m20191A1(int i) {
        this.f2361N0 = i;
    }

    @Override // androidx.constraintlayout.solver.widgets.HelperWidget, androidx.constraintlayout.solver.widgets.Helper
    /* renamed from: c */
    public void mo20190c(ConstraintWidgetContainer constraintWidgetContainer) {
        m20188h1();
    }

    /* renamed from: g1 */
    public void m20189g1(boolean z) {
        if (this.f2363P0 <= 0 && this.f2364Q0 <= 0) {
            return;
        }
        if (z) {
            this.f2365R0 = this.f2364Q0;
            this.f2366S0 = this.f2363P0;
            return;
        }
        this.f2365R0 = this.f2363P0;
        this.f2366S0 = this.f2364Q0;
    }

    /* renamed from: h1 */
    public void m20188h1() {
        for (int i = 0; i < this.f2359M0; i++) {
            ConstraintWidget constraintWidget = this.f2358L0[i];
            if (constraintWidget != null) {
                constraintWidget.m20379I0(true);
            }
        }
    }

    /* renamed from: i1 */
    public int m20187i1() {
        return this.f2369V0;
    }

    /* renamed from: j1 */
    public int m20186j1() {
        return this.f2368U0;
    }

    /* renamed from: k1 */
    public int m20185k1() {
        return this.f2362O0;
    }

    /* renamed from: l1 */
    public int m20184l1() {
        return this.f2365R0;
    }

    /* renamed from: m1 */
    public int m20183m1() {
        return this.f2366S0;
    }

    /* renamed from: n1 */
    public int m20182n1() {
        return this.f2361N0;
    }

    /* renamed from: o1 */
    public void mo20181o1(int i, int i2, int i3, int i4) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: p1 */
    public void m20180p1(ConstraintWidget constraintWidget, ConstraintWidget.DimensionBehaviour dimensionBehaviour, int i, ConstraintWidget.DimensionBehaviour dimensionBehaviour2, int i2) {
        while (this.f2371X0 == null && m20374L() != null) {
            this.f2371X0 = ((ConstraintWidgetContainer) m20374L()).m20274v1();
        }
        BasicMeasure.Measure measure = this.f2370W0;
        measure.f2376a = dimensionBehaviour;
        measure.f2377b = dimensionBehaviour2;
        measure.f2378c = i;
        measure.f2379d = i2;
        this.f2371X0.mo20028b(constraintWidget, measure);
        constraintWidget.m20347Y0(this.f2370W0.f2380e);
        constraintWidget.m20302z0(this.f2370W0.f2381f);
        constraintWidget.m20304y0(this.f2370W0.f2383h);
        constraintWidget.m20323o0(this.f2370W0.f2382g);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: q1 */
    public boolean m20179q1() {
        ConstraintWidget constraintWidget = this.f2228U;
        BasicMeasure.Measurer v1 = constraintWidget != null ? ((ConstraintWidgetContainer) constraintWidget).m20274v1() : null;
        if (v1 == null) {
            return false;
        }
        int i = 0;
        while (true) {
            boolean z = true;
            if (i >= this.f2359M0) {
                return true;
            }
            ConstraintWidget constraintWidget2 = this.f2358L0[i];
            if (constraintWidget2 != null && !(constraintWidget2 instanceof Guideline)) {
                ConstraintWidget.DimensionBehaviour v = constraintWidget2.m20311v(0);
                ConstraintWidget.DimensionBehaviour v2 = constraintWidget2.m20311v(1);
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (v != dimensionBehaviour || constraintWidget2.f2262o == 1 || v2 != dimensionBehaviour || constraintWidget2.f2264p == 1) {
                    z = false;
                }
                if (!z) {
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = v;
                    if (v == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                        dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    }
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = v2;
                    if (v2 == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                        dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    }
                    BasicMeasure.Measure measure = this.f2370W0;
                    measure.f2376a = dimensionBehaviour2;
                    measure.f2377b = dimensionBehaviour3;
                    measure.f2378c = constraintWidget2.m20356U();
                    this.f2370W0.f2379d = constraintWidget2.m20305y();
                    v1.mo20028b(constraintWidget2, this.f2370W0);
                    constraintWidget2.m20347Y0(this.f2370W0.f2380e);
                    constraintWidget2.m20302z0(this.f2370W0.f2381f);
                    constraintWidget2.m20323o0(this.f2370W0.f2382g);
                }
            }
            i++;
        }
    }

    /* renamed from: r1 */
    public boolean m20178r1() {
        return this.f2367T0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: s1 */
    public void m20177s1(boolean z) {
        this.f2367T0 = z;
    }

    /* renamed from: t1 */
    public void m20176t1(int i, int i2) {
        this.f2368U0 = i;
        this.f2369V0 = i2;
    }

    /* renamed from: u1 */
    public void m20175u1(int i) {
        this.f2361N0 = i;
        this.f2362O0 = i;
        this.f2363P0 = i;
        this.f2364Q0 = i;
    }

    /* renamed from: v1 */
    public void m20174v1(int i) {
        this.f2362O0 = i;
    }

    /* renamed from: w1 */
    public void m20173w1(int i) {
        this.f2364Q0 = i;
    }

    /* renamed from: x1 */
    public void m20172x1(int i) {
        this.f2365R0 = i;
    }

    /* renamed from: y1 */
    public void m20171y1(int i) {
        this.f2366S0 = i;
    }

    /* renamed from: z1 */
    public void m20170z1(int i) {
        this.f2363P0 = i;
        this.f2365R0 = i;
        this.f2366S0 = i;
    }
}

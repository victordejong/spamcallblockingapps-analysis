package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.LinearSystem;
import androidx.constraintlayout.solver.Metrics;
import androidx.constraintlayout.solver.SolverVariable;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.analyzer.BasicMeasure;
import androidx.constraintlayout.solver.widgets.analyzer.DependencyGraph;
import androidx.constraintlayout.solver.widgets.analyzer.Direct;
import androidx.constraintlayout.solver.widgets.analyzer.Grouping;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/ConstraintWidgetContainer.class */
public class ConstraintWidgetContainer extends WidgetContainer {

    /* renamed from: Q0 */
    public Metrics f2292Q0;

    /* renamed from: S0 */
    int f2294S0;

    /* renamed from: T0 */
    int f2295T0;

    /* renamed from: M0 */
    BasicMeasure f2288M0 = new BasicMeasure(this);

    /* renamed from: N0 */
    public DependencyGraph f2289N0 = new DependencyGraph(this);

    /* renamed from: O0 */
    protected BasicMeasure.Measurer f2290O0 = null;

    /* renamed from: P0 */
    private boolean f2291P0 = false;

    /* renamed from: R0 */
    protected LinearSystem f2293R0 = new LinearSystem();

    /* renamed from: U0 */
    public int f2296U0 = 0;

    /* renamed from: V0 */
    public int f2297V0 = 0;

    /* renamed from: W0 */
    ChainHead[] f2298W0 = new ChainHead[4];

    /* renamed from: X0 */
    ChainHead[] f2299X0 = new ChainHead[4];

    /* renamed from: Y0 */
    private int f2300Y0 = 257;

    /* renamed from: Z0 */
    private boolean f2301Z0 = false;

    /* renamed from: a1 */
    private boolean f2302a1 = false;

    /* renamed from: b1 */
    private WeakReference<ConstraintAnchor> f2303b1 = null;

    /* renamed from: c1 */
    private WeakReference<ConstraintAnchor> f2304c1 = null;

    /* renamed from: d1 */
    private WeakReference<ConstraintAnchor> f2305d1 = null;

    /* renamed from: e1 */
    private WeakReference<ConstraintAnchor> f2306e1 = null;

    /* renamed from: f1 */
    public BasicMeasure.Measure f2307f1 = new BasicMeasure.Measure();

    /* renamed from: F1 */
    public static boolean m20296F1(ConstraintWidget constraintWidget, BasicMeasure.Measurer measurer, BasicMeasure.Measure measure, boolean z) {
        int i;
        int i2;
        if (measurer == null) {
            return false;
        }
        measure.f2376a = constraintWidget.m20394B();
        measure.f2377b = constraintWidget.m20362R();
        measure.f2378c = constraintWidget.m20356U();
        measure.f2379d = constraintWidget.m20305y();
        measure.f2384i = false;
        measure.f2385j = z;
        boolean z2 = measure.f2376a == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
        boolean z3 = measure.f2377b == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
        boolean z4 = z2 && constraintWidget.f2231X > 0.0f;
        boolean z5 = z3 && constraintWidget.f2231X > 0.0f;
        boolean z6 = z2;
        if (z2) {
            z6 = z2;
            if (constraintWidget.m20348Y(0)) {
                z6 = z2;
                if (constraintWidget.f2262o == 0) {
                    z6 = z2;
                    if (!z4) {
                        measure.f2376a = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                        if (z3 && constraintWidget.f2264p == 0) {
                            measure.f2376a = ConstraintWidget.DimensionBehaviour.FIXED;
                        }
                        z6 = false;
                    }
                }
            }
        }
        boolean z7 = z3;
        if (z3) {
            z7 = z3;
            if (constraintWidget.m20348Y(1)) {
                z7 = z3;
                if (constraintWidget.f2264p == 0) {
                    z7 = z3;
                    if (!z5) {
                        measure.f2377b = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                        if (z6 && constraintWidget.f2262o == 0) {
                            measure.f2377b = ConstraintWidget.DimensionBehaviour.FIXED;
                        }
                        z7 = false;
                    }
                }
            }
        }
        if (constraintWidget.mo20208h0()) {
            measure.f2376a = ConstraintWidget.DimensionBehaviour.FIXED;
            z6 = false;
        }
        if (constraintWidget.mo20206i0()) {
            measure.f2377b = ConstraintWidget.DimensionBehaviour.FIXED;
            z7 = false;
        }
        if (z4) {
            if (constraintWidget.f2266q[0] == 4) {
                measure.f2376a = ConstraintWidget.DimensionBehaviour.FIXED;
            } else if (!z7) {
                if (measure.f2377b == ConstraintWidget.DimensionBehaviour.FIXED) {
                    i2 = measure.f2379d;
                } else {
                    measure.f2376a = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    measurer.mo20028b(constraintWidget, measure);
                    i2 = measure.f2381f;
                }
                measure.f2376a = ConstraintWidget.DimensionBehaviour.FIXED;
                int i3 = constraintWidget.f2232Y;
                if (i3 == 0 || i3 == -1) {
                    measure.f2378c = (int) (constraintWidget.m20309w() * i2);
                } else {
                    measure.f2378c = (int) (constraintWidget.m20309w() / i2);
                }
            }
        }
        if (z5) {
            if (constraintWidget.f2266q[1] == 4) {
                measure.f2377b = ConstraintWidget.DimensionBehaviour.FIXED;
            } else if (!z6) {
                if (measure.f2376a == ConstraintWidget.DimensionBehaviour.FIXED) {
                    i = measure.f2378c;
                } else {
                    measure.f2377b = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    measurer.mo20028b(constraintWidget, measure);
                    i = measure.f2380e;
                }
                measure.f2377b = ConstraintWidget.DimensionBehaviour.FIXED;
                int i4 = constraintWidget.f2232Y;
                if (i4 == 0 || i4 == -1) {
                    measure.f2379d = (int) (i / constraintWidget.m20309w());
                } else {
                    measure.f2379d = (int) (i * constraintWidget.m20309w());
                }
            }
        }
        measurer.mo20028b(constraintWidget, measure);
        constraintWidget.m20347Y0(measure.f2380e);
        constraintWidget.m20302z0(measure.f2381f);
        constraintWidget.m20304y0(measure.f2383h);
        constraintWidget.m20323o0(measure.f2382g);
        measure.f2385j = false;
        return measure.f2384i;
    }

    /* renamed from: H1 */
    private void m20294H1() {
        this.f2296U0 = 0;
        this.f2297V0 = 0;
    }

    /* renamed from: k1 */
    private void m20285k1(ConstraintWidget constraintWidget) {
        int i = this.f2296U0;
        ChainHead[] chainHeadArr = this.f2299X0;
        if (i + 1 >= chainHeadArr.length) {
            this.f2299X0 = (ChainHead[]) Arrays.copyOf(chainHeadArr, chainHeadArr.length * 2);
        }
        this.f2299X0[this.f2296U0] = new ChainHead(constraintWidget, 0, m20299C1());
        this.f2296U0++;
    }

    /* renamed from: n1 */
    private void m20282n1(ConstraintAnchor constraintAnchor, SolverVariable solverVariable) {
        this.f2293R0.m20493h(solverVariable, this.f2293R0.m20484q(constraintAnchor), 0, 5);
    }

    /* renamed from: o1 */
    private void m20281o1(ConstraintAnchor constraintAnchor, SolverVariable solverVariable) {
        this.f2293R0.m20493h(this.f2293R0.m20484q(constraintAnchor), solverVariable, 0, 5);
    }

    /* renamed from: p1 */
    private void m20280p1(ConstraintWidget constraintWidget) {
        int i = this.f2297V0;
        ChainHead[] chainHeadArr = this.f2298W0;
        if (i + 1 >= chainHeadArr.length) {
            this.f2298W0 = (ChainHead[]) Arrays.copyOf(chainHeadArr, chainHeadArr.length * 2);
        }
        this.f2298W0[this.f2297V0] = new ChainHead(constraintWidget, 1, m20299C1());
        this.f2297V0++;
    }

    /* renamed from: A1 */
    public void m20301A1() {
        this.f2289N0.m20144k();
    }

    /* renamed from: B1 */
    public boolean m20300B1() {
        return this.f2302a1;
    }

    /* renamed from: C1 */
    public boolean m20299C1() {
        return this.f2291P0;
    }

    /* renamed from: D1 */
    public boolean m20298D1() {
        return this.f2301Z0;
    }

    /* renamed from: E1 */
    public long m20297E1(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        this.f2294S0 = i8;
        this.f2295T0 = i9;
        return this.f2288M0.m20159d(this, i, i8, i9, i2, i3, i4, i5, i6, i7);
    }

    /* renamed from: G1 */
    public boolean m20295G1(int i) {
        return (this.f2300Y0 & i) == i;
    }

    /* renamed from: I1 */
    public void m20293I1(BasicMeasure.Measurer measurer) {
        this.f2290O0 = measurer;
        this.f2289N0.m20141n(measurer);
    }

    /* renamed from: J1 */
    public void m20292J1(int i) {
        this.f2300Y0 = i;
        LinearSystem.f2054r = m20295G1(512);
    }

    /* renamed from: K1 */
    public void m20291K1(boolean z) {
        this.f2291P0 = z;
    }

    /* renamed from: L1 */
    public void m20290L1(LinearSystem linearSystem, boolean[] zArr) {
        zArr[2] = false;
        boolean G1 = m20295G1(64);
        mo20214d1(linearSystem, G1);
        int size = this.f2372L0.size();
        for (int i = 0; i < size; i++) {
            this.f2372L0.get(i).mo20214d1(linearSystem, G1);
        }
    }

    /* renamed from: M1 */
    public void m20289M1() {
        this.f2288M0.m20158e(this);
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    /* renamed from: c1 */
    public void mo20288c1(boolean z, boolean z2) {
        super.mo20288c1(z, z2);
        int size = this.f2372L0.size();
        for (int i = 0; i < size; i++) {
            this.f2372L0.get(i).mo20288c1(z, z2);
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.WidgetContainer
    /* renamed from: f1 */
    public void mo20167f1() {
        int i;
        int i2;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour;
        this.f2233Z = 0;
        this.f2235a0 = 0;
        this.f2301Z0 = false;
        this.f2302a1 = false;
        int size = this.f2372L0.size();
        int max = Math.max(0, m20356U());
        int max2 = Math.max(0, m20305y());
        ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = this.f2227T;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = dimensionBehaviourArr[1];
        ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = dimensionBehaviourArr[0];
        Metrics metrics = this.f2292Q0;
        if (metrics != null) {
            metrics.f2083D++;
        }
        if (Optimizer.m20192b(this.f2300Y0, 1)) {
            Direct.m20130h(this, m20274v1());
            for (int i3 = 0; i3 < size; i3++) {
                ConstraintWidget constraintWidget = this.f2372L0.get(i3);
                if (constraintWidget.m20333g0() && !(constraintWidget instanceof Guideline) && !(constraintWidget instanceof Barrier) && !(constraintWidget instanceof VirtualLayout) && !constraintWidget.m20334f0()) {
                    ConstraintWidget.DimensionBehaviour v = constraintWidget.m20311v(0);
                    ConstraintWidget.DimensionBehaviour v2 = constraintWidget.m20311v(1);
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                    if (!(v == dimensionBehaviour4 && constraintWidget.f2262o != 1 && v2 == dimensionBehaviour4 && constraintWidget.f2264p != 1)) {
                        m20296F1(constraintWidget, this.f2290O0, new BasicMeasure.Measure(), false);
                    }
                }
            }
        }
        if (size <= 2 || (!(dimensionBehaviour3 == (dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) || dimensionBehaviour2 == dimensionBehaviour) || !Optimizer.m20192b(this.f2300Y0, 1024) || !Grouping.m20126c(this, m20274v1()))) {
            z = false;
            i = max2;
            i2 = max;
        } else {
            i2 = max;
            if (dimensionBehaviour3 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                if (max >= m20356U() || max <= 0) {
                    i2 = m20356U();
                } else {
                    m20347Y0(max);
                    this.f2301Z0 = true;
                    i2 = max;
                }
            }
            i = max2;
            if (dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                if (max2 >= m20305y() || max2 <= 0) {
                    i = m20305y();
                } else {
                    m20302z0(max2);
                    this.f2302a1 = true;
                    i = max2;
                }
            }
            z = true;
        }
        boolean z5 = m20295G1(64) || m20295G1(128);
        LinearSystem linearSystem = this.f2293R0;
        linearSystem.f2070h = false;
        linearSystem.f2071i = false;
        if (this.f2300Y0 != 0 && z5) {
            linearSystem.f2071i = true;
        }
        ArrayList<ConstraintWidget> arrayList = this.f2372L0;
        boolean z6 = m20394B() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || m20362R() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        m20294H1();
        for (int i4 = 0; i4 < size; i4++) {
            ConstraintWidget constraintWidget2 = this.f2372L0.get(i4);
            if (constraintWidget2 instanceof WidgetContainer) {
                ((WidgetContainer) constraintWidget2).mo20167f1();
            }
        }
        boolean G1 = m20295G1(64);
        int i5 = 0;
        boolean z7 = true;
        while (z7) {
            int i6 = i5 + 1;
            boolean z8 = z7;
            try {
                this.f2293R0.m20501D();
                m20294H1();
                m20325n(this.f2293R0);
                for (int i7 = 0; i7 < size; i7++) {
                    this.f2372L0.get(i7).m20325n(this.f2293R0);
                }
                boolean j1 = m20286j1(this.f2293R0);
                if (!(this.f2303b1 == null || this.f2303b1.get() == null)) {
                    m20281o1(this.f2303b1.get(), this.f2293R0.m20484q(this.f2216J));
                    this.f2303b1 = null;
                }
                if (!(this.f2305d1 == null || this.f2305d1.get() == null)) {
                    m20282n1(this.f2305d1.get(), this.f2293R0.m20484q(this.f2219L));
                    this.f2305d1 = null;
                }
                if (!(this.f2304c1 == null || this.f2304c1.get() == null)) {
                    m20281o1(this.f2304c1.get(), this.f2293R0.m20484q(this.f2214I));
                    this.f2304c1 = null;
                }
                if (!(this.f2306e1 == null || this.f2306e1.get() == null)) {
                    m20282n1(this.f2306e1.get(), this.f2293R0.m20484q(this.f2218K));
                    this.f2306e1 = null;
                }
                z8 = j1;
                if (j1) {
                    this.f2293R0.m20475z();
                    z8 = j1;
                }
            } catch (Exception e) {
                e.printStackTrace();
                System.out.println("EXCEPTION : " + e);
            }
            if (z8) {
                m20290L1(this.f2293R0, Optimizer.f2360a);
            } else {
                mo20214d1(this.f2293R0, G1);
                for (int i8 = 0; i8 < size; i8++) {
                    this.f2372L0.get(i8).mo20214d1(this.f2293R0, G1);
                }
            }
            if (!z6 || i6 >= 8 || !Optimizer.f2360a[2]) {
                z2 = false;
            } else {
                int i9 = 0;
                int i10 = 0;
                for (int i11 = 0; i11 < size; i11++) {
                    ConstraintWidget constraintWidget3 = this.f2372L0.get(i11);
                    i9 = Math.max(i9, constraintWidget3.f2233Z + constraintWidget3.m20356U());
                    i10 = Math.max(i10, constraintWidget3.f2235a0 + constraintWidget3.m20305y());
                }
                int max3 = Math.max(this.f2247g0, i9);
                int max4 = Math.max(this.f2249h0, i10);
                if (dimensionBehaviour3 != ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || m20356U() >= max3) {
                    z3 = false;
                    z4 = z;
                } else {
                    m20347Y0(max3);
                    this.f2227T[0] = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    z3 = true;
                    z4 = true;
                }
                z2 = z3;
                z = z4;
                if (dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                    z2 = z3;
                    z = z4;
                    if (m20305y() < max4) {
                        m20302z0(max4);
                        this.f2227T[1] = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                        z2 = true;
                        z = true;
                    }
                }
            }
            int max5 = Math.max(this.f2247g0, m20356U());
            if (max5 > m20356U()) {
                m20347Y0(max5);
                this.f2227T[0] = ConstraintWidget.DimensionBehaviour.FIXED;
                z2 = true;
                z = true;
            }
            int max6 = Math.max(this.f2249h0, m20305y());
            if (max6 > m20305y()) {
                m20302z0(max6);
                this.f2227T[1] = ConstraintWidget.DimensionBehaviour.FIXED;
                z2 = true;
                z = true;
            }
            z7 = z2;
            z = z;
            if (!z) {
                boolean z9 = z2;
                boolean z10 = z;
                if (this.f2227T[0] == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                    z9 = z2;
                    z10 = z;
                    if (i2 > 0) {
                        z9 = z2;
                        z10 = z;
                        if (m20356U() > i2) {
                            this.f2301Z0 = true;
                            this.f2227T[0] = ConstraintWidget.DimensionBehaviour.FIXED;
                            m20347Y0(i2);
                            z9 = true;
                            z10 = true;
                        }
                    }
                }
                z7 = z9;
                z = z10;
                if (this.f2227T[1] == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                    z7 = z9;
                    z = z10;
                    if (i > 0) {
                        z7 = z9;
                        z = z10;
                        if (m20305y() > i) {
                            this.f2302a1 = true;
                            this.f2227T[1] = ConstraintWidget.DimensionBehaviour.FIXED;
                            m20302z0(i);
                            z = true;
                            z7 = true;
                            i5 = i6;
                        }
                    }
                }
            }
            i5 = i6;
        }
        this.f2372L0 = arrayList;
        if (z) {
            ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr2 = this.f2227T;
            dimensionBehaviourArr2[0] = dimensionBehaviour3;
            dimensionBehaviourArr2[1] = dimensionBehaviour2;
        }
        mo20163n0(this.f2293R0.m20479v());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i1 */
    public void m20287i1(ConstraintWidget constraintWidget, int i) {
        if (i == 0) {
            m20285k1(constraintWidget);
        } else if (i == 1) {
            m20280p1(constraintWidget);
        }
    }

    /* renamed from: j1 */
    public boolean m20286j1(LinearSystem linearSystem) {
        boolean G1 = m20295G1(64);
        mo20211g(linearSystem, G1);
        int size = this.f2372L0.size();
        boolean z = false;
        for (int i = 0; i < size; i++) {
            ConstraintWidget constraintWidget = this.f2372L0.get(i);
            constraintWidget.m20383G0(0, false);
            constraintWidget.m20383G0(1, false);
            if (constraintWidget instanceof Barrier) {
                z = true;
            }
        }
        if (z) {
            for (int i2 = 0; i2 < size; i2++) {
                ConstraintWidget constraintWidget2 = this.f2372L0.get(i2);
                if (constraintWidget2 instanceof Barrier) {
                    ((Barrier) constraintWidget2).m20426l1();
                }
            }
        }
        for (int i3 = 0; i3 < size; i3++) {
            ConstraintWidget constraintWidget3 = this.f2372L0.get(i3);
            if (constraintWidget3.m20335f()) {
                constraintWidget3.mo20211g(linearSystem, G1);
            }
        }
        if (LinearSystem.f2054r) {
            HashSet<ConstraintWidget> hashSet = new HashSet<>();
            for (int i4 = 0; i4 < size; i4++) {
                ConstraintWidget constraintWidget4 = this.f2372L0.get(i4);
                if (!constraintWidget4.m20335f()) {
                    hashSet.add(constraintWidget4);
                }
            }
            m20337e(this, linearSystem, hashSet, m20394B() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT ? 0 : 1, false);
            Iterator<ConstraintWidget> it = hashSet.iterator();
            while (it.hasNext()) {
                ConstraintWidget next = it.next();
                Optimizer.m20193a(this, linearSystem, next);
                next.mo20211g(linearSystem, G1);
            }
        } else {
            for (int i5 = 0; i5 < size; i5++) {
                ConstraintWidget constraintWidget5 = this.f2372L0.get(i5);
                if (constraintWidget5 instanceof ConstraintWidgetContainer) {
                    ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget5.f2227T;
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[0];
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = dimensionBehaviourArr[1];
                    if (dimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                        constraintWidget5.m20389D0(ConstraintWidget.DimensionBehaviour.FIXED);
                    }
                    if (dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                        constraintWidget5.m20355U0(ConstraintWidget.DimensionBehaviour.FIXED);
                    }
                    constraintWidget5.mo20211g(linearSystem, G1);
                    if (dimensionBehaviour == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                        constraintWidget5.m20389D0(dimensionBehaviour);
                    }
                    if (dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                        constraintWidget5.m20355U0(dimensionBehaviour2);
                    }
                } else {
                    Optimizer.m20193a(this, linearSystem, constraintWidget5);
                    if (!constraintWidget5.m20335f()) {
                        constraintWidget5.mo20211g(linearSystem, G1);
                    }
                }
            }
        }
        if (this.f2296U0 > 0) {
            Chain.m20421b(this, linearSystem, null, 0);
        }
        if (this.f2297V0 <= 0) {
            return true;
        }
        Chain.m20421b(this, linearSystem, null, 1);
        return true;
    }

    @Override // androidx.constraintlayout.solver.widgets.WidgetContainer, androidx.constraintlayout.solver.widgets.ConstraintWidget
    /* renamed from: k0 */
    public void mo20164k0() {
        this.f2293R0.m20501D();
        this.f2294S0 = 0;
        this.f2295T0 = 0;
        super.mo20164k0();
    }

    /* renamed from: l1 */
    public void m20284l1(ConstraintAnchor constraintAnchor) {
        WeakReference<ConstraintAnchor> weakReference = this.f2306e1;
        if (weakReference == null || weakReference.get() == null || constraintAnchor.m20413e() > this.f2306e1.get().m20413e()) {
            this.f2306e1 = new WeakReference<>(constraintAnchor);
        }
    }

    /* renamed from: m1 */
    public void m20283m1(ConstraintAnchor constraintAnchor) {
        WeakReference<ConstraintAnchor> weakReference = this.f2304c1;
        if (weakReference == null || weakReference.get() == null || constraintAnchor.m20413e() > this.f2304c1.get().m20413e()) {
            this.f2304c1 = new WeakReference<>(constraintAnchor);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q1 */
    public void m20279q1(ConstraintAnchor constraintAnchor) {
        WeakReference<ConstraintAnchor> weakReference = this.f2305d1;
        if (weakReference == null || weakReference.get() == null || constraintAnchor.m20413e() > this.f2305d1.get().m20413e()) {
            this.f2305d1 = new WeakReference<>(constraintAnchor);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: r1 */
    public void m20278r1(ConstraintAnchor constraintAnchor) {
        WeakReference<ConstraintAnchor> weakReference = this.f2303b1;
        if (weakReference == null || weakReference.get() == null || constraintAnchor.m20413e() > this.f2303b1.get().m20413e()) {
            this.f2303b1 = new WeakReference<>(constraintAnchor);
        }
    }

    /* renamed from: s1 */
    public boolean m20277s1(boolean z) {
        return this.f2289N0.m20149f(z);
    }

    /* renamed from: t1 */
    public boolean m20276t1(boolean z) {
        return this.f2289N0.m20148g(z);
    }

    /* renamed from: u1 */
    public boolean m20275u1(boolean z, int i) {
        return this.f2289N0.m20147h(z, i);
    }

    /* renamed from: v1 */
    public BasicMeasure.Measurer m20274v1() {
        return this.f2290O0;
    }

    /* renamed from: w1 */
    public int m20273w1() {
        return this.f2300Y0;
    }

    /* renamed from: x1 */
    public LinearSystem m20272x1() {
        return this.f2293R0;
    }

    /* renamed from: y1 */
    public boolean m20271y1() {
        return false;
    }

    /* renamed from: z1 */
    public void m20270z1() {
        this.f2289N0.m20145j();
    }
}

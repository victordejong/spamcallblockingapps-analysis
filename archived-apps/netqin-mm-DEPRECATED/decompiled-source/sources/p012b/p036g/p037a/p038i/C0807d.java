package p012b.p036g.p037a.p038i;

import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import java.util.ArrayList;
/* renamed from: b.g.a.i.d */
/* loaded from: classes-dex2jar.jar:b/g/a/i/d.class */
public class C0807d {

    /* renamed from: a */
    public ConstraintWidget f3783a;

    /* renamed from: b */
    public ConstraintWidget f3784b;

    /* renamed from: c */
    public ConstraintWidget f3785c;

    /* renamed from: d */
    public ConstraintWidget f3786d;

    /* renamed from: e */
    public ConstraintWidget f3787e;

    /* renamed from: f */
    public ConstraintWidget f3788f;

    /* renamed from: g */
    public ConstraintWidget f3789g;

    /* renamed from: h */
    public ArrayList<ConstraintWidget> f3790h;

    /* renamed from: i */
    public int f3791i;

    /* renamed from: j */
    public int f3792j;

    /* renamed from: k */
    public float f3793k = 0.0f;

    /* renamed from: l */
    public int f3794l;

    /* renamed from: m */
    public boolean f3795m;

    /* renamed from: n */
    public boolean f3796n;

    /* renamed from: o */
    public boolean f3797o;

    /* renamed from: p */
    public boolean f3798p;

    /* renamed from: q */
    public boolean f3799q;

    public C0807d(ConstraintWidget constraintWidget, int i, boolean z) {
        this.f3795m = false;
        this.f3783a = constraintWidget;
        this.f3794l = i;
        this.f3795m = z;
    }

    /* renamed from: a */
    public static boolean m35906a(ConstraintWidget constraintWidget, int i) {
        boolean z;
        if (constraintWidget.m38730s() != 8 && constraintWidget.f886C[i] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            int[] iArr = constraintWidget.f922g;
            if (iArr[i] == 0 || iArr[i] == 3) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    /* renamed from: a */
    public void m35907a() {
        if (!this.f3799q) {
            m35905b();
        }
        this.f3799q = true;
    }

    /* renamed from: b */
    public final void m35905b() {
        int i = this.f3794l * 2;
        ConstraintWidget constraintWidget = this.f3783a;
        ConstraintWidget constraintWidget2 = constraintWidget;
        boolean z = false;
        while (!z) {
            this.f3791i++;
            ConstraintWidget[] constraintWidgetArr = constraintWidget.f927i0;
            int i2 = this.f3794l;
            constraintWidgetArr[i2] = null;
            constraintWidget.f925h0[i2] = null;
            if (constraintWidget.m38730s() != 8) {
                if (this.f3784b == null) {
                    this.f3784b = constraintWidget;
                }
                this.f3786d = constraintWidget;
                ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget.f886C;
                int i3 = this.f3794l;
                if (dimensionBehaviourArr[i3] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    int[] iArr = constraintWidget.f922g;
                    if (iArr[i3] == 0 || iArr[i3] == 3 || iArr[i3] == 2) {
                        this.f3792j++;
                        float[] fArr = constraintWidget.f923g0;
                        int i4 = this.f3794l;
                        float f = fArr[i4];
                        if (f > 0.0f) {
                            this.f3793k += fArr[i4];
                        }
                        if (m35906a(constraintWidget, this.f3794l)) {
                            if (f < 0.0f) {
                                this.f3796n = true;
                            } else {
                                this.f3797o = true;
                            }
                            if (this.f3790h == null) {
                                this.f3790h = new ArrayList<>();
                            }
                            this.f3790h.add(constraintWidget);
                        }
                        if (this.f3788f == null) {
                            this.f3788f = constraintWidget;
                        }
                        ConstraintWidget constraintWidget3 = this.f3789g;
                        if (constraintWidget3 != null) {
                            constraintWidget3.f925h0[this.f3794l] = constraintWidget;
                        }
                        this.f3789g = constraintWidget;
                    }
                }
            }
            if (constraintWidget2 != constraintWidget) {
                constraintWidget2.f927i0[this.f3794l] = constraintWidget;
            }
            ConstraintAnchor constraintAnchor = constraintWidget.f884A[i + 1].f876d;
            constraintWidget = null;
            if (constraintAnchor != null) {
                ConstraintWidget constraintWidget4 = constraintAnchor.f874b;
                ConstraintAnchor[] constraintAnchorArr = constraintWidget4.f884A;
                constraintWidget = null;
                if (constraintAnchorArr[i].f876d != null) {
                    constraintWidget = constraintAnchorArr[i].f876d.f874b != constraintWidget ? null : constraintWidget4;
                }
            }
            if (constraintWidget == null) {
                constraintWidget = constraintWidget;
                z = true;
            }
            constraintWidget2 = constraintWidget;
        }
        this.f3785c = constraintWidget;
        if (this.f3794l != 0 || !this.f3795m) {
            this.f3787e = this.f3783a;
        } else {
            this.f3787e = constraintWidget;
        }
        boolean z2 = false;
        if (this.f3797o) {
            z2 = false;
            if (this.f3796n) {
                z2 = true;
            }
        }
        this.f3798p = z2;
    }
}

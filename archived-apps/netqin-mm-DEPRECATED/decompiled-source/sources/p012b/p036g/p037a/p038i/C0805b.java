package p012b.p036g.p037a.p038i;

import androidx.constraintlayout.solver.SolverVariable;
import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import java.util.ArrayList;
import p012b.p036g.p037a.C0799e;
/* renamed from: b.g.a.i.b */
/* loaded from: classes-dex2jar.jar:b/g/a/i/b.class */
public class C0805b extends C0812h {

    /* renamed from: m0 */
    public int f3780m0 = 0;

    /* renamed from: n0 */
    public ArrayList<C0815k> f3781n0 = new ArrayList<>(4);

    /* renamed from: o0 */
    public boolean f3782o0 = true;

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    /* renamed from: G */
    public void mo35913G() {
        super.mo35913G();
        this.f3781n0.clear();
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    /* renamed from: H */
    public void mo35912H() {
        C0815k kVar;
        int i = this.f3780m0;
        float f = Float.MAX_VALUE;
        if (i != 0) {
            if (i == 1) {
                kVar = this.f939u.m38801d();
            } else if (i == 2) {
                kVar = this.f938t.m38801d();
            } else if (i == 3) {
                kVar = this.f940v.m38801d();
            } else {
                return;
            }
            f = 0.0f;
        } else {
            kVar = this.f937s.m38801d();
        }
        int size = this.f3781n0.size();
        C0815k kVar2 = null;
        for (int i2 = 0; i2 < size; i2++) {
            C0815k kVar3 = this.f3781n0.get(i2);
            if (kVar3.f3855b == 1) {
                int i3 = this.f3780m0;
                if (i3 == 0 || i3 == 2) {
                    float f2 = kVar3.f3846g;
                    f = f;
                    if (f2 < f) {
                        kVar2 = kVar3.f3845f;
                        f = f2;
                    }
                } else {
                    float f3 = kVar3.f3846g;
                    f = f;
                    if (f3 > f) {
                        kVar2 = kVar3.f3845f;
                        f = f3;
                    }
                }
            } else {
                return;
            }
        }
        if (C0799e.m35932j() != null) {
            C0799e.m35932j().f3776y++;
        }
        kVar.f3845f = kVar2;
        kVar.f3846g = f;
        kVar.m35847a();
        int i4 = this.f3780m0;
        if (i4 == 0) {
            this.f939u.m38801d().m35857a(kVar2, f);
        } else if (i4 == 1) {
            this.f937s.m38801d().m35857a(kVar2, f);
        } else if (i4 == 2) {
            this.f940v.m38801d().m35857a(kVar2, f);
        } else if (i4 == 3) {
            this.f938t.m38801d().m35857a(kVar2, f);
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    /* renamed from: a */
    public void mo35877a(int i) {
        C0815k kVar;
        ConstraintWidget constraintWidget = this.f887D;
        if (constraintWidget != null && ((C0808e) constraintWidget).m35887u(2)) {
            int i2 = this.f3780m0;
            if (i2 == 0) {
                kVar = this.f937s.m38801d();
            } else if (i2 == 1) {
                kVar = this.f939u.m38801d();
            } else if (i2 == 2) {
                kVar = this.f938t.m38801d();
            } else if (i2 == 3) {
                kVar = this.f940v.m38801d();
            } else {
                return;
            }
            kVar.m35854b(5);
            int i3 = this.f3780m0;
            if (i3 == 0 || i3 == 1) {
                this.f938t.m38801d().m35857a((C0815k) null, 0.0f);
                this.f940v.m38801d().m35857a((C0815k) null, 0.0f);
            } else {
                this.f937s.m38801d().m35857a((C0815k) null, 0.0f);
                this.f939u.m38801d().m35857a((C0815k) null, 0.0f);
            }
            this.f3781n0.clear();
            for (int i4 = 0; i4 < this.f3840l0; i4++) {
                ConstraintWidget constraintWidget2 = this.f3839k0[i4];
                if (this.f3782o0 || constraintWidget2.mo35874b()) {
                    int i5 = this.f3780m0;
                    C0815k d = i5 != 0 ? i5 != 1 ? i5 != 2 ? i5 != 3 ? null : constraintWidget2.f940v.m38801d() : constraintWidget2.f938t.m38801d() : constraintWidget2.f939u.m38801d() : constraintWidget2.f937s.m38801d();
                    if (d != null) {
                        this.f3781n0.add(d);
                        d.m35846a(kVar);
                    }
                }
            }
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    /* renamed from: a */
    public void mo35875a(C0799e eVar) {
        Object[] objArr;
        boolean z;
        int i;
        int i2;
        ConstraintAnchor[] constraintAnchorArr = this.f884A;
        constraintAnchorArr[0] = this.f937s;
        constraintAnchorArr[2] = this.f938t;
        constraintAnchorArr[1] = this.f939u;
        constraintAnchorArr[3] = this.f940v;
        int i3 = 0;
        while (true) {
            objArr = this.f884A;
            if (i3 >= objArr.length) {
                break;
            }
            objArr[i3].f881i = eVar.m35949a(objArr[i3]);
            i3++;
        }
        int i4 = this.f3780m0;
        if (i4 >= 0 && i4 < 4) {
            ConstraintAnchor constraintAnchor = objArr[i4];
            for (int i5 = 0; i5 < this.f3840l0; i5++) {
                ConstraintWidget constraintWidget = this.f3839k0[i5];
                if ((this.f3782o0 || constraintWidget.mo35874b()) && ((((i = this.f3780m0) == 0 || i == 1) && constraintWidget.m38746k() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) || (((i2 = this.f3780m0) == 2 || i2 == 3) && constraintWidget.m38732r() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT))) {
                    z = true;
                    break;
                }
            }
            z = false;
            int i6 = this.f3780m0;
            if (i6 == 0 || i6 == 1 ? m38744l().m38746k() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT : m38744l().m38732r() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                z = false;
            }
            for (int i7 = 0; i7 < this.f3840l0; i7++) {
                ConstraintWidget constraintWidget2 = this.f3839k0[i7];
                if (this.f3782o0 || constraintWidget2.mo35874b()) {
                    SolverVariable a = eVar.m35949a(constraintWidget2.f884A[this.f3780m0]);
                    ConstraintAnchor[] constraintAnchorArr2 = constraintWidget2.f884A;
                    int i8 = this.f3780m0;
                    constraintAnchorArr2[i8].f881i = a;
                    if (i8 == 0 || i8 == 2) {
                        eVar.m35946b(constraintAnchor.f881i, a, z);
                    } else {
                        eVar.m35956a(constraintAnchor.f881i, a, z);
                    }
                }
            }
            int i9 = this.f3780m0;
            if (i9 == 0) {
                eVar.m35958a(this.f939u.f881i, this.f937s.f881i, 0, 6);
                if (!z) {
                    eVar.m35958a(this.f937s.f881i, this.f887D.f939u.f881i, 0, 5);
                }
            } else if (i9 == 1) {
                eVar.m35958a(this.f937s.f881i, this.f939u.f881i, 0, 6);
                if (!z) {
                    eVar.m35958a(this.f937s.f881i, this.f887D.f937s.f881i, 0, 5);
                }
            } else if (i9 == 2) {
                eVar.m35958a(this.f940v.f881i, this.f938t.f881i, 0, 6);
                if (!z) {
                    eVar.m35958a(this.f938t.f881i, this.f887D.f940v.f881i, 0, 5);
                }
            } else if (i9 == 3) {
                eVar.m35958a(this.f938t.f881i, this.f940v.f881i, 0, 6);
                if (!z) {
                    eVar.m35958a(this.f938t.f881i, this.f887D.f938t.f881i, 0, 5);
                }
            }
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    /* renamed from: b */
    public boolean mo35874b() {
        return true;
    }

    /* renamed from: c */
    public void m35911c(boolean z) {
        this.f3782o0 = z;
    }

    /* renamed from: u */
    public void m35910u(int i) {
        this.f3780m0 = i;
    }
}

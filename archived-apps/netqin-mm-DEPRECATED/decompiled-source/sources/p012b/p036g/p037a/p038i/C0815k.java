package p012b.p036g.p037a.p038i;

import androidx.constraintlayout.solver.SolverVariable;
import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import p012b.p036g.p037a.C0799e;
/* renamed from: b.g.a.i.k */
/* loaded from: classes-dex2jar.jar:b/g/a/i/k.class */
public class C0815k extends C0817m {

    /* renamed from: c */
    public ConstraintAnchor f3842c;

    /* renamed from: d */
    public C0815k f3843d;

    /* renamed from: e */
    public float f3844e;

    /* renamed from: f */
    public C0815k f3845f;

    /* renamed from: g */
    public float f3846g;

    /* renamed from: i */
    public C0815k f3848i;

    /* renamed from: h */
    public int f3847h = 0;

    /* renamed from: j */
    public C0816l f3849j = null;

    /* renamed from: k */
    public int f3850k = 1;

    /* renamed from: l */
    public C0816l f3851l = null;

    /* renamed from: m */
    public int f3852m = 1;

    public C0815k(ConstraintAnchor constraintAnchor) {
        this.f3842c = constraintAnchor;
    }

    /* renamed from: a */
    public String m35860a(int i) {
        return i == 1 ? "DIRECT" : i == 2 ? "CENTER" : i == 3 ? "MATCH" : i == 4 ? "CHAIN" : i == 5 ? "BARRIER" : "UNCONNECTED";
    }

    /* renamed from: a */
    public void m35859a(int i, C0815k kVar, int i2) {
        this.f3847h = i;
        this.f3843d = kVar;
        this.f3844e = i2;
        kVar.m35846a(this);
    }

    /* renamed from: a */
    public void m35858a(C0799e eVar) {
        SolverVariable e = this.f3842c.m38800e();
        C0815k kVar = this.f3845f;
        if (kVar == null) {
            eVar.m35960a(e, (int) (this.f3846g + 0.5f));
        } else {
            eVar.m35958a(e, eVar.m35949a(kVar.f3842c), (int) (this.f3846g + 0.5f), 6);
        }
    }

    /* renamed from: a */
    public void m35857a(C0815k kVar, float f) {
        if (this.f3855b == 0 || !(this.f3845f == kVar || this.f3846g == f)) {
            this.f3845f = kVar;
            this.f3846g = f;
            if (this.f3855b == 1) {
                m35845b();
            }
            m35847a();
        }
    }

    /* renamed from: a */
    public void m35856a(C0815k kVar, int i) {
        this.f3843d = kVar;
        this.f3844e = i;
        kVar.m35846a(this);
    }

    /* renamed from: a */
    public void m35855a(C0815k kVar, int i, C0816l lVar) {
        this.f3843d = kVar;
        kVar.m35846a(this);
        this.f3849j = lVar;
        this.f3850k = i;
        lVar.m35846a(this);
    }

    /* renamed from: b */
    public void m35854b(int i) {
        this.f3847h = i;
    }

    /* renamed from: b */
    public void m35853b(C0815k kVar, float f) {
        this.f3848i = kVar;
    }

    /* renamed from: b */
    public void m35852b(C0815k kVar, int i, C0816l lVar) {
        this.f3848i = kVar;
        this.f3851l = lVar;
        this.f3852m = i;
    }

    @Override // p012b.p036g.p037a.p038i.C0817m
    /* renamed from: d */
    public void mo35843d() {
        super.mo35843d();
        this.f3843d = null;
        this.f3844e = 0.0f;
        this.f3849j = null;
        this.f3850k = 1;
        this.f3851l = null;
        this.f3852m = 1;
        this.f3845f = null;
        this.f3846g = 0.0f;
        this.f3848i = null;
        this.f3847h = 0;
    }

    @Override // p012b.p036g.p037a.p038i.C0817m
    /* renamed from: e */
    public void mo35842e() {
        C0815k kVar;
        C0815k kVar2;
        C0815k kVar3;
        C0815k kVar4;
        C0815k kVar5;
        C0815k kVar6;
        float f;
        float f2;
        ConstraintAnchor constraintAnchor;
        float f3;
        float f4;
        C0815k kVar7;
        if (this.f3855b != 1 && this.f3847h != 4) {
            C0816l lVar = this.f3849j;
            if (lVar != null) {
                if (lVar.f3855b == 1) {
                    this.f3844e = this.f3850k * lVar.f3853c;
                } else {
                    return;
                }
            }
            C0816l lVar2 = this.f3851l;
            if (lVar2 != null) {
                if (lVar2.f3855b == 1) {
                    float f5 = lVar2.f3853c;
                } else {
                    return;
                }
            }
            if (this.f3847h == 1 && ((kVar7 = this.f3843d) == null || kVar7.f3855b == 1)) {
                C0815k kVar8 = this.f3843d;
                if (kVar8 == null) {
                    this.f3845f = this;
                    this.f3846g = this.f3844e;
                } else {
                    this.f3845f = kVar8.f3845f;
                    this.f3846g = kVar8.f3846g + this.f3844e;
                }
                m35847a();
            } else if (this.f3847h == 2 && (kVar4 = this.f3843d) != null && kVar4.f3855b == 1 && (kVar5 = this.f3848i) != null && (kVar6 = kVar5.f3843d) != null && kVar6.f3855b == 1) {
                if (C0799e.m35932j() != null) {
                    C0799e.m35932j().f3773v++;
                }
                this.f3845f = this.f3843d.f3845f;
                C0815k kVar9 = this.f3848i;
                kVar9.f3845f = kVar9.f3843d.f3845f;
                ConstraintAnchor.Type type = this.f3842c.f875c;
                int i = 0;
                boolean z = true;
                if (type != ConstraintAnchor.Type.RIGHT) {
                    z = type == ConstraintAnchor.Type.BOTTOM;
                }
                if (z) {
                    f2 = this.f3843d.f3846g;
                    f = this.f3848i.f3843d.f3846g;
                } else {
                    f2 = this.f3848i.f3843d.f3846g;
                    f = this.f3843d.f3846g;
                }
                float f6 = f2 - f;
                ConstraintAnchor.Type type2 = this.f3842c.f875c;
                if (type2 == ConstraintAnchor.Type.LEFT || type2 == ConstraintAnchor.Type.RIGHT) {
                    f3 = f6 - this.f3842c.f874b.m38728t();
                    f4 = this.f3842c.f874b.f905V;
                } else {
                    f3 = f6 - constraintAnchor.f874b.m38748j();
                    f4 = this.f3842c.f874b.f906W;
                }
                i = this.f3842c.m38803b();
                int b = this.f3848i.f3842c.m38803b();
                if (this.f3842c.m38798g() == this.f3848i.f3842c.m38798g()) {
                    f4 = 0.5f;
                    b = 0;
                }
                float f7 = i;
                float f8 = b;
                float f9 = (f3 - f7) - f8;
                if (z) {
                    C0815k kVar10 = this.f3848i;
                    kVar10.f3846g = kVar10.f3843d.f3846g + f8 + (f9 * f4);
                    this.f3846g = (this.f3843d.f3846g - f7) - (f9 * (1.0f - f4));
                } else {
                    this.f3846g = this.f3843d.f3846g + f7 + (f9 * f4);
                    C0815k kVar11 = this.f3848i;
                    kVar11.f3846g = (kVar11.f3843d.f3846g - f8) - (f9 * (1.0f - f4));
                }
                m35847a();
                this.f3848i.m35847a();
            } else if (this.f3847h == 3 && (kVar = this.f3843d) != null && kVar.f3855b == 1 && (kVar2 = this.f3848i) != null && (kVar3 = kVar2.f3843d) != null && kVar3.f3855b == 1) {
                if (C0799e.m35932j() != null) {
                    C0799e.m35932j().f3774w++;
                }
                C0815k kVar12 = this.f3843d;
                this.f3845f = kVar12.f3845f;
                C0815k kVar13 = this.f3848i;
                C0815k kVar14 = kVar13.f3843d;
                kVar13.f3845f = kVar14.f3845f;
                this.f3846g = kVar12.f3846g + this.f3844e;
                kVar13.f3846g = kVar14.f3846g + kVar13.f3844e;
                m35847a();
                this.f3848i.m35847a();
            } else if (this.f3847h == 5) {
                this.f3842c.f874b.mo35912H();
            }
        }
    }

    /* renamed from: f */
    public float m35851f() {
        return this.f3846g;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0043, code lost:
        if (r0 == androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type.BOTTOM) goto L_0x0046;
     */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m35850g() {
        /*
            r4 = this;
            r0 = r4
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r0 = r0.f3842c
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r0 = r0.m38798g()
            r5 = r0
            r0 = r5
            if (r0 != 0) goto L_0x000d
            return
        L_0x000d:
            r0 = r5
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r0 = r0.m38798g()
            r1 = r4
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r1 = r1.f3842c
            if (r0 != r1) goto L_0x0025
            r0 = r4
            r1 = 4
            r0.f3847h = r1
            r0 = r5
            b.g.a.i.k r0 = r0.m38801d()
            r1 = 4
            r0.f3847h = r1
        L_0x0025:
            r0 = r4
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r0 = r0.f3842c
            int r0 = r0.m38803b()
            r6 = r0
            r0 = r4
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r0 = r0.f3842c
            androidx.constraintlayout.solver.widgets.ConstraintAnchor$Type r0 = r0.f875c
            r7 = r0
            r0 = r7
            androidx.constraintlayout.solver.widgets.ConstraintAnchor$Type r1 = androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type.RIGHT
            if (r0 == r1) goto L_0x0046
            r0 = r6
            r8 = r0
            r0 = r7
            androidx.constraintlayout.solver.widgets.ConstraintAnchor$Type r1 = androidx.constraintlayout.solver.widgets.ConstraintAnchor.Type.BOTTOM
            if (r0 != r1) goto L_0x004a
        L_0x0046:
            r0 = r6
            int r0 = -r0
            r8 = r0
        L_0x004a:
            r0 = r4
            r1 = r5
            b.g.a.i.k r1 = r1.m38801d()
            r2 = r8
            r0.m35856a(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p036g.p037a.p038i.C0815k.m35850g():void");
    }

    public String toString() {
        if (this.f3855b != 1) {
            return "{ " + this.f3842c + " UNRESOLVED} type: " + m35860a(this.f3847h);
        } else if (this.f3845f == this) {
            return "[" + this.f3842c + ", RESOLVED: " + this.f3846g + "]  type: " + m35860a(this.f3847h);
        } else {
            return "[" + this.f3842c + ", RESOLVED: " + this.f3845f + ":" + this.f3846g + "] type: " + m35860a(this.f3847h);
        }
    }
}

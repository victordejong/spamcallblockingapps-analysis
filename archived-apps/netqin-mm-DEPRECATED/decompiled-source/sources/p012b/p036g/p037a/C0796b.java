package p012b.p036g.p037a;

import androidx.constraintlayout.solver.SolverVariable;
import p012b.p036g.p037a.C0799e;
/* renamed from: b.g.a.b */
/* loaded from: classes-dex2jar.jar:b/g/a/b.class */
public class C0796b implements C0799e.AbstractC0800a {

    /* renamed from: c */
    public boolean f3728c;

    /* renamed from: d */
    public final C0795a f3729d;

    /* renamed from: a */
    public SolverVariable f3726a = null;

    /* renamed from: b */
    public float f3727b = 0.0f;

    /* renamed from: e */
    public boolean f3730e = false;

    public C0796b(C0797c cVar) {
        this.f3729d = new C0795a(this, cVar);
    }

    @Override // p012b.p036g.p037a.C0799e.AbstractC0800a
    /* renamed from: a */
    public SolverVariable mo35929a(C0799e eVar, boolean[] zArr) {
        return this.f3729d.m35988a(zArr, (SolverVariable) null);
    }

    /* renamed from: a */
    public C0796b m35983a(float f, float f2, float f3, SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4) {
        this.f3727b = 0.0f;
        if (f2 == 0.0f || f == f3) {
            this.f3729d.m35995a(solverVariable, 1.0f);
            this.f3729d.m35995a(solverVariable2, -1.0f);
            this.f3729d.m35995a(solverVariable4, 1.0f);
            this.f3729d.m35995a(solverVariable3, -1.0f);
        } else if (f == 0.0f) {
            this.f3729d.m35995a(solverVariable, 1.0f);
            this.f3729d.m35995a(solverVariable2, -1.0f);
        } else if (f3 == 0.0f) {
            this.f3729d.m35995a(solverVariable3, 1.0f);
            this.f3729d.m35995a(solverVariable4, -1.0f);
        } else {
            float f4 = (f / f2) / (f3 / f2);
            this.f3729d.m35995a(solverVariable, 1.0f);
            this.f3729d.m35995a(solverVariable2, -1.0f);
            this.f3729d.m35995a(solverVariable4, f4);
            this.f3729d.m35995a(solverVariable3, -f4);
        }
        return this;
    }

    /* renamed from: a */
    public C0796b m35982a(SolverVariable solverVariable, int i) {
        this.f3729d.m35995a(solverVariable, i);
        return this;
    }

    /* renamed from: a */
    public C0796b m35981a(SolverVariable solverVariable, SolverVariable solverVariable2, int i) {
        boolean z = false;
        z = false;
        if (i != 0) {
            int i2 = i;
            if (i < 0) {
                i2 = i * (-1);
                z = true;
            }
            this.f3727b = i2;
        }
        if (!z) {
            this.f3729d.m35995a(solverVariable, -1.0f);
            this.f3729d.m35995a(solverVariable2, 1.0f);
        } else {
            this.f3729d.m35995a(solverVariable, 1.0f);
            this.f3729d.m35995a(solverVariable2, -1.0f);
        }
        return this;
    }

    /* renamed from: a */
    public C0796b m35980a(SolverVariable solverVariable, SolverVariable solverVariable2, int i, float f, SolverVariable solverVariable3, SolverVariable solverVariable4, int i2) {
        if (solverVariable2 == solverVariable3) {
            this.f3729d.m35995a(solverVariable, 1.0f);
            this.f3729d.m35995a(solverVariable4, 1.0f);
            this.f3729d.m35995a(solverVariable2, -2.0f);
            return this;
        }
        if (f == 0.5f) {
            this.f3729d.m35995a(solverVariable, 1.0f);
            this.f3729d.m35995a(solverVariable2, -1.0f);
            this.f3729d.m35995a(solverVariable3, -1.0f);
            this.f3729d.m35995a(solverVariable4, 1.0f);
            if (i > 0 || i2 > 0) {
                this.f3727b = (-i) + i2;
            }
        } else if (f <= 0.0f) {
            this.f3729d.m35995a(solverVariable, -1.0f);
            this.f3729d.m35995a(solverVariable2, 1.0f);
            this.f3727b = i;
        } else if (f >= 1.0f) {
            this.f3729d.m35995a(solverVariable3, -1.0f);
            this.f3729d.m35995a(solverVariable4, 1.0f);
            this.f3727b = i2;
        } else {
            float f2 = 1.0f - f;
            this.f3729d.m35995a(solverVariable, f2 * 1.0f);
            this.f3729d.m35995a(solverVariable2, f2 * (-1.0f));
            this.f3729d.m35995a(solverVariable3, (-1.0f) * f);
            this.f3729d.m35995a(solverVariable4, 1.0f * f);
            if (i > 0 || i2 > 0) {
                this.f3727b = ((-i) * f2) + (i2 * f);
            }
        }
        return this;
    }

    /* renamed from: a */
    public C0796b m35979a(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, float f) {
        this.f3729d.m35995a(solverVariable, -1.0f);
        this.f3729d.m35995a(solverVariable2, 1.0f - f);
        this.f3729d.m35995a(solverVariable3, f);
        return this;
    }

    /* renamed from: a */
    public C0796b m35978a(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, int i) {
        boolean z = false;
        z = false;
        if (i != 0) {
            int i2 = i;
            if (i < 0) {
                i2 = i * (-1);
                z = true;
            }
            this.f3727b = i2;
        }
        if (!z) {
            this.f3729d.m35995a(solverVariable, -1.0f);
            this.f3729d.m35995a(solverVariable2, 1.0f);
            this.f3729d.m35995a(solverVariable3, 1.0f);
        } else {
            this.f3729d.m35995a(solverVariable, 1.0f);
            this.f3729d.m35995a(solverVariable2, -1.0f);
            this.f3729d.m35995a(solverVariable3, -1.0f);
        }
        return this;
    }

    /* renamed from: a */
    public C0796b m35977a(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4, float f) {
        this.f3729d.m35995a(solverVariable, -1.0f);
        this.f3729d.m35995a(solverVariable2, 1.0f);
        this.f3729d.m35995a(solverVariable3, f);
        this.f3729d.m35995a(solverVariable4, -f);
        return this;
    }

    /* renamed from: a */
    public C0796b m35975a(C0799e eVar, int i) {
        this.f3729d.m35995a(eVar.m35962a(i, "ep"), 1.0f);
        this.f3729d.m35995a(eVar.m35962a(i, "em"), -1.0f);
        return this;
    }

    /* renamed from: a */
    public void m35984a() {
        float f = this.f3727b;
        if (f < 0.0f) {
            this.f3727b = f * (-1.0f);
            this.f3729d.m35987b();
        }
    }

    @Override // p012b.p036g.p037a.C0799e.AbstractC0800a
    /* renamed from: a */
    public void mo35931a(SolverVariable solverVariable) {
        int i = solverVariable.f866d;
        float f = 1.0f;
        if (i != 1) {
            if (i == 2) {
                f = 1000.0f;
            } else if (i == 3) {
                f = 1000000.0f;
            } else if (i == 4) {
                f = 1.0E9f;
            } else if (i == 5) {
                f = 1.0E12f;
            }
        }
        this.f3729d.m35995a(solverVariable, f);
    }

    @Override // p012b.p036g.p037a.C0799e.AbstractC0800a
    /* renamed from: a */
    public void mo35930a(C0799e.AbstractC0800a aVar) {
        if (aVar instanceof C0796b) {
            C0796b bVar = (C0796b) aVar;
            this.f3726a = null;
            this.f3729d.m35999a();
            int i = 0;
            while (true) {
                C0795a aVar2 = bVar.f3729d;
                if (i < aVar2.f3715a) {
                    this.f3729d.m35994a(aVar2.m35997a(i), bVar.f3729d.m35986b(i), true);
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    /* renamed from: a */
    public boolean m35976a(C0799e eVar) {
        boolean z;
        SolverVariable a = this.f3729d.m35989a(eVar);
        if (a == null) {
            z = true;
        } else {
            m35965d(a);
            z = false;
        }
        if (this.f3729d.f3715a == 0) {
            this.f3730e = true;
        }
        return z;
    }

    /* renamed from: b */
    public C0796b m35972b(SolverVariable solverVariable, int i) {
        this.f3726a = solverVariable;
        float f = i;
        solverVariable.f867e = f;
        this.f3727b = f;
        this.f3730e = true;
        return this;
    }

    /* renamed from: b */
    public C0796b m35971b(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, int i) {
        boolean z = false;
        z = false;
        if (i != 0) {
            int i2 = i;
            if (i < 0) {
                i2 = i * (-1);
                z = true;
            }
            this.f3727b = i2;
        }
        if (!z) {
            this.f3729d.m35995a(solverVariable, -1.0f);
            this.f3729d.m35995a(solverVariable2, 1.0f);
            this.f3729d.m35995a(solverVariable3, -1.0f);
        } else {
            this.f3729d.m35995a(solverVariable, 1.0f);
            this.f3729d.m35995a(solverVariable2, -1.0f);
            this.f3729d.m35995a(solverVariable3, 1.0f);
        }
        return this;
    }

    /* renamed from: b */
    public C0796b m35970b(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4, float f) {
        this.f3729d.m35995a(solverVariable3, 0.5f);
        this.f3729d.m35995a(solverVariable4, 0.5f);
        this.f3729d.m35995a(solverVariable, -0.5f);
        this.f3729d.m35995a(solverVariable2, -0.5f);
        this.f3727b = -f;
        return this;
    }

    /* renamed from: b */
    public boolean m35974b() {
        SolverVariable solverVariable = this.f3726a;
        return solverVariable != null && (solverVariable.f869g == SolverVariable.Type.UNRESTRICTED || this.f3727b >= 0.0f);
    }

    /* renamed from: b */
    public boolean m35973b(SolverVariable solverVariable) {
        return this.f3729d.m35996a(solverVariable);
    }

    /* renamed from: c */
    public SolverVariable m35968c(SolverVariable solverVariable) {
        return this.f3729d.m35988a((boolean[]) null, solverVariable);
    }

    /* renamed from: c */
    public C0796b m35967c(SolverVariable solverVariable, int i) {
        if (i < 0) {
            this.f3727b = i * (-1);
            this.f3729d.m35995a(solverVariable, 1.0f);
        } else {
            this.f3727b = i;
            this.f3729d.m35995a(solverVariable, -1.0f);
        }
        return this;
    }

    /* renamed from: c */
    public boolean m35969c() {
        return this.f3726a == null && this.f3727b == 0.0f && this.f3729d.f3715a == 0;
    }

    @Override // p012b.p036g.p037a.C0799e.AbstractC0800a
    public void clear() {
        this.f3729d.m35999a();
        this.f3726a = null;
        this.f3727b = 0.0f;
    }

    /* renamed from: d */
    public void m35966d() {
        this.f3726a = null;
        this.f3729d.m35999a();
        this.f3727b = 0.0f;
        this.f3730e = false;
    }

    /* renamed from: d */
    public void m35965d(SolverVariable solverVariable) {
        SolverVariable solverVariable2 = this.f3726a;
        if (solverVariable2 != null) {
            this.f3729d.m35995a(solverVariable2, -1.0f);
            this.f3726a = null;
        }
        float a = this.f3729d.m35992a(solverVariable, true) * (-1.0f);
        this.f3726a = solverVariable;
        if (a != 1.0f) {
            this.f3727b /= a;
            this.f3729d.m35998a(a);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0163  */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String m35964e() {
        /*
            Method dump skipped, instructions count: 438
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p036g.p037a.C0796b.m35964e():java.lang.String");
    }

    @Override // p012b.p036g.p037a.C0799e.AbstractC0800a
    public SolverVariable getKey() {
        return this.f3726a;
    }

    public String toString() {
        return m35964e();
    }
}

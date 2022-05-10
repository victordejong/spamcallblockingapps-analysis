package p012b.p036g.p037a.p038i;

import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import p012b.p036g.p037a.C0799e;
/* renamed from: b.g.a.i.i */
/* loaded from: classes-dex2jar.jar:b/g/a/i/i.class */
public class C0813i {

    /* renamed from: a */
    public static boolean[] f3841a = new boolean[3];

    /* renamed from: a */
    public static void m35865a(int i, ConstraintWidget constraintWidget) {
        constraintWidget.m38789J();
        C0815k d = constraintWidget.f937s.m38801d();
        C0815k d2 = constraintWidget.f938t.m38801d();
        C0815k d3 = constraintWidget.f939u.m38801d();
        C0815k d4 = constraintWidget.f940v.m38801d();
        boolean z = (i & 8) == 8;
        boolean z2 = constraintWidget.f886C[0] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && m35864a(constraintWidget, 0);
        if (!(d.f3847h == 4 || d3.f3847h == 4)) {
            if (constraintWidget.f886C[0] == ConstraintWidget.DimensionBehaviour.FIXED || (z2 && constraintWidget.m38730s() == 8)) {
                if (constraintWidget.f937s.f876d == null && constraintWidget.f939u.f876d == null) {
                    d.m35854b(1);
                    d3.m35854b(1);
                    if (z) {
                        d3.m35855a(d, 1, constraintWidget.m38740n());
                    } else {
                        d3.m35856a(d, constraintWidget.m38728t());
                    }
                } else if (constraintWidget.f937s.f876d != null && constraintWidget.f939u.f876d == null) {
                    d.m35854b(1);
                    d3.m35854b(1);
                    if (z) {
                        d3.m35855a(d, 1, constraintWidget.m38740n());
                    } else {
                        d3.m35856a(d, constraintWidget.m38728t());
                    }
                } else if (constraintWidget.f937s.f876d == null && constraintWidget.f939u.f876d != null) {
                    d.m35854b(1);
                    d3.m35854b(1);
                    d.m35856a(d3, -constraintWidget.m38728t());
                    if (z) {
                        d.m35855a(d3, -1, constraintWidget.m38740n());
                    } else {
                        d.m35856a(d3, -constraintWidget.m38728t());
                    }
                } else if (!(constraintWidget.f937s.f876d == null || constraintWidget.f939u.f876d == null)) {
                    d.m35854b(2);
                    d3.m35854b(2);
                    if (z) {
                        constraintWidget.m38740n().m35846a(d);
                        constraintWidget.m38740n().m35846a(d3);
                        d.m35852b(d3, -1, constraintWidget.m38740n());
                        d3.m35852b(d, 1, constraintWidget.m38740n());
                    } else {
                        d.m35853b(d3, -constraintWidget.m38728t());
                        d3.m35853b(d, constraintWidget.m38728t());
                    }
                }
            } else if (z2) {
                int t = constraintWidget.m38728t();
                d.m35854b(1);
                d3.m35854b(1);
                if (constraintWidget.f937s.f876d == null && constraintWidget.f939u.f876d == null) {
                    if (z) {
                        d3.m35855a(d, 1, constraintWidget.m38740n());
                    } else {
                        d3.m35856a(d, t);
                    }
                } else if (constraintWidget.f937s.f876d == null || constraintWidget.f939u.f876d != null) {
                    if (constraintWidget.f937s.f876d != null || constraintWidget.f939u.f876d == null) {
                        if (!(constraintWidget.f937s.f876d == null || constraintWidget.f939u.f876d == null)) {
                            if (z) {
                                constraintWidget.m38740n().m35846a(d);
                                constraintWidget.m38740n().m35846a(d3);
                            }
                            if (constraintWidget.f890G == 0.0f) {
                                d.m35854b(3);
                                d3.m35854b(3);
                                d.m35853b(d3, 0.0f);
                                d3.m35853b(d, 0.0f);
                            } else {
                                d.m35854b(2);
                                d3.m35854b(2);
                                d.m35853b(d3, -t);
                                d3.m35853b(d, t);
                                constraintWidget.m38735p(t);
                            }
                        }
                    } else if (z) {
                        d.m35855a(d3, -1, constraintWidget.m38740n());
                    } else {
                        d.m35856a(d3, -t);
                    }
                } else if (z) {
                    d3.m35855a(d, 1, constraintWidget.m38740n());
                } else {
                    d3.m35856a(d, t);
                }
            }
        }
        boolean z3 = constraintWidget.f886C[1] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && m35864a(constraintWidget, 1);
        if (d2.f3847h != 4 && d4.f3847h != 4) {
            if (constraintWidget.f886C[1] == ConstraintWidget.DimensionBehaviour.FIXED || (z3 && constraintWidget.m38730s() == 8)) {
                if (constraintWidget.f938t.f876d == null && constraintWidget.f940v.f876d == null) {
                    d2.m35854b(1);
                    d4.m35854b(1);
                    if (z) {
                        d4.m35855a(d2, 1, constraintWidget.m38742m());
                    } else {
                        d4.m35856a(d2, constraintWidget.m38748j());
                    }
                    ConstraintAnchor constraintAnchor = constraintWidget.f941w;
                    if (constraintAnchor.f876d != null) {
                        constraintAnchor.m38801d().m35854b(1);
                        d2.m35859a(1, constraintWidget.f941w.m38801d(), -constraintWidget.f900Q);
                    }
                } else if (constraintWidget.f938t.f876d != null && constraintWidget.f940v.f876d == null) {
                    d2.m35854b(1);
                    d4.m35854b(1);
                    if (z) {
                        d4.m35855a(d2, 1, constraintWidget.m38742m());
                    } else {
                        d4.m35856a(d2, constraintWidget.m38748j());
                    }
                    if (constraintWidget.f900Q > 0) {
                        constraintWidget.f941w.m38801d().m35859a(1, d2, constraintWidget.f900Q);
                    }
                } else if (constraintWidget.f938t.f876d == null && constraintWidget.f940v.f876d != null) {
                    d2.m35854b(1);
                    d4.m35854b(1);
                    if (z) {
                        d2.m35855a(d4, -1, constraintWidget.m38742m());
                    } else {
                        d2.m35856a(d4, -constraintWidget.m38748j());
                    }
                    if (constraintWidget.f900Q > 0) {
                        constraintWidget.f941w.m38801d().m35859a(1, d2, constraintWidget.f900Q);
                    }
                } else if (constraintWidget.f938t.f876d != null && constraintWidget.f940v.f876d != null) {
                    d2.m35854b(2);
                    d4.m35854b(2);
                    if (z) {
                        d2.m35852b(d4, -1, constraintWidget.m38742m());
                        d4.m35852b(d2, 1, constraintWidget.m38742m());
                        constraintWidget.m38742m().m35846a(d2);
                        constraintWidget.m38740n().m35846a(d4);
                    } else {
                        d2.m35853b(d4, -constraintWidget.m38748j());
                        d4.m35853b(d2, constraintWidget.m38748j());
                    }
                    if (constraintWidget.f900Q > 0) {
                        constraintWidget.f941w.m38801d().m35859a(1, d2, constraintWidget.f900Q);
                    }
                }
            } else if (z3) {
                int j = constraintWidget.m38748j();
                d2.m35854b(1);
                d4.m35854b(1);
                if (constraintWidget.f938t.f876d == null && constraintWidget.f940v.f876d == null) {
                    if (z) {
                        d4.m35855a(d2, 1, constraintWidget.m38742m());
                    } else {
                        d4.m35856a(d2, j);
                    }
                } else if (constraintWidget.f938t.f876d == null || constraintWidget.f940v.f876d != null) {
                    if (constraintWidget.f938t.f876d != null || constraintWidget.f940v.f876d == null) {
                        if (constraintWidget.f938t.f876d != null && constraintWidget.f940v.f876d != null) {
                            if (z) {
                                constraintWidget.m38742m().m35846a(d2);
                                constraintWidget.m38740n().m35846a(d4);
                            }
                            if (constraintWidget.f890G == 0.0f) {
                                d2.m35854b(3);
                                d4.m35854b(3);
                                d2.m35853b(d4, 0.0f);
                                d4.m35853b(d2, 0.0f);
                                return;
                            }
                            d2.m35854b(2);
                            d4.m35854b(2);
                            d2.m35853b(d4, -j);
                            d4.m35853b(d2, j);
                            constraintWidget.m38751h(j);
                            if (constraintWidget.f900Q > 0) {
                                constraintWidget.f941w.m38801d().m35859a(1, d2, constraintWidget.f900Q);
                            }
                        }
                    } else if (z) {
                        d2.m35855a(d4, -1, constraintWidget.m38742m());
                    } else {
                        d2.m35856a(d4, -j);
                    }
                } else if (z) {
                    d4.m35855a(d2, 1, constraintWidget.m38742m());
                } else {
                    d4.m35856a(d2, j);
                }
            }
        }
    }

    /* renamed from: a */
    public static void m35863a(ConstraintWidget constraintWidget, int i, int i2) {
        int i3 = i * 2;
        int i4 = i3 + 1;
        constraintWidget.f884A[i3].m38801d().f3845f = constraintWidget.m38744l().f937s.m38801d();
        constraintWidget.f884A[i3].m38801d().f3846g = i2;
        constraintWidget.f884A[i3].m38801d().f3855b = 1;
        constraintWidget.f884A[i4].m38801d().f3845f = constraintWidget.f884A[i3].m38801d();
        constraintWidget.f884A[i4].m38801d().f3846g = constraintWidget.m38761d(i);
        constraintWidget.f884A[i4].m38801d().f3855b = 1;
    }

    /* renamed from: a */
    public static void m35861a(C0808e eVar, C0799e eVar2, ConstraintWidget constraintWidget) {
        if (eVar.f886C[0] != ConstraintWidget.DimensionBehaviour.WRAP_CONTENT && constraintWidget.f886C[0] == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
            int i = constraintWidget.f937s.f877e;
            int t = eVar.m38728t() - constraintWidget.f939u.f877e;
            ConstraintAnchor constraintAnchor = constraintWidget.f937s;
            constraintAnchor.f881i = eVar2.m35949a(constraintAnchor);
            ConstraintAnchor constraintAnchor2 = constraintWidget.f939u;
            constraintAnchor2.f881i = eVar2.m35949a(constraintAnchor2);
            eVar2.m35960a(constraintWidget.f937s.f881i, i);
            eVar2.m35960a(constraintWidget.f939u.f881i, t);
            constraintWidget.f910a = 2;
            constraintWidget.m38786a(i, t);
        }
        if (eVar.f886C[1] != ConstraintWidget.DimensionBehaviour.WRAP_CONTENT && constraintWidget.f886C[1] == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
            int i2 = constraintWidget.f938t.f877e;
            int j = eVar.m38748j() - constraintWidget.f940v.f877e;
            ConstraintAnchor constraintAnchor3 = constraintWidget.f938t;
            constraintAnchor3.f881i = eVar2.m35949a(constraintAnchor3);
            ConstraintAnchor constraintAnchor4 = constraintWidget.f940v;
            constraintAnchor4.f881i = eVar2.m35949a(constraintAnchor4);
            eVar2.m35960a(constraintWidget.f938t.f881i, i2);
            eVar2.m35960a(constraintWidget.f940v.f881i, j);
            if (constraintWidget.f900Q > 0 || constraintWidget.m38730s() == 8) {
                ConstraintAnchor constraintAnchor5 = constraintWidget.f941w;
                constraintAnchor5.f881i = eVar2.m35949a(constraintAnchor5);
                eVar2.m35960a(constraintWidget.f941w.f881i, constraintWidget.f900Q + i2);
            }
            constraintWidget.f912b = 2;
            constraintWidget.m38757e(i2, j);
        }
    }

    /* renamed from: a */
    public static boolean m35864a(ConstraintWidget constraintWidget, int i) {
        ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget.f886C;
        if (dimensionBehaviourArr[i] != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            return false;
        }
        char c = 1;
        if (constraintWidget.f890G == 0.0f) {
            return i == 0 ? constraintWidget.f918e == 0 && constraintWidget.f924h == 0 && constraintWidget.f926i == 0 : constraintWidget.f920f == 0 && constraintWidget.f929k == 0 && constraintWidget.f930l == 0;
        }
        if (i != 0) {
            c = 0;
        }
        if (dimensionBehaviourArr[c] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:169:0x0597, code lost:
        if (r21 != false) goto L_0x0587;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0225, code lost:
        if (r0[r9].f876d.f874b == r10) goto L_0x0230;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m35862a(p012b.p036g.p037a.p038i.C0808e r6, p012b.p036g.p037a.C0799e r7, int r8, int r9, p012b.p036g.p037a.p038i.C0807d r10) {
        /*
            Method dump skipped, instructions count: 1848
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p036g.p037a.p038i.C0813i.m35862a(b.g.a.i.e, b.g.a.e, int, int, b.g.a.i.d):boolean");
    }
}

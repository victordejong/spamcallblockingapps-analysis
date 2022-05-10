package p131c.p161d.p170b.p188c.p196c1.p197d;

import p131c.p161d.p170b.p188c.p203g1.C2894o;
import p131c.p161d.p170b.p188c.p203g1.C2904v;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3054q;
/* renamed from: c.d.b.c.c1.d.b */
/* loaded from: classes-dex2jar.jar:c/d/b/c/c1/d/b.class */
public final class C2765b {
    /* renamed from: a */
    public static int m29078a(C2904v vVar) {
        int i = 0;
        while (vVar.m28552a() != 0) {
            int r = vVar.m28524r();
            int i2 = i + r;
            i = i2;
            if (r != 255) {
                return i2;
            }
        }
        return -1;
    }

    /* renamed from: a */
    public static void m29079a(long j, C2904v vVar, AbstractC3054q[] qVarArr) {
        int i;
        while (true) {
            boolean z = true;
            if (vVar.m28552a() > 1) {
                int a = m29078a(vVar);
                int a2 = m29078a(vVar);
                int c = vVar.m28543c() + a2;
                if (a2 == -1 || a2 > vVar.m28552a()) {
                    C2894o.m28594d("CeaUtil", "Skipping remainder of malformed SEI NAL unit.");
                    i = vVar.m28541d();
                } else {
                    i = c;
                    if (a == 4) {
                        i = c;
                        if (a2 >= 8) {
                            int r = vVar.m28524r();
                            int x = vVar.m28518x();
                            int g = x == 49 ? vVar.m28535g() : 0;
                            int r2 = vVar.m28524r();
                            if (x == 47) {
                                vVar.m28536f(1);
                            }
                            boolean z2 = r == 181 && (x == 49 || x == 47) && r2 == 3;
                            boolean z3 = z2;
                            if (x == 49) {
                                if (g != 1195456820) {
                                    z = false;
                                }
                                z3 = z2 & z;
                            }
                            i = c;
                            if (z3) {
                                m29077b(j, vVar, qVarArr);
                                i = c;
                            }
                        }
                    }
                }
                vVar.m28538e(i);
            } else {
                return;
            }
        }
    }

    /* renamed from: b */
    public static void m29077b(long j, C2904v vVar, AbstractC3054q[] qVarArr) {
        int r = vVar.m28524r();
        if ((r & 64) != 0) {
            vVar.m28536f(1);
            int i = (r & 31) * 3;
            int c = vVar.m28543c();
            for (AbstractC3054q qVar : qVarArr) {
                vVar.m28538e(c);
                qVar.mo28036a(vVar, i);
                qVar.mo28037a(j, 1, i, 0, null);
            }
        }
    }
}

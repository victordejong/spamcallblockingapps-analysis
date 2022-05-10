package p131c.p161d.p170b.p188c.p198d1;

import p131c.p161d.p170b.p188c.C2961p0;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
/* renamed from: c.d.b.c.d1.i */
/* loaded from: classes-dex2jar.jar:c/d/b/c/d1/i.class */
public final class C2786i {

    /* renamed from: a */
    public final int f10137a;

    /* renamed from: b */
    public final C2961p0[] f10138b;

    /* renamed from: c */
    public final C2783g f10139c;

    /* renamed from: d */
    public final Object f10140d;

    public C2786i(C2961p0[] p0VarArr, AbstractC2780f[] fVarArr, Object obj) {
        this.f10138b = p0VarArr;
        this.f10139c = new C2783g(fVarArr);
        this.f10140d = obj;
        this.f10137a = p0VarArr.length;
    }

    /* renamed from: a */
    public boolean m29014a(int i) {
        return this.f10138b[i] != null;
    }

    /* renamed from: a */
    public boolean m29013a(C2786i iVar) {
        if (iVar == null || iVar.f10139c.f10133a != this.f10139c.f10133a) {
            return false;
        }
        for (int i = 0; i < this.f10139c.f10133a; i++) {
            if (!m29012a(iVar, i)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    public boolean m29012a(C2786i iVar, int i) {
        if (iVar == null) {
            return false;
        }
        boolean z = false;
        if (C2885h0.m28669a(this.f10138b[i], iVar.f10138b[i])) {
            z = false;
            if (C2885h0.m28669a(this.f10139c.m29019a(i), iVar.f10139c.m29019a(i))) {
                z = true;
            }
        }
        return z;
    }
}

package p081h.p203i.p204a.p224e.p259j.p269j;

import java.io.IOException;
/* renamed from: h.i.a.e.j.j.q */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/q.class */
public final class C7896q extends AbstractC7788d5<C7896q> {

    /* renamed from: e */
    public static volatile C7896q[] f18517e;

    /* renamed from: c */
    public String f18518c = null;

    /* renamed from: d */
    public String f18519d = null;

    public C7896q() {
        this.f18218b = null;
        this.f18376a = -1;
    }

    /* renamed from: d */
    public static C7896q[] m19089d() {
        if (f18517e == null) {
            synchronized (C7822h5.f18340b) {
                if (f18517e == null) {
                    f18517e = new C7896q[0];
                }
            }
        }
        return f18517e;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7788d5, p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7843j5
    /* renamed from: a */
    public final int mo18862a() {
        int a = super.mo18862a();
        String str = this.f18518c;
        int i = a;
        if (str != null) {
            i = a + C7764a5.m19528b(1, str);
        }
        String str2 = this.f18519d;
        int i2 = i;
        if (str2 != null) {
            i2 = i + C7764a5.m19528b(2, str2);
        }
        return i2;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7843j5
    /* renamed from: a */
    public final /* synthetic */ AbstractC7843j5 mo18860a(C7970z4 z4Var) throws IOException {
        while (true) {
            int c = z4Var.m18726c();
            if (c == 0) {
                return this;
            }
            if (c == 10) {
                this.f18518c = z4Var.m18729b();
            } else if (c == 18) {
                this.f18519d = z4Var.m18729b();
            } else if (!super.m19482a(z4Var, c)) {
                return this;
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7788d5, p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7843j5
    /* renamed from: a */
    public final void mo18861a(C7764a5 a5Var) throws IOException {
        String str = this.f18518c;
        if (str != null) {
            a5Var.m19538a(1, str);
        }
        String str2 = this.f18519d;
        if (str2 != null) {
            a5Var.m19538a(2, str2);
        }
        super.mo18861a(a5Var);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C7896q)) {
            return false;
        }
        C7896q qVar = (C7896q) obj;
        String str = this.f18518c;
        if (str == null) {
            if (qVar.f18518c != null) {
                return false;
            }
        } else if (!str.equals(qVar.f18518c)) {
            return false;
        }
        String str2 = this.f18519d;
        if (str2 == null) {
            if (qVar.f18519d != null) {
                return false;
            }
        } else if (!str2.equals(qVar.f18519d)) {
            return false;
        }
        C7805f5 f5Var = this.f18218b;
        if (f5Var != null && !f5Var.m19402d()) {
            return this.f18218b.equals(qVar.f18218b);
        }
        C7805f5 f5Var2 = qVar.f18218b;
        return f5Var2 == null || f5Var2.m19402d();
    }

    public final int hashCode() {
        int hashCode = C7896q.class.getName().hashCode();
        String str = this.f18518c;
        int hashCode2 = str == null ? 0 : str.hashCode();
        String str2 = this.f18519d;
        int hashCode3 = str2 == null ? 0 : str2.hashCode();
        C7805f5 f5Var = this.f18218b;
        int i = 0;
        if (f5Var != null) {
            i = f5Var.m19402d() ? 0 : this.f18218b.hashCode();
        }
        return ((((((hashCode + 527) * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }
}

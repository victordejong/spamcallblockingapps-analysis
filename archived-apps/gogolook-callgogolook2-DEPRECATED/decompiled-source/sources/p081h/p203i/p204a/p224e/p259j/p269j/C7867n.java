package p081h.p203i.p204a.p224e.p259j.p269j;

import java.io.IOException;
/* renamed from: h.i.a.e.j.j.n */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/n.class */
public final class C7867n extends AbstractC7788d5<C7867n> {

    /* renamed from: e */
    public static volatile C7867n[] f18420e;

    /* renamed from: c */
    public String f18421c = null;

    /* renamed from: d */
    public String f18422d = null;

    public C7867n() {
        this.f18218b = null;
        this.f18376a = -1;
    }

    /* renamed from: d */
    public static C7867n[] m19171d() {
        if (f18420e == null) {
            synchronized (C7822h5.f18340b) {
                if (f18420e == null) {
                    f18420e = new C7867n[0];
                }
            }
        }
        return f18420e;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7788d5, p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7843j5
    /* renamed from: a */
    public final int mo18862a() {
        int a = super.mo18862a();
        String str = this.f18421c;
        int i = a;
        if (str != null) {
            i = a + C7764a5.m19528b(1, str);
        }
        String str2 = this.f18422d;
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
                this.f18421c = z4Var.m18729b();
            } else if (c == 18) {
                this.f18422d = z4Var.m18729b();
            } else if (!super.m19482a(z4Var, c)) {
                return this;
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7788d5, p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7843j5
    /* renamed from: a */
    public final void mo18861a(C7764a5 a5Var) throws IOException {
        String str = this.f18421c;
        if (str != null) {
            a5Var.m19538a(1, str);
        }
        String str2 = this.f18422d;
        if (str2 != null) {
            a5Var.m19538a(2, str2);
        }
        super.mo18861a(a5Var);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C7867n)) {
            return false;
        }
        C7867n nVar = (C7867n) obj;
        String str = this.f18421c;
        if (str == null) {
            if (nVar.f18421c != null) {
                return false;
            }
        } else if (!str.equals(nVar.f18421c)) {
            return false;
        }
        String str2 = this.f18422d;
        if (str2 == null) {
            if (nVar.f18422d != null) {
                return false;
            }
        } else if (!str2.equals(nVar.f18422d)) {
            return false;
        }
        C7805f5 f5Var = this.f18218b;
        if (f5Var != null && !f5Var.m19402d()) {
            return this.f18218b.equals(nVar.f18218b);
        }
        C7805f5 f5Var2 = nVar.f18218b;
        return f5Var2 == null || f5Var2.m19402d();
    }

    public final int hashCode() {
        int hashCode = C7867n.class.getName().hashCode();
        String str = this.f18421c;
        int hashCode2 = str == null ? 0 : str.hashCode();
        String str2 = this.f18422d;
        int hashCode3 = str2 == null ? 0 : str2.hashCode();
        C7805f5 f5Var = this.f18218b;
        int i = 0;
        if (f5Var != null) {
            i = f5Var.m19402d() ? 0 : this.f18218b.hashCode();
        }
        return ((((((hashCode + 527) * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }
}

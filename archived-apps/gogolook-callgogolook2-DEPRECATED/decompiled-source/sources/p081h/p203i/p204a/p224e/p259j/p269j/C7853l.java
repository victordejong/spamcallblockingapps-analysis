package p081h.p203i.p204a.p224e.p259j.p269j;

import java.io.IOException;
/* renamed from: h.i.a.e.j.j.l */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/l.class */
public final class C7853l extends AbstractC7788d5<C7853l> {

    /* renamed from: c */
    public String f18396c = null;

    /* renamed from: d */
    public String f18397d = null;

    /* renamed from: e */
    public String f18398e = null;

    public C7853l() {
        this.f18218b = null;
        this.f18376a = -1;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7788d5, p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7843j5
    /* renamed from: a */
    public final int mo18862a() {
        int a = super.mo18862a();
        String str = this.f18396c;
        int i = a;
        if (str != null) {
            i = a + C7764a5.m19528b(1, str);
        }
        String str2 = this.f18397d;
        int i2 = i;
        if (str2 != null) {
            i2 = i + C7764a5.m19528b(2, str2);
        }
        String str3 = this.f18398e;
        int i3 = i2;
        if (str3 != null) {
            i3 = i2 + C7764a5.m19528b(3, str3);
        }
        return i3;
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
                this.f18396c = z4Var.m18729b();
            } else if (c == 18) {
                this.f18397d = z4Var.m18729b();
            } else if (c == 26) {
                this.f18398e = z4Var.m18729b();
            } else if (!super.m19482a(z4Var, c)) {
                return this;
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7788d5, p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7843j5
    /* renamed from: a */
    public final void mo18861a(C7764a5 a5Var) throws IOException {
        String str = this.f18396c;
        if (str != null) {
            a5Var.m19538a(1, str);
        }
        String str2 = this.f18397d;
        if (str2 != null) {
            a5Var.m19538a(2, str2);
        }
        String str3 = this.f18398e;
        if (str3 != null) {
            a5Var.m19538a(3, str3);
        }
        super.mo18861a(a5Var);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C7853l)) {
            return false;
        }
        C7853l lVar = (C7853l) obj;
        String str = this.f18396c;
        if (str == null) {
            if (lVar.f18396c != null) {
                return false;
            }
        } else if (!str.equals(lVar.f18396c)) {
            return false;
        }
        String str2 = this.f18397d;
        if (str2 == null) {
            if (lVar.f18397d != null) {
                return false;
            }
        } else if (!str2.equals(lVar.f18397d)) {
            return false;
        }
        String str3 = this.f18398e;
        if (str3 == null) {
            if (lVar.f18398e != null) {
                return false;
            }
        } else if (!str3.equals(lVar.f18398e)) {
            return false;
        }
        C7805f5 f5Var = this.f18218b;
        if (f5Var != null && !f5Var.m19402d()) {
            return this.f18218b.equals(lVar.f18218b);
        }
        C7805f5 f5Var2 = lVar.f18218b;
        return f5Var2 == null || f5Var2.m19402d();
    }

    public final int hashCode() {
        int hashCode = C7853l.class.getName().hashCode();
        String str = this.f18396c;
        int hashCode2 = str == null ? 0 : str.hashCode();
        String str2 = this.f18397d;
        int hashCode3 = str2 == null ? 0 : str2.hashCode();
        String str3 = this.f18398e;
        int hashCode4 = str3 == null ? 0 : str3.hashCode();
        C7805f5 f5Var = this.f18218b;
        int i = 0;
        if (f5Var != null) {
            i = f5Var.m19402d() ? 0 : this.f18218b.hashCode();
        }
        return ((((((((hashCode + 527) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i;
    }
}

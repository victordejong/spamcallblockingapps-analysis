package p081h.p203i.p204a.p224e.p259j.p269j;

import java.io.IOException;
/* renamed from: h.i.a.e.j.j.u */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/u.class */
public final class C7929u extends AbstractC7788d5<C7929u> {

    /* renamed from: e */
    public static volatile C7929u[] f18606e;

    /* renamed from: c */
    public String f18607c = null;

    /* renamed from: d */
    public Long f18608d = null;

    public C7929u() {
        this.f18218b = null;
        this.f18376a = -1;
    }

    /* renamed from: d */
    public static C7929u[] m18866d() {
        if (f18606e == null) {
            synchronized (C7822h5.f18340b) {
                if (f18606e == null) {
                    f18606e = new C7929u[0];
                }
            }
        }
        return f18606e;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7788d5, p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7843j5
    /* renamed from: a */
    public final int mo18862a() {
        int a = super.mo18862a();
        String str = this.f18607c;
        int i = a;
        if (str != null) {
            i = a + C7764a5.m19528b(1, str);
        }
        Long l = this.f18608d;
        int i2 = i;
        if (l != null) {
            i2 = i + C7764a5.m19530b(2, l.longValue());
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
                this.f18607c = z4Var.m18729b();
            } else if (c == 16) {
                this.f18608d = Long.valueOf(z4Var.m18722e());
            } else if (!super.m19482a(z4Var, c)) {
                return this;
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7788d5, p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7843j5
    /* renamed from: a */
    public final void mo18861a(C7764a5 a5Var) throws IOException {
        String str = this.f18607c;
        if (str != null) {
            a5Var.m19538a(1, str);
        }
        Long l = this.f18608d;
        if (l != null) {
            a5Var.m19541a(2, l.longValue());
        }
        super.mo18861a(a5Var);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C7929u)) {
            return false;
        }
        C7929u uVar = (C7929u) obj;
        String str = this.f18607c;
        if (str == null) {
            if (uVar.f18607c != null) {
                return false;
            }
        } else if (!str.equals(uVar.f18607c)) {
            return false;
        }
        Long l = this.f18608d;
        if (l == null) {
            if (uVar.f18608d != null) {
                return false;
            }
        } else if (!l.equals(uVar.f18608d)) {
            return false;
        }
        C7805f5 f5Var = this.f18218b;
        if (f5Var != null && !f5Var.m19402d()) {
            return this.f18218b.equals(uVar.f18218b);
        }
        C7805f5 f5Var2 = uVar.f18218b;
        return f5Var2 == null || f5Var2.m19402d();
    }

    public final int hashCode() {
        int hashCode = C7929u.class.getName().hashCode();
        String str = this.f18607c;
        int hashCode2 = str == null ? 0 : str.hashCode();
        Long l = this.f18608d;
        int hashCode3 = l == null ? 0 : l.hashCode();
        C7805f5 f5Var = this.f18218b;
        int i = 0;
        if (f5Var != null) {
            i = f5Var.m19402d() ? 0 : this.f18218b.hashCode();
        }
        return ((((((hashCode + 527) * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }
}

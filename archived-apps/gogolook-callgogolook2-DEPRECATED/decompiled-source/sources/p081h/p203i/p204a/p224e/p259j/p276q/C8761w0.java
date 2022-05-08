package p081h.p203i.p204a.p224e.p259j.p276q;

import java.io.IOException;
/* renamed from: h.i.a.e.j.q.w0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/w0.class */
public final class C8761w0 extends AbstractC8714q7<C8761w0> {

    /* renamed from: e */
    public static volatile C8761w0[] f20030e;

    /* renamed from: c */
    public Integer f20031c = null;

    /* renamed from: d */
    public Long f20032d = null;

    public C8761w0() {
        this.f19936b = null;
        this.f20095a = -1;
    }

    /* renamed from: e */
    public static C8761w0[] m17090e() {
        if (f20030e == null) {
            synchronized (C8750u7.f20012b) {
                if (f20030e == null) {
                    f20030e = new C8761w0[0];
                }
            }
        }
        return f20030e;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8714q7, p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8768w7
    /* renamed from: a */
    public final int mo16954a() {
        int a = super.mo16954a();
        Integer num = this.f20031c;
        int i = a;
        if (num != null) {
            i = a + C8696o7.m17250c(1, num.intValue());
        }
        Long l = this.f20032d;
        int i2 = i;
        if (l != null) {
            i2 = i + C8696o7.m17249c(2, l.longValue());
        }
        return i2;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8768w7
    /* renamed from: a */
    public final /* synthetic */ AbstractC8768w7 mo16953a(C8686n7 n7Var) throws IOException {
        while (true) {
            int c = n7Var.m17300c();
            if (c == 0) {
                return this;
            }
            if (c == 8) {
                this.f20031c = Integer.valueOf(n7Var.m17296e());
            } else if (c == 16) {
                this.f20032d = Long.valueOf(n7Var.m17294f());
            } else if (!super.m17236a(n7Var, c)) {
                return this;
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8714q7, p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8768w7
    /* renamed from: a */
    public final void mo16952a(C8696o7 o7Var) throws IOException {
        Integer num = this.f20031c;
        if (num != null) {
            o7Var.m17257b(1, num.intValue());
        }
        Long l = this.f20032d;
        if (l != null) {
            o7Var.m17256b(2, l.longValue());
        }
        super.mo16952a(o7Var);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C8761w0)) {
            return false;
        }
        C8761w0 w0Var = (C8761w0) obj;
        Integer num = this.f20031c;
        if (num == null) {
            if (w0Var.f20031c != null) {
                return false;
            }
        } else if (!num.equals(w0Var.f20031c)) {
            return false;
        }
        Long l = this.f20032d;
        if (l == null) {
            if (w0Var.f20032d != null) {
                return false;
            }
        } else if (!l.equals(w0Var.f20032d)) {
            return false;
        }
        C8732s7 s7Var = this.f19936b;
        if (s7Var != null && !s7Var.m17185d()) {
            return this.f19936b.equals(w0Var.f19936b);
        }
        C8732s7 s7Var2 = w0Var.f19936b;
        return s7Var2 == null || s7Var2.m17185d();
    }

    public final int hashCode() {
        int hashCode = C8761w0.class.getName().hashCode();
        Integer num = this.f20031c;
        int hashCode2 = num == null ? 0 : num.hashCode();
        Long l = this.f20032d;
        int hashCode3 = l == null ? 0 : l.hashCode();
        C8732s7 s7Var = this.f19936b;
        int i = 0;
        if (s7Var != null) {
            i = s7Var.m17185d() ? 0 : this.f19936b.hashCode();
        }
        return ((((((hashCode + 527) * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }
}

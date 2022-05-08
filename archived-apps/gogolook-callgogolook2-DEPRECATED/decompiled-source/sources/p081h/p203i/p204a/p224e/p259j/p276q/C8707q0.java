package p081h.p203i.p204a.p224e.p259j.p276q;

import java.io.IOException;
/* renamed from: h.i.a.e.j.q.q0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/q0.class */
public final class C8707q0 extends AbstractC8714q7<C8707q0> {

    /* renamed from: h */
    public static volatile C8707q0[] f19928h;

    /* renamed from: c */
    public Integer f19929c = null;

    /* renamed from: d */
    public String f19930d = null;

    /* renamed from: e */
    public C8688o0 f19931e = null;

    /* renamed from: f */
    public Boolean f19932f = null;

    /* renamed from: g */
    public Boolean f19933g = null;

    public C8707q0() {
        this.f19936b = null;
        this.f20095a = -1;
    }

    /* renamed from: e */
    public static C8707q0[] m17242e() {
        if (f19928h == null) {
            synchronized (C8750u7.f20012b) {
                if (f19928h == null) {
                    f19928h = new C8707q0[0];
                }
            }
        }
        return f19928h;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8714q7, p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8768w7
    /* renamed from: a */
    public final int mo16954a() {
        int a = super.mo16954a();
        Integer num = this.f19929c;
        int i = a;
        if (num != null) {
            i = a + C8696o7.m17250c(1, num.intValue());
        }
        String str = this.f19930d;
        int i2 = i;
        if (str != null) {
            i2 = i + C8696o7.m17254b(2, str);
        }
        C8688o0 o0Var = this.f19931e;
        int i3 = i2;
        if (o0Var != null) {
            i3 = i2 + C8696o7.m17255b(3, o0Var);
        }
        Boolean bool = this.f19932f;
        int i4 = i3;
        if (bool != null) {
            bool.booleanValue();
            i4 = i3 + C8696o7.m17251c(4) + 1;
        }
        Boolean bool2 = this.f19933g;
        int i5 = i4;
        if (bool2 != null) {
            bool2.booleanValue();
            i5 = i4 + C8696o7.m17251c(5) + 1;
        }
        return i5;
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
                this.f19929c = Integer.valueOf(n7Var.m17296e());
            } else if (c == 18) {
                this.f19930d = n7Var.m17303b();
            } else if (c == 26) {
                if (this.f19931e == null) {
                    this.f19931e = new C8688o0();
                }
                n7Var.m17305a(this.f19931e);
            } else if (c == 32) {
                this.f19932f = Boolean.valueOf(n7Var.m17298d());
            } else if (c == 40) {
                this.f19933g = Boolean.valueOf(n7Var.m17298d());
            } else if (!super.m17236a(n7Var, c)) {
                return this;
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8714q7, p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8768w7
    /* renamed from: a */
    public final void mo16952a(C8696o7 o7Var) throws IOException {
        Integer num = this.f19929c;
        if (num != null) {
            o7Var.m17257b(1, num.intValue());
        }
        String str = this.f19930d;
        if (str != null) {
            o7Var.m17268a(2, str);
        }
        C8688o0 o0Var = this.f19931e;
        if (o0Var != null) {
            o7Var.m17269a(3, o0Var);
        }
        Boolean bool = this.f19932f;
        if (bool != null) {
            o7Var.m17267a(4, bool.booleanValue());
        }
        Boolean bool2 = this.f19933g;
        if (bool2 != null) {
            o7Var.m17267a(5, bool2.booleanValue());
        }
        super.mo16952a(o7Var);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C8707q0)) {
            return false;
        }
        C8707q0 q0Var = (C8707q0) obj;
        Integer num = this.f19929c;
        if (num == null) {
            if (q0Var.f19929c != null) {
                return false;
            }
        } else if (!num.equals(q0Var.f19929c)) {
            return false;
        }
        String str = this.f19930d;
        if (str == null) {
            if (q0Var.f19930d != null) {
                return false;
            }
        } else if (!str.equals(q0Var.f19930d)) {
            return false;
        }
        C8688o0 o0Var = this.f19931e;
        if (o0Var == null) {
            if (q0Var.f19931e != null) {
                return false;
            }
        } else if (!o0Var.equals(q0Var.f19931e)) {
            return false;
        }
        Boolean bool = this.f19932f;
        if (bool == null) {
            if (q0Var.f19932f != null) {
                return false;
            }
        } else if (!bool.equals(q0Var.f19932f)) {
            return false;
        }
        Boolean bool2 = this.f19933g;
        if (bool2 == null) {
            if (q0Var.f19933g != null) {
                return false;
            }
        } else if (!bool2.equals(q0Var.f19933g)) {
            return false;
        }
        C8732s7 s7Var = this.f19936b;
        if (s7Var != null && !s7Var.m17185d()) {
            return this.f19936b.equals(q0Var.f19936b);
        }
        C8732s7 s7Var2 = q0Var.f19936b;
        return s7Var2 == null || s7Var2.m17185d();
    }

    public final int hashCode() {
        int hashCode = C8707q0.class.getName().hashCode();
        Integer num = this.f19929c;
        int hashCode2 = num == null ? 0 : num.hashCode();
        String str = this.f19930d;
        int hashCode3 = str == null ? 0 : str.hashCode();
        C8688o0 o0Var = this.f19931e;
        int hashCode4 = o0Var == null ? 0 : o0Var.hashCode();
        Boolean bool = this.f19932f;
        int hashCode5 = bool == null ? 0 : bool.hashCode();
        Boolean bool2 = this.f19933g;
        int hashCode6 = bool2 == null ? 0 : bool2.hashCode();
        C8732s7 s7Var = this.f19936b;
        int i = 0;
        if (s7Var != null) {
            i = s7Var.m17185d() ? 0 : this.f19936b.hashCode();
        }
        return ((((((((((((hashCode + 527) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + i;
    }
}

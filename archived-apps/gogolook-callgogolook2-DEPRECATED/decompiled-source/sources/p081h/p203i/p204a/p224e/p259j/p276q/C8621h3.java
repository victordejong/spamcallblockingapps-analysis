package p081h.p203i.p204a.p224e.p259j.p276q;

import java.io.IOException;
import java.util.List;
/* renamed from: h.i.a.e.j.q.h3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/h3.class */
public final class C8621h3 implements AbstractC8788y5 {

    /* renamed from: a */
    public final AbstractC8590e3 f19746a;

    /* renamed from: b */
    public int f19747b;

    /* renamed from: c */
    public int f19748c;

    /* renamed from: d */
    public int f19749d = 0;

    public C8621h3(AbstractC8590e3 e3Var) {
        C8591e4.m17686a(e3Var, "input");
        this.f19746a = e3Var;
        this.f19746a.f19670c = this;
    }

    /* renamed from: a */
    public static C8621h3 m17563a(AbstractC8590e3 e3Var) {
        C8621h3 h3Var = e3Var.f19670c;
        return h3Var != null ? h3Var : new C8621h3(e3Var);
    }

    /* renamed from: c */
    public static void m17560c(int i) throws IOException {
        if ((i & 7) != 0) {
            throw C8647j4.m17437g();
        }
    }

    /* renamed from: d */
    public static void m17558d(int i) throws IOException {
        if ((i & 3) != 0) {
            throw C8647j4.m17437g();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8788y5
    /* renamed from: O */
    public final long mo16993O() throws IOException {
        m17564a(0);
        return this.f19746a.mo17636r();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8788y5
    /* renamed from: a */
    public final <T> T mo16991a(AbstractC8797z5<T> z5Var, C8691o3 o3Var) throws IOException {
        m17564a(3);
        return (T) m17557d(z5Var, o3Var);
    }

    /* renamed from: a */
    public final void m17564a(int i) throws IOException {
        if ((this.f19747b & 7) != i) {
            throw C8647j4.m17439e();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8788y5
    /* renamed from: a */
    public final void mo16990a(List<Double> list) throws IOException {
        int d;
        int d2;
        if (list instanceof C8664l3) {
            C8664l3 l3Var = (C8664l3) list;
            int i = this.f19747b & 7;
            if (i == 1) {
                do {
                    l3Var.m17421a(this.f19746a.mo17659a());
                    if (!this.f19746a.mo17635s()) {
                        d2 = this.f19746a.mo17653d();
                    } else {
                        return;
                    }
                } while (d2 == this.f19747b);
                this.f19749d = d2;
            } else if (i == 2) {
                int m = this.f19746a.mo17641m();
                m17560c(m);
                int t = this.f19746a.mo17634t();
                do {
                    l3Var.m17421a(this.f19746a.mo17659a());
                } while (this.f19746a.mo17634t() < t + m);
            } else {
                throw C8647j4.m17439e();
            }
        } else {
            int i2 = this.f19747b & 7;
            if (i2 == 1) {
                do {
                    list.add(Double.valueOf(this.f19746a.mo17659a()));
                    if (!this.f19746a.mo17635s()) {
                        d = this.f19746a.mo17653d();
                    } else {
                        return;
                    }
                } while (d == this.f19747b);
                this.f19749d = d;
            } else if (i2 == 2) {
                int m2 = this.f19746a.mo17641m();
                m17560c(m2);
                int t2 = this.f19746a.mo17634t();
                do {
                    list.add(Double.valueOf(this.f19746a.mo17659a()));
                } while (this.f19746a.mo17634t() < t2 + m2);
            } else {
                throw C8647j4.m17439e();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8788y5
    /* renamed from: a */
    public final <T> void mo16989a(List<T> list, AbstractC8797z5<T> z5Var, C8691o3 o3Var) throws IOException {
        int d;
        int i = this.f19747b;
        if ((i & 7) == 2) {
            do {
                list.add(m17559c(z5Var, o3Var));
                if (!this.f19746a.mo17635s() && this.f19749d == 0) {
                    d = this.f19746a.mo17653d();
                } else {
                    return;
                }
            } while (d == i);
            this.f19749d = d;
            return;
        }
        throw C8647j4.m17439e();
    }

    /* renamed from: a */
    public final void m17562a(List<String> list, boolean z) throws IOException {
        int d;
        int d2;
        if ((this.f19747b & 7) != 2) {
            throw C8647j4.m17439e();
        } else if (!(list instanceof AbstractC8738t4) || z) {
            do {
                list.add(z ? mo16988b() : mo16984c());
                if (!this.f19746a.mo17635s()) {
                    d = this.f19746a.mo17653d();
                } else {
                    return;
                }
            } while (d == this.f19747b);
            this.f19749d = d;
        } else {
            AbstractC8738t4 t4Var = (AbstractC8738t4) list;
            do {
                t4Var.mo17117a(mo16962n());
                if (!this.f19746a.mo17635s()) {
                    d2 = this.f19746a.mo17653d();
                } else {
                    return;
                }
            } while (d2 == this.f19747b);
            this.f19749d = d2;
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8788y5
    /* renamed from: a */
    public final boolean mo16992a() throws IOException {
        int i;
        if (this.f19746a.mo17635s() || (i = this.f19747b) == this.f19748c) {
            return false;
        }
        return this.f19746a.mo17655b(i);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8788y5
    /* renamed from: b */
    public final <T> T mo16987b(AbstractC8797z5<T> z5Var, C8691o3 o3Var) throws IOException {
        m17564a(2);
        return (T) m17559c(z5Var, o3Var);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8788y5
    /* renamed from: b */
    public final String mo16988b() throws IOException {
        m17564a(2);
        return this.f19746a.mo17643k();
    }

    /* renamed from: b */
    public final void m17561b(int i) throws IOException {
        if (this.f19746a.mo17634t() != i) {
            throw C8647j4.m17444a();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8788y5
    /* renamed from: b */
    public final void mo16986b(List<Long> list) throws IOException {
        int d;
        int d2;
        if (list instanceof C8787y4) {
            C8787y4 y4Var = (C8787y4) list;
            int i = this.f19747b & 7;
            if (i == 0) {
                do {
                    y4Var.m16997a(this.f19746a.mo17651e());
                    if (!this.f19746a.mo17635s()) {
                        d2 = this.f19746a.mo17653d();
                    } else {
                        return;
                    }
                } while (d2 == this.f19747b);
                this.f19749d = d2;
            } else if (i == 2) {
                int t = this.f19746a.mo17634t() + this.f19746a.mo17641m();
                do {
                    y4Var.m16997a(this.f19746a.mo17651e());
                } while (this.f19746a.mo17634t() < t);
                m17561b(t);
            } else {
                throw C8647j4.m17439e();
            }
        } else {
            int i2 = this.f19747b & 7;
            if (i2 == 0) {
                do {
                    list.add(Long.valueOf(this.f19746a.mo17651e()));
                    if (!this.f19746a.mo17635s()) {
                        d = this.f19746a.mo17653d();
                    } else {
                        return;
                    }
                } while (d == this.f19747b);
                this.f19749d = d;
            } else if (i2 == 2) {
                int t2 = this.f19746a.mo17634t() + this.f19746a.mo17641m();
                do {
                    list.add(Long.valueOf(this.f19746a.mo17651e()));
                } while (this.f19746a.mo17634t() < t2);
                m17561b(t2);
            } else {
                throw C8647j4.m17439e();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8788y5
    /* renamed from: b */
    public final <T> void mo16985b(List<T> list, AbstractC8797z5<T> z5Var, C8691o3 o3Var) throws IOException {
        int d;
        int i = this.f19747b;
        if ((i & 7) == 3) {
            do {
                list.add(m17557d(z5Var, o3Var));
                if (!this.f19746a.mo17635s() && this.f19749d == 0) {
                    d = this.f19746a.mo17653d();
                } else {
                    return;
                }
            } while (d == i);
            this.f19749d = d;
            return;
        }
        throw C8647j4.m17439e();
    }

    /* renamed from: c */
    public final <T> T m17559c(AbstractC8797z5<T> z5Var, C8691o3 o3Var) throws IOException {
        int m = this.f19746a.mo17641m();
        AbstractC8590e3 e3Var = this.f19746a;
        if (e3Var.f19668a < e3Var.f19669b) {
            int d = e3Var.mo17652d(m);
            T a = z5Var.mo16943a();
            this.f19746a.f19668a++;
            z5Var.mo16940a(a, this, o3Var);
            z5Var.mo16936c(a);
            this.f19746a.mo17658a(0);
            AbstractC8590e3 e3Var2 = this.f19746a;
            e3Var2.f19668a--;
            e3Var2.mo17650e(d);
            return a;
        }
        throw C8647j4.m17438f();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8788y5
    /* renamed from: c */
    public final String mo16984c() throws IOException {
        m17564a(2);
        return this.f19746a.mo17654c();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8788y5
    /* renamed from: c */
    public final void mo16983c(List<Float> list) throws IOException {
        int d;
        int d2;
        if (list instanceof C8795z3) {
            C8795z3 z3Var = (C8795z3) list;
            int i = this.f19747b & 7;
            if (i == 2) {
                int m = this.f19746a.mo17641m();
                m17558d(m);
                int t = this.f19746a.mo17634t();
                do {
                    z3Var.m16951a(this.f19746a.mo17656b());
                } while (this.f19746a.mo17634t() < t + m);
            } else if (i == 5) {
                do {
                    z3Var.m16951a(this.f19746a.mo17656b());
                    if (!this.f19746a.mo17635s()) {
                        d2 = this.f19746a.mo17653d();
                    } else {
                        return;
                    }
                } while (d2 == this.f19747b);
                this.f19749d = d2;
            } else {
                throw C8647j4.m17439e();
            }
        } else {
            int i2 = this.f19747b & 7;
            if (i2 == 2) {
                int m2 = this.f19746a.mo17641m();
                m17558d(m2);
                int t2 = this.f19746a.mo17634t();
                do {
                    list.add(Float.valueOf(this.f19746a.mo17656b()));
                } while (this.f19746a.mo17634t() < t2 + m2);
            } else if (i2 == 5) {
                do {
                    list.add(Float.valueOf(this.f19746a.mo17656b()));
                    if (!this.f19746a.mo17635s()) {
                        d = this.f19746a.mo17653d();
                    } else {
                        return;
                    }
                } while (d == this.f19747b);
                this.f19749d = d;
            } else {
                throw C8647j4.m17439e();
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8788y5
    /* renamed from: d */
    public final int mo16982d() throws IOException {
        int i = this.f19749d;
        if (i != 0) {
            this.f19747b = i;
            this.f19749d = 0;
        } else {
            this.f19747b = this.f19746a.mo17653d();
        }
        int i2 = this.f19747b;
        if (i2 == 0 || i2 == this.f19748c) {
            return Integer.MAX_VALUE;
        }
        return i2 >>> 3;
    }

    /* renamed from: d */
    public final <T> T m17557d(AbstractC8797z5<T> z5Var, C8691o3 o3Var) throws IOException {
        int i = this.f19748c;
        this.f19748c = ((this.f19747b >>> 3) << 3) | 4;
        try {
            T a = z5Var.mo16943a();
            z5Var.mo16940a(a, this, o3Var);
            z5Var.mo16936c(a);
            if (this.f19747b == this.f19748c) {
                return a;
            }
            throw C8647j4.m17437g();
        } finally {
            this.f19748c = i;
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8788y5
    /* renamed from: d */
    public final void mo16981d(List<String> list) throws IOException {
        m17562a(list, true);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8788y5
    /* renamed from: e */
    public final long mo16980e() throws IOException {
        m17564a(1);
        return this.f19746a.mo17638p();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8788y5
    /* renamed from: e */
    public final void mo16979e(List<Boolean> list) throws IOException {
        int d;
        int d2;
        if (list instanceof C8718r2) {
            C8718r2 r2Var = (C8718r2) list;
            int i = this.f19747b & 7;
            if (i == 0) {
                do {
                    r2Var.m17232a(this.f19746a.mo17644j());
                    if (!this.f19746a.mo17635s()) {
                        d2 = this.f19746a.mo17653d();
                    } else {
                        return;
                    }
                } while (d2 == this.f19747b);
                this.f19749d = d2;
            } else if (i == 2) {
                int t = this.f19746a.mo17634t() + this.f19746a.mo17641m();
                do {
                    r2Var.m17232a(this.f19746a.mo17644j());
                } while (this.f19746a.mo17634t() < t);
                m17561b(t);
            } else {
                throw C8647j4.m17439e();
            }
        } else {
            int i2 = this.f19747b & 7;
            if (i2 == 0) {
                do {
                    list.add(Boolean.valueOf(this.f19746a.mo17644j()));
                    if (!this.f19746a.mo17635s()) {
                        d = this.f19746a.mo17653d();
                    } else {
                        return;
                    }
                } while (d == this.f19747b);
                this.f19749d = d;
            } else if (i2 == 2) {
                int t2 = this.f19746a.mo17634t() + this.f19746a.mo17641m();
                do {
                    list.add(Boolean.valueOf(this.f19746a.mo17644j()));
                } while (this.f19746a.mo17634t() < t2);
                m17561b(t2);
            } else {
                throw C8647j4.m17439e();
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8788y5
    /* renamed from: f */
    public final int mo16978f() throws IOException {
        m17564a(5);
        return this.f19746a.mo17639o();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8788y5
    /* renamed from: f */
    public final void mo16977f(List<AbstractC8736t2> list) throws IOException {
        int d;
        if ((this.f19747b & 7) == 2) {
            do {
                list.add(mo16962n());
                if (!this.f19746a.mo17635s()) {
                    d = this.f19746a.mo17653d();
                } else {
                    return;
                }
            } while (d == this.f19747b);
            this.f19749d = d;
            return;
        }
        throw C8647j4.m17439e();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8788y5
    /* renamed from: g */
    public final int mo16976g() throws IOException {
        m17564a(0);
        return this.f19746a.mo17640n();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8788y5
    /* renamed from: g */
    public final void mo16975g(List<Integer> list) throws IOException {
        int d;
        int d2;
        if (list instanceof C8582d4) {
            C8582d4 d4Var = (C8582d4) list;
            int i = this.f19747b & 7;
            if (i == 0) {
                do {
                    d4Var.m17707i(this.f19746a.mo17647g());
                    if (!this.f19746a.mo17635s()) {
                        d2 = this.f19746a.mo17653d();
                    } else {
                        return;
                    }
                } while (d2 == this.f19747b);
                this.f19749d = d2;
            } else if (i == 2) {
                int t = this.f19746a.mo17634t() + this.f19746a.mo17641m();
                do {
                    d4Var.m17707i(this.f19746a.mo17647g());
                } while (this.f19746a.mo17634t() < t);
                m17561b(t);
            } else {
                throw C8647j4.m17439e();
            }
        } else {
            int i2 = this.f19747b & 7;
            if (i2 == 0) {
                do {
                    list.add(Integer.valueOf(this.f19746a.mo17647g()));
                    if (!this.f19746a.mo17635s()) {
                        d = this.f19746a.mo17653d();
                    } else {
                        return;
                    }
                } while (d == this.f19747b);
                this.f19749d = d;
            } else if (i2 == 2) {
                int t2 = this.f19746a.mo17634t() + this.f19746a.mo17641m();
                do {
                    list.add(Integer.valueOf(this.f19746a.mo17647g()));
                } while (this.f19746a.mo17634t() < t2);
                m17561b(t2);
            } else {
                throw C8647j4.m17439e();
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8788y5
    public final int getTag() {
        return this.f19747b;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8788y5
    /* renamed from: h */
    public final int mo16974h() throws IOException {
        m17564a(0);
        return this.f19746a.mo17641m();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8788y5
    /* renamed from: h */
    public final void mo16973h(List<Long> list) throws IOException {
        int d;
        int d2;
        if (list instanceof C8787y4) {
            C8787y4 y4Var = (C8787y4) list;
            int i = this.f19747b & 7;
            if (i == 0) {
                do {
                    y4Var.m16997a(this.f19746a.mo17649f());
                    if (!this.f19746a.mo17635s()) {
                        d2 = this.f19746a.mo17653d();
                    } else {
                        return;
                    }
                } while (d2 == this.f19747b);
                this.f19749d = d2;
            } else if (i == 2) {
                int t = this.f19746a.mo17634t() + this.f19746a.mo17641m();
                do {
                    y4Var.m16997a(this.f19746a.mo17649f());
                } while (this.f19746a.mo17634t() < t);
                m17561b(t);
            } else {
                throw C8647j4.m17439e();
            }
        } else {
            int i2 = this.f19747b & 7;
            if (i2 == 0) {
                do {
                    list.add(Long.valueOf(this.f19746a.mo17649f()));
                    if (!this.f19746a.mo17635s()) {
                        d = this.f19746a.mo17653d();
                    } else {
                        return;
                    }
                } while (d == this.f19747b);
                this.f19749d = d;
            } else if (i2 == 2) {
                int t2 = this.f19746a.mo17634t() + this.f19746a.mo17641m();
                do {
                    list.add(Long.valueOf(this.f19746a.mo17649f()));
                } while (this.f19746a.mo17634t() < t2);
                m17561b(t2);
            } else {
                throw C8647j4.m17439e();
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8788y5
    /* renamed from: i */
    public final int mo16972i() throws IOException {
        m17564a(0);
        return this.f19746a.mo17637q();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8788y5
    /* renamed from: i */
    public final void mo16971i(List<String> list) throws IOException {
        m17562a(list, false);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8788y5
    /* renamed from: j */
    public final long mo16970j() throws IOException {
        m17564a(1);
        return this.f19746a.mo17646h();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8788y5
    /* renamed from: j */
    public final void mo16969j(List<Integer> list) throws IOException {
        int d;
        int d2;
        if (list instanceof C8582d4) {
            C8582d4 d4Var = (C8582d4) list;
            int i = this.f19747b & 7;
            if (i == 2) {
                int m = this.f19746a.mo17641m();
                m17558d(m);
                int t = this.f19746a.mo17634t();
                do {
                    d4Var.m17707i(this.f19746a.mo17645i());
                } while (this.f19746a.mo17634t() < t + m);
            } else if (i == 5) {
                do {
                    d4Var.m17707i(this.f19746a.mo17645i());
                    if (!this.f19746a.mo17635s()) {
                        d2 = this.f19746a.mo17653d();
                    } else {
                        return;
                    }
                } while (d2 == this.f19747b);
                this.f19749d = d2;
            } else {
                throw C8647j4.m17439e();
            }
        } else {
            int i2 = this.f19747b & 7;
            if (i2 == 2) {
                int m2 = this.f19746a.mo17641m();
                m17558d(m2);
                int t2 = this.f19746a.mo17634t();
                do {
                    list.add(Integer.valueOf(this.f19746a.mo17645i()));
                } while (this.f19746a.mo17634t() < t2 + m2);
            } else if (i2 == 5) {
                do {
                    list.add(Integer.valueOf(this.f19746a.mo17645i()));
                    if (!this.f19746a.mo17635s()) {
                        d = this.f19746a.mo17653d();
                    } else {
                        return;
                    }
                } while (d == this.f19747b);
                this.f19749d = d;
            } else {
                throw C8647j4.m17439e();
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8788y5
    /* renamed from: k */
    public final int mo16968k() throws IOException {
        m17564a(0);
        return this.f19746a.mo17647g();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8788y5
    /* renamed from: k */
    public final void mo16967k(List<Long> list) throws IOException {
        int d;
        int d2;
        if (list instanceof C8787y4) {
            C8787y4 y4Var = (C8787y4) list;
            int i = this.f19747b & 7;
            if (i == 1) {
                do {
                    y4Var.m16997a(this.f19746a.mo17646h());
                    if (!this.f19746a.mo17635s()) {
                        d2 = this.f19746a.mo17653d();
                    } else {
                        return;
                    }
                } while (d2 == this.f19747b);
                this.f19749d = d2;
            } else if (i == 2) {
                int m = this.f19746a.mo17641m();
                m17560c(m);
                int t = this.f19746a.mo17634t();
                do {
                    y4Var.m16997a(this.f19746a.mo17646h());
                } while (this.f19746a.mo17634t() < t + m);
            } else {
                throw C8647j4.m17439e();
            }
        } else {
            int i2 = this.f19747b & 7;
            if (i2 == 1) {
                do {
                    list.add(Long.valueOf(this.f19746a.mo17646h()));
                    if (!this.f19746a.mo17635s()) {
                        d = this.f19746a.mo17653d();
                    } else {
                        return;
                    }
                } while (d == this.f19747b);
                this.f19749d = d;
            } else if (i2 == 2) {
                int m2 = this.f19746a.mo17641m();
                m17560c(m2);
                int t2 = this.f19746a.mo17634t();
                do {
                    list.add(Long.valueOf(this.f19746a.mo17646h()));
                } while (this.f19746a.mo17634t() < t2 + m2);
            } else {
                throw C8647j4.m17439e();
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8788y5
    /* renamed from: l */
    public final long mo16966l() throws IOException {
        m17564a(0);
        return this.f19746a.mo17649f();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8788y5
    /* renamed from: l */
    public final void mo16965l(List<Long> list) throws IOException {
        int d;
        int d2;
        if (list instanceof C8787y4) {
            C8787y4 y4Var = (C8787y4) list;
            int i = this.f19747b & 7;
            if (i == 0) {
                do {
                    y4Var.m16997a(this.f19746a.mo17636r());
                    if (!this.f19746a.mo17635s()) {
                        d2 = this.f19746a.mo17653d();
                    } else {
                        return;
                    }
                } while (d2 == this.f19747b);
                this.f19749d = d2;
            } else if (i == 2) {
                int t = this.f19746a.mo17634t() + this.f19746a.mo17641m();
                do {
                    y4Var.m16997a(this.f19746a.mo17636r());
                } while (this.f19746a.mo17634t() < t);
                m17561b(t);
            } else {
                throw C8647j4.m17439e();
            }
        } else {
            int i2 = this.f19747b & 7;
            if (i2 == 0) {
                do {
                    list.add(Long.valueOf(this.f19746a.mo17636r()));
                    if (!this.f19746a.mo17635s()) {
                        d = this.f19746a.mo17653d();
                    } else {
                        return;
                    }
                } while (d == this.f19747b);
                this.f19749d = d;
            } else if (i2 == 2) {
                int t2 = this.f19746a.mo17634t() + this.f19746a.mo17641m();
                do {
                    list.add(Long.valueOf(this.f19746a.mo17636r()));
                } while (this.f19746a.mo17634t() < t2);
                m17561b(t2);
            } else {
                throw C8647j4.m17439e();
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8788y5
    /* renamed from: m */
    public final long mo16964m() throws IOException {
        m17564a(0);
        return this.f19746a.mo17651e();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8788y5
    /* renamed from: m */
    public final void mo16963m(List<Integer> list) throws IOException {
        int d;
        int d2;
        if (list instanceof C8582d4) {
            C8582d4 d4Var = (C8582d4) list;
            int i = this.f19747b & 7;
            if (i == 2) {
                int m = this.f19746a.mo17641m();
                m17558d(m);
                int t = this.f19746a.mo17634t();
                do {
                    d4Var.m17707i(this.f19746a.mo17639o());
                } while (this.f19746a.mo17634t() < t + m);
            } else if (i == 5) {
                do {
                    d4Var.m17707i(this.f19746a.mo17639o());
                    if (!this.f19746a.mo17635s()) {
                        d2 = this.f19746a.mo17653d();
                    } else {
                        return;
                    }
                } while (d2 == this.f19747b);
                this.f19749d = d2;
            } else {
                throw C8647j4.m17439e();
            }
        } else {
            int i2 = this.f19747b & 7;
            if (i2 == 2) {
                int m2 = this.f19746a.mo17641m();
                m17558d(m2);
                int t2 = this.f19746a.mo17634t();
                do {
                    list.add(Integer.valueOf(this.f19746a.mo17639o()));
                } while (this.f19746a.mo17634t() < t2 + m2);
            } else if (i2 == 5) {
                do {
                    list.add(Integer.valueOf(this.f19746a.mo17639o()));
                    if (!this.f19746a.mo17635s()) {
                        d = this.f19746a.mo17653d();
                    } else {
                        return;
                    }
                } while (d == this.f19747b);
                this.f19749d = d;
            } else {
                throw C8647j4.m17439e();
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8788y5
    /* renamed from: n */
    public final AbstractC8736t2 mo16962n() throws IOException {
        m17564a(2);
        return this.f19746a.mo17642l();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8788y5
    /* renamed from: n */
    public final void mo16961n(List<Integer> list) throws IOException {
        int d;
        int d2;
        if (list instanceof C8582d4) {
            C8582d4 d4Var = (C8582d4) list;
            int i = this.f19747b & 7;
            if (i == 0) {
                do {
                    d4Var.m17707i(this.f19746a.mo17640n());
                    if (!this.f19746a.mo17635s()) {
                        d2 = this.f19746a.mo17653d();
                    } else {
                        return;
                    }
                } while (d2 == this.f19747b);
                this.f19749d = d2;
            } else if (i == 2) {
                int t = this.f19746a.mo17634t() + this.f19746a.mo17641m();
                do {
                    d4Var.m17707i(this.f19746a.mo17640n());
                } while (this.f19746a.mo17634t() < t);
                m17561b(t);
            } else {
                throw C8647j4.m17439e();
            }
        } else {
            int i2 = this.f19747b & 7;
            if (i2 == 0) {
                do {
                    list.add(Integer.valueOf(this.f19746a.mo17640n()));
                    if (!this.f19746a.mo17635s()) {
                        d = this.f19746a.mo17653d();
                    } else {
                        return;
                    }
                } while (d == this.f19747b);
                this.f19749d = d;
            } else if (i2 == 2) {
                int t2 = this.f19746a.mo17634t() + this.f19746a.mo17641m();
                do {
                    list.add(Integer.valueOf(this.f19746a.mo17640n()));
                } while (this.f19746a.mo17634t() < t2);
                m17561b(t2);
            } else {
                throw C8647j4.m17439e();
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8788y5
    /* renamed from: o */
    public final void mo16959o(List<Integer> list) throws IOException {
        int d;
        int d2;
        if (list instanceof C8582d4) {
            C8582d4 d4Var = (C8582d4) list;
            int i = this.f19747b & 7;
            if (i == 0) {
                do {
                    d4Var.m17707i(this.f19746a.mo17637q());
                    if (!this.f19746a.mo17635s()) {
                        d2 = this.f19746a.mo17653d();
                    } else {
                        return;
                    }
                } while (d2 == this.f19747b);
                this.f19749d = d2;
            } else if (i == 2) {
                int t = this.f19746a.mo17634t() + this.f19746a.mo17641m();
                do {
                    d4Var.m17707i(this.f19746a.mo17637q());
                } while (this.f19746a.mo17634t() < t);
                m17561b(t);
            } else {
                throw C8647j4.m17439e();
            }
        } else {
            int i2 = this.f19747b & 7;
            if (i2 == 0) {
                do {
                    list.add(Integer.valueOf(this.f19746a.mo17637q()));
                    if (!this.f19746a.mo17635s()) {
                        d = this.f19746a.mo17653d();
                    } else {
                        return;
                    }
                } while (d == this.f19747b);
                this.f19749d = d;
            } else if (i2 == 2) {
                int t2 = this.f19746a.mo17634t() + this.f19746a.mo17641m();
                do {
                    list.add(Integer.valueOf(this.f19746a.mo17637q()));
                } while (this.f19746a.mo17634t() < t2);
                m17561b(t2);
            } else {
                throw C8647j4.m17439e();
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8788y5
    /* renamed from: o */
    public final boolean mo16960o() throws IOException {
        m17564a(0);
        return this.f19746a.mo17644j();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8788y5
    /* renamed from: p */
    public final int mo16958p() throws IOException {
        m17564a(5);
        return this.f19746a.mo17645i();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8788y5
    /* renamed from: p */
    public final void mo16957p(List<Long> list) throws IOException {
        int d;
        int d2;
        if (list instanceof C8787y4) {
            C8787y4 y4Var = (C8787y4) list;
            int i = this.f19747b & 7;
            if (i == 1) {
                do {
                    y4Var.m16997a(this.f19746a.mo17638p());
                    if (!this.f19746a.mo17635s()) {
                        d2 = this.f19746a.mo17653d();
                    } else {
                        return;
                    }
                } while (d2 == this.f19747b);
                this.f19749d = d2;
            } else if (i == 2) {
                int m = this.f19746a.mo17641m();
                m17560c(m);
                int t = this.f19746a.mo17634t();
                do {
                    y4Var.m16997a(this.f19746a.mo17638p());
                } while (this.f19746a.mo17634t() < t + m);
            } else {
                throw C8647j4.m17439e();
            }
        } else {
            int i2 = this.f19747b & 7;
            if (i2 == 1) {
                do {
                    list.add(Long.valueOf(this.f19746a.mo17638p()));
                    if (!this.f19746a.mo17635s()) {
                        d = this.f19746a.mo17653d();
                    } else {
                        return;
                    }
                } while (d == this.f19747b);
                this.f19749d = d;
            } else if (i2 == 2) {
                int m2 = this.f19746a.mo17641m();
                m17560c(m2);
                int t2 = this.f19746a.mo17634t();
                do {
                    list.add(Long.valueOf(this.f19746a.mo17638p()));
                } while (this.f19746a.mo17634t() < t2 + m2);
            } else {
                throw C8647j4.m17439e();
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8788y5
    /* renamed from: q */
    public final void mo16956q(List<Integer> list) throws IOException {
        int d;
        int d2;
        if (list instanceof C8582d4) {
            C8582d4 d4Var = (C8582d4) list;
            int i = this.f19747b & 7;
            if (i == 0) {
                do {
                    d4Var.m17707i(this.f19746a.mo17641m());
                    if (!this.f19746a.mo17635s()) {
                        d2 = this.f19746a.mo17653d();
                    } else {
                        return;
                    }
                } while (d2 == this.f19747b);
                this.f19749d = d2;
            } else if (i == 2) {
                int t = this.f19746a.mo17634t() + this.f19746a.mo17641m();
                do {
                    d4Var.m17707i(this.f19746a.mo17641m());
                } while (this.f19746a.mo17634t() < t);
                m17561b(t);
            } else {
                throw C8647j4.m17439e();
            }
        } else {
            int i2 = this.f19747b & 7;
            if (i2 == 0) {
                do {
                    list.add(Integer.valueOf(this.f19746a.mo17641m()));
                    if (!this.f19746a.mo17635s()) {
                        d = this.f19746a.mo17653d();
                    } else {
                        return;
                    }
                } while (d == this.f19747b);
                this.f19749d = d;
            } else if (i2 == 2) {
                int t2 = this.f19746a.mo17634t() + this.f19746a.mo17641m();
                do {
                    list.add(Integer.valueOf(this.f19746a.mo17641m()));
                } while (this.f19746a.mo17634t() < t2);
                m17561b(t2);
            } else {
                throw C8647j4.m17439e();
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8788y5
    public final double readDouble() throws IOException {
        m17564a(1);
        return this.f19746a.mo17659a();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8788y5
    public final float readFloat() throws IOException {
        m17564a(5);
        return this.f19746a.mo17656b();
    }
}

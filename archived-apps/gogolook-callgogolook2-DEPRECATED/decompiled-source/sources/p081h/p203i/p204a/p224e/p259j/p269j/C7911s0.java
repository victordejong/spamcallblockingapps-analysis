package p081h.p203i.p204a.p224e.p259j.p269j;

import java.io.IOException;
import java.util.List;
/* renamed from: h.i.a.e.j.j.s0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/s0.class */
public final class C7911s0 implements AbstractC7837j3 {

    /* renamed from: a */
    public final AbstractC7890p0 f18541a;

    /* renamed from: b */
    public int f18542b;

    /* renamed from: c */
    public int f18543c;

    /* renamed from: d */
    public int f18544d = 0;

    public C7911s0(AbstractC7890p0 p0Var) {
        C7891p1.m19103a(p0Var, "input");
        this.f18541a = p0Var;
        this.f18541a.f18511c = this;
    }

    /* renamed from: a */
    public static C7911s0 m19039a(AbstractC7890p0 p0Var) {
        C7911s0 s0Var = p0Var.f18511c;
        return s0Var != null ? s0Var : new C7911s0(p0Var);
    }

    /* renamed from: c */
    public static void m19029c(int i) throws IOException {
        if ((i & 7) != 0) {
            throw C7924t1.m18886g();
        }
    }

    /* renamed from: d */
    public static void m19025d(int i) throws IOException {
        if ((i & 3) != 0) {
            throw C7924t1.m18886g();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7837j3
    /* renamed from: a */
    public final int mo19042a() throws IOException {
        m19041a(0);
        return this.f18541a.mo19056q();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7837j3
    /* renamed from: a */
    public final <T> T mo19040a(AbstractC7849k3<T> k3Var, C7965z0 z0Var) throws IOException {
        m19041a(2);
        return (T) m19028c(k3Var, z0Var);
    }

    /* renamed from: a */
    public final void m19041a(int i) throws IOException {
        if ((this.f18542b & 7) != i) {
            throw C7924t1.m18888e();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7837j3
    /* renamed from: a */
    public final void mo19038a(List<Integer> list) throws IOException {
        int d;
        int d2;
        if (list instanceof C7884o1) {
            C7884o1 o1Var = (C7884o1) list;
            int i = this.f18542b & 7;
            if (i == 2) {
                int m = this.f18541a.mo19060m();
                m19025d(m);
                int t = this.f18541a.mo19053t();
                do {
                    o1Var.m19116f(this.f18541a.mo19064i());
                } while (this.f18541a.mo19053t() < t + m);
            } else if (i == 5) {
                do {
                    o1Var.m19116f(this.f18541a.mo19064i());
                    if (!this.f18541a.mo19054s()) {
                        d2 = this.f18541a.mo19072d();
                    } else {
                        return;
                    }
                } while (d2 == this.f18542b);
                this.f18544d = d2;
            } else {
                throw C7924t1.m18888e();
            }
        } else {
            int i2 = this.f18542b & 7;
            if (i2 == 2) {
                int m2 = this.f18541a.mo19060m();
                m19025d(m2);
                int t2 = this.f18541a.mo19053t();
                do {
                    list.add(Integer.valueOf(this.f18541a.mo19064i()));
                } while (this.f18541a.mo19053t() < t2 + m2);
            } else if (i2 == 5) {
                do {
                    list.add(Integer.valueOf(this.f18541a.mo19064i()));
                    if (!this.f18541a.mo19054s()) {
                        d = this.f18541a.mo19072d();
                    } else {
                        return;
                    }
                } while (d == this.f18542b);
                this.f18544d = d;
            } else {
                throw C7924t1.m18888e();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7837j3
    /* renamed from: a */
    public final <T> void mo19037a(List<T> list, AbstractC7849k3<T> k3Var, C7965z0 z0Var) throws IOException {
        int d;
        int i = this.f18542b;
        if ((i & 7) == 2) {
            do {
                list.add(m19028c(k3Var, z0Var));
                if (!this.f18541a.mo19054s() && this.f18544d == 0) {
                    d = this.f18541a.mo19072d();
                } else {
                    return;
                }
            } while (d == i);
            this.f18544d = d;
            return;
        }
        throw C7924t1.m18888e();
    }

    /* renamed from: a */
    public final void m19036a(List<String> list, boolean z) throws IOException {
        int d;
        int d2;
        if ((this.f18542b & 7) != 2) {
            throw C7924t1.m18888e();
        } else if (!(list instanceof AbstractC7785d2) || z) {
            do {
                list.add(z ? mo19020f() : mo19030c());
                if (!this.f18541a.mo19054s()) {
                    d = this.f18541a.mo19072d();
                } else {
                    return;
                }
            } while (d == this.f18542b);
            this.f18544d = d;
        } else {
            AbstractC7785d2 d2Var = (AbstractC7785d2) list;
            do {
                d2Var.mo19377a(mo19018g());
                if (!this.f18541a.mo19054s()) {
                    d2 = this.f18541a.mo19072d();
                } else {
                    return;
                }
            } while (d2 == this.f18542b);
            this.f18544d = d2;
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7837j3
    /* renamed from: b */
    public final long mo19035b() throws IOException {
        m19041a(0);
        return this.f18541a.mo19055r();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7837j3
    /* renamed from: b */
    public final <T> T mo19033b(AbstractC7849k3<T> k3Var, C7965z0 z0Var) throws IOException {
        m19041a(3);
        return (T) m19024d(k3Var, z0Var);
    }

    /* renamed from: b */
    public final void m19034b(int i) throws IOException {
        if (this.f18541a.mo19053t() != i) {
            throw C7924t1.m18893a();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7837j3
    /* renamed from: b */
    public final void mo19032b(List<String> list) throws IOException {
        m19036a(list, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7837j3
    /* renamed from: b */
    public final <T> void mo19031b(List<T> list, AbstractC7849k3<T> k3Var, C7965z0 z0Var) throws IOException {
        int d;
        int i = this.f18542b;
        if ((i & 7) == 3) {
            do {
                list.add(m19024d(k3Var, z0Var));
                if (!this.f18541a.mo19054s() && this.f18544d == 0) {
                    d = this.f18541a.mo19072d();
                } else {
                    return;
                }
            } while (d == i);
            this.f18544d = d;
            return;
        }
        throw C7924t1.m18888e();
    }

    /* renamed from: c */
    public final <T> T m19028c(AbstractC7849k3<T> k3Var, C7965z0 z0Var) throws IOException {
        int m = this.f18541a.mo19060m();
        AbstractC7890p0 p0Var = this.f18541a;
        if (p0Var.f18509a < p0Var.f18510b) {
            int d = p0Var.mo19071d(m);
            T a = k3Var.mo18800a();
            this.f18541a.f18509a++;
            k3Var.mo18797a(a, this, z0Var);
            k3Var.mo18794b(a);
            this.f18541a.mo19077a(0);
            AbstractC7890p0 p0Var2 = this.f18541a;
            p0Var2.f18509a--;
            p0Var2.mo19069e(d);
            return a;
        }
        throw C7924t1.m18887f();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7837j3
    /* renamed from: c */
    public final String mo19030c() throws IOException {
        m19041a(2);
        return this.f18541a.mo19073c();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7837j3
    /* renamed from: c */
    public final void mo19027c(List<Boolean> list) throws IOException {
        int d;
        int d2;
        if (list instanceof C7775c0) {
            C7775c0 c0Var = (C7775c0) list;
            int i = this.f18542b & 7;
            if (i == 0) {
                do {
                    c0Var.m19507a(this.f18541a.mo19063j());
                    if (!this.f18541a.mo19054s()) {
                        d2 = this.f18541a.mo19072d();
                    } else {
                        return;
                    }
                } while (d2 == this.f18542b);
                this.f18544d = d2;
            } else if (i == 2) {
                int t = this.f18541a.mo19053t() + this.f18541a.mo19060m();
                do {
                    c0Var.m19507a(this.f18541a.mo19063j());
                } while (this.f18541a.mo19053t() < t);
                m19034b(t);
            } else {
                throw C7924t1.m18888e();
            }
        } else {
            int i2 = this.f18542b & 7;
            if (i2 == 0) {
                do {
                    list.add(Boolean.valueOf(this.f18541a.mo19063j()));
                    if (!this.f18541a.mo19054s()) {
                        d = this.f18541a.mo19072d();
                    } else {
                        return;
                    }
                } while (d == this.f18542b);
                this.f18544d = d;
            } else if (i2 == 2) {
                int t2 = this.f18541a.mo19053t() + this.f18541a.mo19060m();
                do {
                    list.add(Boolean.valueOf(this.f18541a.mo19063j()));
                } while (this.f18541a.mo19053t() < t2);
                m19034b(t2);
            } else {
                throw C7924t1.m18888e();
            }
        }
    }

    /* renamed from: d */
    public final <T> T m19024d(AbstractC7849k3<T> k3Var, C7965z0 z0Var) throws IOException {
        int i = this.f18543c;
        this.f18543c = ((this.f18542b >>> 3) << 3) | 4;
        try {
            T a = k3Var.mo18800a();
            k3Var.mo18797a(a, this, z0Var);
            k3Var.mo18794b(a);
            if (this.f18542b == this.f18543c) {
                return a;
            }
            throw C7924t1.m18886g();
        } finally {
            this.f18543c = i;
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7837j3
    /* renamed from: d */
    public final void mo19023d(List<Integer> list) throws IOException {
        int d;
        int d2;
        if (list instanceof C7884o1) {
            C7884o1 o1Var = (C7884o1) list;
            int i = this.f18542b & 7;
            if (i == 0) {
                do {
                    o1Var.m19116f(this.f18541a.mo19056q());
                    if (!this.f18541a.mo19054s()) {
                        d2 = this.f18541a.mo19072d();
                    } else {
                        return;
                    }
                } while (d2 == this.f18542b);
                this.f18544d = d2;
            } else if (i == 2) {
                int t = this.f18541a.mo19053t() + this.f18541a.mo19060m();
                do {
                    o1Var.m19116f(this.f18541a.mo19056q());
                } while (this.f18541a.mo19053t() < t);
                m19034b(t);
            } else {
                throw C7924t1.m18888e();
            }
        } else {
            int i2 = this.f18542b & 7;
            if (i2 == 0) {
                do {
                    list.add(Integer.valueOf(this.f18541a.mo19056q()));
                    if (!this.f18541a.mo19054s()) {
                        d = this.f18541a.mo19072d();
                    } else {
                        return;
                    }
                } while (d == this.f18542b);
                this.f18544d = d;
            } else if (i2 == 2) {
                int t2 = this.f18541a.mo19053t() + this.f18541a.mo19060m();
                do {
                    list.add(Integer.valueOf(this.f18541a.mo19056q()));
                } while (this.f18541a.mo19053t() < t2);
                m19034b(t2);
            } else {
                throw C7924t1.m18888e();
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7837j3
    /* renamed from: d */
    public final boolean mo19026d() throws IOException {
        m19041a(0);
        return this.f18541a.mo19063j();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7837j3
    /* renamed from: e */
    public final int mo19022e() throws IOException {
        m19041a(5);
        return this.f18541a.mo19064i();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7837j3
    /* renamed from: e */
    public final void mo19021e(List<Long> list) throws IOException {
        int d;
        int d2;
        if (list instanceof C7827i2) {
            C7827i2 i2Var = (C7827i2) list;
            int i = this.f18542b & 7;
            if (i == 1) {
                do {
                    i2Var.m19348a(this.f18541a.mo19057p());
                    if (!this.f18541a.mo19054s()) {
                        d2 = this.f18541a.mo19072d();
                    } else {
                        return;
                    }
                } while (d2 == this.f18542b);
                this.f18544d = d2;
            } else if (i == 2) {
                int m = this.f18541a.mo19060m();
                m19029c(m);
                int t = this.f18541a.mo19053t();
                do {
                    i2Var.m19348a(this.f18541a.mo19057p());
                } while (this.f18541a.mo19053t() < t + m);
            } else {
                throw C7924t1.m18888e();
            }
        } else {
            int i2 = this.f18542b & 7;
            if (i2 == 1) {
                do {
                    list.add(Long.valueOf(this.f18541a.mo19057p()));
                    if (!this.f18541a.mo19054s()) {
                        d = this.f18541a.mo19072d();
                    } else {
                        return;
                    }
                } while (d == this.f18542b);
                this.f18544d = d;
            } else if (i2 == 2) {
                int m2 = this.f18541a.mo19060m();
                m19029c(m2);
                int t2 = this.f18541a.mo19053t();
                do {
                    list.add(Long.valueOf(this.f18541a.mo19057p()));
                } while (this.f18541a.mo19053t() < t2 + m2);
            } else {
                throw C7924t1.m18888e();
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7837j3
    /* renamed from: f */
    public final String mo19020f() throws IOException {
        m19041a(2);
        return this.f18541a.mo19062k();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7837j3
    /* renamed from: f */
    public final void mo19019f(List<Long> list) throws IOException {
        int d;
        int d2;
        if (list instanceof C7827i2) {
            C7827i2 i2Var = (C7827i2) list;
            int i = this.f18542b & 7;
            if (i == 0) {
                do {
                    i2Var.m19348a(this.f18541a.mo19055r());
                    if (!this.f18541a.mo19054s()) {
                        d2 = this.f18541a.mo19072d();
                    } else {
                        return;
                    }
                } while (d2 == this.f18542b);
                this.f18544d = d2;
            } else if (i == 2) {
                int t = this.f18541a.mo19053t() + this.f18541a.mo19060m();
                do {
                    i2Var.m19348a(this.f18541a.mo19055r());
                } while (this.f18541a.mo19053t() < t);
                m19034b(t);
            } else {
                throw C7924t1.m18888e();
            }
        } else {
            int i2 = this.f18542b & 7;
            if (i2 == 0) {
                do {
                    list.add(Long.valueOf(this.f18541a.mo19055r()));
                    if (!this.f18541a.mo19054s()) {
                        d = this.f18541a.mo19072d();
                    } else {
                        return;
                    }
                } while (d == this.f18542b);
                this.f18544d = d;
            } else if (i2 == 2) {
                int t2 = this.f18541a.mo19053t() + this.f18541a.mo19060m();
                do {
                    list.add(Long.valueOf(this.f18541a.mo19055r()));
                } while (this.f18541a.mo19053t() < t2);
                m19034b(t2);
            } else {
                throw C7924t1.m18888e();
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7837j3
    /* renamed from: g */
    public final AbstractC7791e0 mo19018g() throws IOException {
        m19041a(2);
        return this.f18541a.mo19061l();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7837j3
    /* renamed from: g */
    public final void mo19017g(List<Integer> list) throws IOException {
        int d;
        int d2;
        if (list instanceof C7884o1) {
            C7884o1 o1Var = (C7884o1) list;
            int i = this.f18542b & 7;
            if (i == 0) {
                do {
                    o1Var.m19116f(this.f18541a.mo19060m());
                    if (!this.f18541a.mo19054s()) {
                        d2 = this.f18541a.mo19072d();
                    } else {
                        return;
                    }
                } while (d2 == this.f18542b);
                this.f18544d = d2;
            } else if (i == 2) {
                int t = this.f18541a.mo19053t() + this.f18541a.mo19060m();
                do {
                    o1Var.m19116f(this.f18541a.mo19060m());
                } while (this.f18541a.mo19053t() < t);
                m19034b(t);
            } else {
                throw C7924t1.m18888e();
            }
        } else {
            int i2 = this.f18542b & 7;
            if (i2 == 0) {
                do {
                    list.add(Integer.valueOf(this.f18541a.mo19060m()));
                    if (!this.f18541a.mo19054s()) {
                        d = this.f18541a.mo19072d();
                    } else {
                        return;
                    }
                } while (d == this.f18542b);
                this.f18544d = d;
            } else if (i2 == 2) {
                int t2 = this.f18541a.mo19053t() + this.f18541a.mo19060m();
                do {
                    list.add(Integer.valueOf(this.f18541a.mo19060m()));
                } while (this.f18541a.mo19053t() < t2);
                m19034b(t2);
            } else {
                throw C7924t1.m18888e();
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7837j3
    public final int getTag() {
        return this.f18542b;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7837j3
    /* renamed from: h */
    public final void mo19015h(List<AbstractC7791e0> list) throws IOException {
        int d;
        if ((this.f18542b & 7) == 2) {
            do {
                list.add(mo19018g());
                if (!this.f18541a.mo19054s()) {
                    d = this.f18541a.mo19072d();
                } else {
                    return;
                }
            } while (d == this.f18542b);
            this.f18544d = d;
            return;
        }
        throw C7924t1.m18888e();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7837j3
    /* renamed from: h */
    public final boolean mo19016h() throws IOException {
        int i;
        if (this.f18541a.mo19054s() || (i = this.f18542b) == this.f18543c) {
            return false;
        }
        return this.f18541a.mo19074b(i);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7837j3
    /* renamed from: i */
    public final int mo19014i() throws IOException {
        m19041a(0);
        return this.f18541a.mo19060m();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7837j3
    /* renamed from: i */
    public final void mo19013i(List<String> list) throws IOException {
        m19036a(list, false);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7837j3
    /* renamed from: j */
    public final int mo19012j() throws IOException {
        int i = this.f18544d;
        if (i != 0) {
            this.f18542b = i;
            this.f18544d = 0;
        } else {
            this.f18542b = this.f18541a.mo19072d();
        }
        int i2 = this.f18542b;
        if (i2 == 0 || i2 == this.f18543c) {
            return Integer.MAX_VALUE;
        }
        return i2 >>> 3;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7837j3
    /* renamed from: j */
    public final void mo19011j(List<Integer> list) throws IOException {
        int d;
        int d2;
        if (list instanceof C7884o1) {
            C7884o1 o1Var = (C7884o1) list;
            int i = this.f18542b & 7;
            if (i == 2) {
                int m = this.f18541a.mo19060m();
                m19025d(m);
                int t = this.f18541a.mo19053t();
                do {
                    o1Var.m19116f(this.f18541a.mo19058o());
                } while (this.f18541a.mo19053t() < t + m);
            } else if (i == 5) {
                do {
                    o1Var.m19116f(this.f18541a.mo19058o());
                    if (!this.f18541a.mo19054s()) {
                        d2 = this.f18541a.mo19072d();
                    } else {
                        return;
                    }
                } while (d2 == this.f18542b);
                this.f18544d = d2;
            } else {
                throw C7924t1.m18888e();
            }
        } else {
            int i2 = this.f18542b & 7;
            if (i2 == 2) {
                int m2 = this.f18541a.mo19060m();
                m19025d(m2);
                int t2 = this.f18541a.mo19053t();
                do {
                    list.add(Integer.valueOf(this.f18541a.mo19058o()));
                } while (this.f18541a.mo19053t() < t2 + m2);
            } else if (i2 == 5) {
                do {
                    list.add(Integer.valueOf(this.f18541a.mo19058o()));
                    if (!this.f18541a.mo19054s()) {
                        d = this.f18541a.mo19072d();
                    } else {
                        return;
                    }
                } while (d == this.f18542b);
                this.f18544d = d;
            } else {
                throw C7924t1.m18888e();
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7837j3
    /* renamed from: k */
    public final long mo19010k() throws IOException {
        m19041a(1);
        return this.f18541a.mo19057p();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7837j3
    /* renamed from: k */
    public final void mo19009k(List<Integer> list) throws IOException {
        int d;
        int d2;
        if (list instanceof C7884o1) {
            C7884o1 o1Var = (C7884o1) list;
            int i = this.f18542b & 7;
            if (i == 0) {
                do {
                    o1Var.m19116f(this.f18541a.mo19059n());
                    if (!this.f18541a.mo19054s()) {
                        d2 = this.f18541a.mo19072d();
                    } else {
                        return;
                    }
                } while (d2 == this.f18542b);
                this.f18544d = d2;
            } else if (i == 2) {
                int t = this.f18541a.mo19053t() + this.f18541a.mo19060m();
                do {
                    o1Var.m19116f(this.f18541a.mo19059n());
                } while (this.f18541a.mo19053t() < t);
                m19034b(t);
            } else {
                throw C7924t1.m18888e();
            }
        } else {
            int i2 = this.f18542b & 7;
            if (i2 == 0) {
                do {
                    list.add(Integer.valueOf(this.f18541a.mo19059n()));
                    if (!this.f18541a.mo19054s()) {
                        d = this.f18541a.mo19072d();
                    } else {
                        return;
                    }
                } while (d == this.f18542b);
                this.f18544d = d;
            } else if (i2 == 2) {
                int t2 = this.f18541a.mo19053t() + this.f18541a.mo19060m();
                do {
                    list.add(Integer.valueOf(this.f18541a.mo19059n()));
                } while (this.f18541a.mo19053t() < t2);
                m19034b(t2);
            } else {
                throw C7924t1.m18888e();
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7837j3
    /* renamed from: l */
    public final long mo19008l() throws IOException {
        m19041a(0);
        return this.f18541a.mo19070e();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7837j3
    /* renamed from: l */
    public final void mo19007l(List<Long> list) throws IOException {
        int d;
        int d2;
        if (list instanceof C7827i2) {
            C7827i2 i2Var = (C7827i2) list;
            int i = this.f18542b & 7;
            if (i == 1) {
                do {
                    i2Var.m19348a(this.f18541a.mo19065h());
                    if (!this.f18541a.mo19054s()) {
                        d2 = this.f18541a.mo19072d();
                    } else {
                        return;
                    }
                } while (d2 == this.f18542b);
                this.f18544d = d2;
            } else if (i == 2) {
                int m = this.f18541a.mo19060m();
                m19029c(m);
                int t = this.f18541a.mo19053t();
                do {
                    i2Var.m19348a(this.f18541a.mo19065h());
                } while (this.f18541a.mo19053t() < t + m);
            } else {
                throw C7924t1.m18888e();
            }
        } else {
            int i2 = this.f18542b & 7;
            if (i2 == 1) {
                do {
                    list.add(Long.valueOf(this.f18541a.mo19065h()));
                    if (!this.f18541a.mo19054s()) {
                        d = this.f18541a.mo19072d();
                    } else {
                        return;
                    }
                } while (d == this.f18542b);
                this.f18544d = d;
            } else if (i2 == 2) {
                int m2 = this.f18541a.mo19060m();
                m19029c(m2);
                int t2 = this.f18541a.mo19053t();
                do {
                    list.add(Long.valueOf(this.f18541a.mo19065h()));
                } while (this.f18541a.mo19053t() < t2 + m2);
            } else {
                throw C7924t1.m18888e();
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7837j3
    /* renamed from: m */
    public final long mo19006m() throws IOException {
        m19041a(0);
        return this.f18541a.mo19068f();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7837j3
    /* renamed from: m */
    public final void mo19005m(List<Integer> list) throws IOException {
        int d;
        int d2;
        if (list instanceof C7884o1) {
            C7884o1 o1Var = (C7884o1) list;
            int i = this.f18542b & 7;
            if (i == 0) {
                do {
                    o1Var.m19116f(this.f18541a.mo19066g());
                    if (!this.f18541a.mo19054s()) {
                        d2 = this.f18541a.mo19072d();
                    } else {
                        return;
                    }
                } while (d2 == this.f18542b);
                this.f18544d = d2;
            } else if (i == 2) {
                int t = this.f18541a.mo19053t() + this.f18541a.mo19060m();
                do {
                    o1Var.m19116f(this.f18541a.mo19066g());
                } while (this.f18541a.mo19053t() < t);
                m19034b(t);
            } else {
                throw C7924t1.m18888e();
            }
        } else {
            int i2 = this.f18542b & 7;
            if (i2 == 0) {
                do {
                    list.add(Integer.valueOf(this.f18541a.mo19066g()));
                    if (!this.f18541a.mo19054s()) {
                        d = this.f18541a.mo19072d();
                    } else {
                        return;
                    }
                } while (d == this.f18542b);
                this.f18544d = d;
            } else if (i2 == 2) {
                int t2 = this.f18541a.mo19053t() + this.f18541a.mo19060m();
                do {
                    list.add(Integer.valueOf(this.f18541a.mo19066g()));
                } while (this.f18541a.mo19053t() < t2);
                m19034b(t2);
            } else {
                throw C7924t1.m18888e();
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7837j3
    /* renamed from: n */
    public final int mo19004n() throws IOException {
        m19041a(0);
        return this.f18541a.mo19059n();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7837j3
    /* renamed from: n */
    public final void mo19003n(List<Float> list) throws IOException {
        int d;
        int d2;
        if (list instanceof C7847k1) {
            C7847k1 k1Var = (C7847k1) list;
            int i = this.f18542b & 7;
            if (i == 2) {
                int m = this.f18541a.mo19060m();
                m19025d(m);
                int t = this.f18541a.mo19053t();
                do {
                    k1Var.m19271a(this.f18541a.mo19075b());
                } while (this.f18541a.mo19053t() < t + m);
            } else if (i == 5) {
                do {
                    k1Var.m19271a(this.f18541a.mo19075b());
                    if (!this.f18541a.mo19054s()) {
                        d2 = this.f18541a.mo19072d();
                    } else {
                        return;
                    }
                } while (d2 == this.f18542b);
                this.f18544d = d2;
            } else {
                throw C7924t1.m18888e();
            }
        } else {
            int i2 = this.f18542b & 7;
            if (i2 == 2) {
                int m2 = this.f18541a.mo19060m();
                m19025d(m2);
                int t2 = this.f18541a.mo19053t();
                do {
                    list.add(Float.valueOf(this.f18541a.mo19075b()));
                } while (this.f18541a.mo19053t() < t2 + m2);
            } else if (i2 == 5) {
                do {
                    list.add(Float.valueOf(this.f18541a.mo19075b()));
                    if (!this.f18541a.mo19054s()) {
                        d = this.f18541a.mo19072d();
                    } else {
                        return;
                    }
                } while (d == this.f18542b);
                this.f18544d = d;
            } else {
                throw C7924t1.m18888e();
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7837j3
    /* renamed from: o */
    public final int mo19002o() throws IOException {
        m19041a(5);
        return this.f18541a.mo19058o();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7837j3
    /* renamed from: o */
    public final void mo19001o(List<Double> list) throws IOException {
        int d;
        int d2;
        if (list instanceof C7944w0) {
            C7944w0 w0Var = (C7944w0) list;
            int i = this.f18542b & 7;
            if (i == 1) {
                do {
                    w0Var.m18851a(this.f18541a.mo19078a());
                    if (!this.f18541a.mo19054s()) {
                        d2 = this.f18541a.mo19072d();
                    } else {
                        return;
                    }
                } while (d2 == this.f18542b);
                this.f18544d = d2;
            } else if (i == 2) {
                int m = this.f18541a.mo19060m();
                m19029c(m);
                int t = this.f18541a.mo19053t();
                do {
                    w0Var.m18851a(this.f18541a.mo19078a());
                } while (this.f18541a.mo19053t() < t + m);
            } else {
                throw C7924t1.m18888e();
            }
        } else {
            int i2 = this.f18542b & 7;
            if (i2 == 1) {
                do {
                    list.add(Double.valueOf(this.f18541a.mo19078a()));
                    if (!this.f18541a.mo19054s()) {
                        d = this.f18541a.mo19072d();
                    } else {
                        return;
                    }
                } while (d == this.f18542b);
                this.f18544d = d;
            } else if (i2 == 2) {
                int m2 = this.f18541a.mo19060m();
                m19029c(m2);
                int t2 = this.f18541a.mo19053t();
                do {
                    list.add(Double.valueOf(this.f18541a.mo19078a()));
                } while (this.f18541a.mo19053t() < t2 + m2);
            } else {
                throw C7924t1.m18888e();
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7837j3
    /* renamed from: p */
    public final int mo19000p() throws IOException {
        m19041a(0);
        return this.f18541a.mo19066g();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7837j3
    /* renamed from: p */
    public final void mo18999p(List<Long> list) throws IOException {
        int d;
        int d2;
        if (list instanceof C7827i2) {
            C7827i2 i2Var = (C7827i2) list;
            int i = this.f18542b & 7;
            if (i == 0) {
                do {
                    i2Var.m19348a(this.f18541a.mo19068f());
                    if (!this.f18541a.mo19054s()) {
                        d2 = this.f18541a.mo19072d();
                    } else {
                        return;
                    }
                } while (d2 == this.f18542b);
                this.f18544d = d2;
            } else if (i == 2) {
                int t = this.f18541a.mo19053t() + this.f18541a.mo19060m();
                do {
                    i2Var.m19348a(this.f18541a.mo19068f());
                } while (this.f18541a.mo19053t() < t);
                m19034b(t);
            } else {
                throw C7924t1.m18888e();
            }
        } else {
            int i2 = this.f18542b & 7;
            if (i2 == 0) {
                do {
                    list.add(Long.valueOf(this.f18541a.mo19068f()));
                    if (!this.f18541a.mo19054s()) {
                        d = this.f18541a.mo19072d();
                    } else {
                        return;
                    }
                } while (d == this.f18542b);
                this.f18544d = d;
            } else if (i2 == 2) {
                int t2 = this.f18541a.mo19053t() + this.f18541a.mo19060m();
                do {
                    list.add(Long.valueOf(this.f18541a.mo19068f()));
                } while (this.f18541a.mo19053t() < t2);
                m19034b(t2);
            } else {
                throw C7924t1.m18888e();
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7837j3
    /* renamed from: q */
    public final void mo18998q(List<Long> list) throws IOException {
        int d;
        int d2;
        if (list instanceof C7827i2) {
            C7827i2 i2Var = (C7827i2) list;
            int i = this.f18542b & 7;
            if (i == 0) {
                do {
                    i2Var.m19348a(this.f18541a.mo19070e());
                    if (!this.f18541a.mo19054s()) {
                        d2 = this.f18541a.mo19072d();
                    } else {
                        return;
                    }
                } while (d2 == this.f18542b);
                this.f18544d = d2;
            } else if (i == 2) {
                int t = this.f18541a.mo19053t() + this.f18541a.mo19060m();
                do {
                    i2Var.m19348a(this.f18541a.mo19070e());
                } while (this.f18541a.mo19053t() < t);
                m19034b(t);
            } else {
                throw C7924t1.m18888e();
            }
        } else {
            int i2 = this.f18542b & 7;
            if (i2 == 0) {
                do {
                    list.add(Long.valueOf(this.f18541a.mo19070e()));
                    if (!this.f18541a.mo19054s()) {
                        d = this.f18541a.mo19072d();
                    } else {
                        return;
                    }
                } while (d == this.f18542b);
                this.f18544d = d;
            } else if (i2 == 2) {
                int t2 = this.f18541a.mo19053t() + this.f18541a.mo19060m();
                do {
                    list.add(Long.valueOf(this.f18541a.mo19070e()));
                } while (this.f18541a.mo19053t() < t2);
                m19034b(t2);
            } else {
                throw C7924t1.m18888e();
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7837j3
    public final double readDouble() throws IOException {
        m19041a(1);
        return this.f18541a.mo19078a();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7837j3
    public final float readFloat() throws IOException {
        m19041a(5);
        return this.f18541a.mo19075b();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7837j3
    /* renamed from: z */
    public final long mo18997z() throws IOException {
        m19041a(1);
        return this.f18541a.mo19065h();
    }
}

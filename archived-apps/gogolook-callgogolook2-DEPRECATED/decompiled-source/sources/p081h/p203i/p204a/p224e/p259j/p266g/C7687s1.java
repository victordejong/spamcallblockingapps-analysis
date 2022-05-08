package p081h.p203i.p204a.p224e.p259j.p266g;
/* renamed from: h.i.a.e.j.g.s1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/s1.class */
public class C7687s1 {

    /* renamed from: a */
    public volatile AbstractC7627k2 f18024a;

    /* renamed from: b */
    public volatile AbstractC7539a0 f18025b;

    static {
        C7679r0.m19814b();
    }

    /* renamed from: a */
    public final int m19810a() {
        if (this.f18025b != null) {
            return this.f18025b.size();
        }
        if (this.f18024a != null) {
            return this.f18024a.mo20085g();
        }
        return 0;
    }

    /* renamed from: a */
    public final AbstractC7627k2 m19809a(AbstractC7627k2 k2Var) {
        if (this.f18024a == null) {
            synchronized (this) {
                if (this.f18024a == null) {
                    try {
                        this.f18024a = k2Var;
                        this.f18025b = AbstractC7539a0.f17655b;
                    } catch (C7633l1 e) {
                        this.f18024a = k2Var;
                        this.f18025b = AbstractC7539a0.f17655b;
                    }
                }
            }
        }
        return this.f18024a;
    }

    /* renamed from: b */
    public final AbstractC7539a0 m19808b() {
        if (this.f18025b != null) {
            return this.f18025b;
        }
        synchronized (this) {
            if (this.f18025b != null) {
                return this.f18025b;
            }
            this.f18025b = this.f18024a == null ? AbstractC7539a0.f17655b : this.f18024a.mo19828e();
            return this.f18025b;
        }
    }

    /* renamed from: b */
    public final AbstractC7627k2 m19807b(AbstractC7627k2 k2Var) {
        AbstractC7627k2 k2Var2 = this.f18024a;
        this.f18025b = null;
        this.f18024a = k2Var;
        return k2Var2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C7687s1)) {
            return false;
        }
        C7687s1 s1Var = (C7687s1) obj;
        AbstractC7627k2 k2Var = this.f18024a;
        AbstractC7627k2 k2Var2 = s1Var.f18024a;
        return (k2Var == null && k2Var2 == null) ? m19808b().equals(s1Var.m19808b()) : (k2Var == null || k2Var2 == null) ? k2Var != null ? k2Var.equals(s1Var.m19809a(k2Var.mo19972c())) : m19809a(k2Var2.mo19972c()).equals(k2Var2) : k2Var.equals(k2Var2);
    }

    public int hashCode() {
        return 1;
    }
}

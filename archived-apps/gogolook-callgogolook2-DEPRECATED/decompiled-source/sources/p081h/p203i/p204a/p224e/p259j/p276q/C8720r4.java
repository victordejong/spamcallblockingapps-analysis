package p081h.p203i.p204a.p224e.p259j.p276q;
/* renamed from: h.i.a.e.j.q.r4 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/r4.class */
public class C8720r4 {

    /* renamed from: a */
    public volatile AbstractC8648j5 f19945a;

    /* renamed from: b */
    public volatile AbstractC8736t2 f19946b;

    static {
        C8691o3.m17280c();
    }

    /* renamed from: a */
    public final AbstractC8648j5 m17217a(AbstractC8648j5 j5Var) {
        if (this.f19945a == null) {
            synchronized (this) {
                if (this.f19945a == null) {
                    try {
                        this.f19945a = j5Var;
                        this.f19946b = AbstractC8736t2.f19984b;
                    } catch (C8647j4 e) {
                        this.f19945a = j5Var;
                        this.f19946b = AbstractC8736t2.f19984b;
                    }
                }
            }
        }
        return this.f19945a;
    }

    /* renamed from: a */
    public final AbstractC8736t2 m17218a() {
        if (this.f19946b != null) {
            return this.f19946b;
        }
        synchronized (this) {
            if (this.f19946b != null) {
                return this.f19946b;
            }
            if (this.f19945a == null) {
                this.f19946b = AbstractC8736t2.f19984b;
            } else {
                this.f19946b = this.f19945a.mo17423d();
            }
            return this.f19946b;
        }
    }

    /* renamed from: b */
    public final int m17216b() {
        if (this.f19946b != null) {
            return this.f19946b.size();
        }
        if (this.f19945a != null) {
            return this.f19945a.mo17434b();
        }
        return 0;
    }

    /* renamed from: b */
    public final AbstractC8648j5 m17215b(AbstractC8648j5 j5Var) {
        AbstractC8648j5 j5Var2 = this.f19945a;
        this.f19946b = null;
        this.f19945a = j5Var;
        return j5Var2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C8720r4)) {
            return false;
        }
        C8720r4 r4Var = (C8720r4) obj;
        AbstractC8648j5 j5Var = this.f19945a;
        AbstractC8648j5 j5Var2 = r4Var.f19945a;
        return (j5Var == null && j5Var2 == null) ? m17218a().equals(r4Var.m17218a()) : (j5Var == null || j5Var2 == null) ? j5Var != null ? j5Var.equals(r4Var.m17217a(j5Var.mo17416a())) : m17217a(j5Var2.mo17416a()).equals(j5Var2) : j5Var.equals(j5Var2);
    }

    public int hashCode() {
        return 1;
    }
}

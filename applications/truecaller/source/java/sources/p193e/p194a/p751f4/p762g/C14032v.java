package p193e.p194a.p751f4.p762g;

import javax.inject.Inject;
import p193e.p194a.p1129p5.AbstractC19222c;
import s1.z.c.l;
import u3.k0;
import x3.a0;
/* renamed from: e.a.f4.g.v */
/* loaded from: classes11-dex2jar.jar:e/a/f4/g/v.class */
public final class C14032v implements AbstractC14031u {

    /* renamed from: a */
    public long f40587a;

    /* renamed from: b */
    public long f40588b;

    /* renamed from: c */
    public long f40589c;

    /* renamed from: d */
    public final AbstractC19222c f40590d;

    @Inject
    public C14032v(AbstractC19222c abstractC19222c) {
        l.e(abstractC19222c, "clock");
        this.f40590d = abstractC19222c;
    }

    @Override // p193e.p194a.p751f4.p762g.AbstractC14031u
    /* renamed from: a */
    public C14030t mo20836a(a0<C14030t> a0Var, s1.z.b.l<? super C14030t, C14030t> lVar) {
        l.e(a0Var, "response");
        return m20830g("key_throttling_bulk_search", a0Var, null);
    }

    @Override // p193e.p194a.p751f4.p762g.AbstractC14031u
    /* renamed from: b */
    public boolean mo20835b() {
        return this.f40590d.mo13819c() > this.f40588b;
    }

    @Override // p193e.p194a.p751f4.p762g.AbstractC14031u
    /* renamed from: c */
    public boolean mo20834c() {
        return this.f40590d.mo13819c() > this.f40589c;
    }

    @Override // p193e.p194a.p751f4.p762g.AbstractC14031u
    /* renamed from: d */
    public boolean mo20833d() {
        return this.f40590d.mo13819c() > this.f40587a;
    }

    @Override // p193e.p194a.p751f4.p762g.AbstractC14031u
    /* renamed from: e */
    public C14030t mo20832e(a0<C14030t> a0Var, s1.z.b.l<? super C14030t, C14030t> lVar) {
        l.e(a0Var, "response");
        return m20830g("key_throttling_cross_domain_search", a0Var, lVar);
    }

    @Override // p193e.p194a.p751f4.p762g.AbstractC14031u
    /* renamed from: f */
    public C14030t mo20831f(a0<C14030t> a0Var, s1.z.b.l<? super C14030t, C14030t> lVar) {
        l.e(a0Var, "response");
        return m20830g("key_throttling_single_search", a0Var, lVar);
    }

    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* renamed from: g */
    public final C14030t m20830g(String str, a0<C14030t> a0Var, s1.z.b.l<? super C14030t, C14030t> lVar) {
        char parseLong;
        C14030t c14030t = (C14030t) a0Var.b;
        if (a0Var.b() && c14030t != null) {
            C14030t c14030t2 = c14030t;
            if (lVar != null) {
                C14030t c14030t3 = (C14030t) lVar.d(c14030t);
                c14030t2 = c14030t;
                if (c14030t3 != null) {
                    c14030t2 = c14030t3;
                }
            }
            return c14030t2;
        }
        k0 k0Var = a0Var.a;
        if (k0Var.e == 429) {
            String a = k0Var.g.a("t");
            if (a != null) {
                try {
                    parseLong = Long.parseLong(a);
                } catch (NumberFormatException e) {
                    e.getMessage();
                }
            } else {
                parseLong = 0;
            }
            long mo13819c = this.f40590d.mo13819c() + (parseLong * 1000);
            int hashCode = str.hashCode();
            if (hashCode != -2100912003) {
                if (hashCode != -1266916660) {
                    if (hashCode == 2020008583 && str.equals("key_throttling_single_search")) {
                        this.f40587a = mo13819c;
                    }
                } else if (str.equals("key_throttling_cross_domain_search")) {
                    this.f40589c = mo13819c;
                }
            } else if (str.equals("key_throttling_bulk_search")) {
                this.f40588b = mo13819c;
            }
        }
        return c14030t;
    }
}

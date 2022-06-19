package p193e.p194a.p751f4.p762g;

import com.truecaller.data.entity.Contact;
import p193e.p194a.p1041l0.AbstractC17348c;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p997k3.AbstractC16452e;
import p193e.p194a.p997k3.p998j.C16461b;
import x3.a0;
import x3.b;
/* renamed from: e.a.f4.g.m */
/* loaded from: classes11-dex2jar.jar:e/a/f4/g/m.class */
public class C14019m extends AbstractC14003b<C14030t> {

    /* renamed from: b */
    public final AbstractC19854f<AbstractC17348c> f40535b;

    /* renamed from: c */
    public final int f40536c;

    /* renamed from: d */
    public final AbstractC16452e f40537d;

    public C14019m(b<C14030t> bVar, AbstractC19854f<AbstractC17348c> abstractC19854f, int i, AbstractC16452e abstractC16452e) {
        super(bVar);
        this.f40535b = abstractC19854f;
        this.f40536c = i;
        this.f40537d = abstractC16452e;
    }

    @Override // p193e.p194a.p751f4.p762g.AbstractC14003b
    /* renamed from: a */
    public a0<C14030t> mo20848a(a0<C14030t> a0Var, C14030t c14030t) {
        C14030t c14030t2 = c14030t;
        Contact m20837a = c14030t2.m20837a();
        a0<C14030t> a0Var2 = a0Var;
        if (m20837a != null) {
            a0Var2 = a0Var;
            if (m20837a.m35523d1()) {
                AbstractApplicationC8442a m28551L = AbstractApplicationC8442a.m28551L();
                this.f40535b.mo11854a().mo16242f(this.f40537d.mo17387a(m20837a, this.f40536c, null, 0L), m20837a).mo11828g();
                m20837a.getTcId();
                C16461b c16461b = new C16461b(m28551L);
                a0Var2 = a0Var;
                if (!C16461b.m17357o(m20837a)) {
                    Contact m17360l = c16461b.m17360l(m20837a);
                    a0Var2 = a0Var;
                    if (m17360l != null) {
                        a0Var2 = a0.d(new C14030t(c14030t2.f40586g, c14030t2, m17360l), a0Var.a);
                    }
                }
            }
        }
        return a0Var2;
    }

    @Override // p193e.p194a.p751f4.p762g.AbstractC14003b
    public b<C14030t> clone() {
        return new C14019m(this.f40468a.clone(), this.f40535b, this.f40536c, this.f40537d);
    }
}

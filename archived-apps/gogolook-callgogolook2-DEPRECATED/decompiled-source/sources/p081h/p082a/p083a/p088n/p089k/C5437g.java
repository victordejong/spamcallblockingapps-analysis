package p081h.p082a.p083a.p088n.p089k;

import java.util.List;
import org.json.JSONObject;
import p081h.p082a.p083a.C5341e;
import p081h.p082a.p083a.p084l.C5358a;
import p081h.p082a.p083a.p084l.p086c.AbstractC5382a;
import p081h.p082a.p083a.p084l.p086c.C5395k;
import p081h.p082a.p083a.p084l.p086c.C5398n;
import p081h.p082a.p083a.p088n.C5415j;
import p081h.p082a.p083a.p088n.p089k.C5454n;
/* renamed from: h.a.a.n.k.g */
/* loaded from: classes-dex2jar.jar:h/a/a/n/k/g.class */
public class C5437g extends AbstractC5456o<C5415j, C5415j> {

    /* renamed from: h.a.a.n.k.g$b */
    /* loaded from: classes-dex2jar.jar:h/a/a/n/k/g$b.class */
    public static final class C5439b {
        /* renamed from: a */
        public static C5437g m25464a() {
            return new C5437g();
        }

        /* renamed from: a */
        public static C5437g m25463a(JSONObject jSONObject, C5341e eVar) {
            C5454n.C5455a a = C5454n.m25442a(jSONObject, 1.0f, eVar, C5415j.C5416a.f13567a).m25445a();
            return new C5437g(a.f13593a, (C5415j) a.f13594b);
        }
    }

    public C5437g() {
        super(new C5415j());
    }

    public C5437g(List<C5358a<C5415j>> list, C5415j jVar) {
        super(list, jVar);
    }

    @Override // p081h.p082a.p083a.p088n.p089k.AbstractC5452m
    /* renamed from: a */
    public AbstractC5382a<C5415j, C5415j> mo25446a() {
        return !m25438c() ? new C5398n(this.f13596b) : new C5395k(this.f13595a);
    }
}

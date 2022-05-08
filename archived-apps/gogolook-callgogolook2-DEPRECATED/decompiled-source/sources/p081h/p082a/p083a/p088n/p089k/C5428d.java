package p081h.p082a.p083a.p088n.p089k;

import java.util.List;
import org.json.JSONObject;
import p081h.p082a.p083a.C5341e;
import p081h.p082a.p083a.p084l.C5358a;
import p081h.p082a.p083a.p084l.p086c.AbstractC5382a;
import p081h.p082a.p083a.p084l.p086c.C5387e;
import p081h.p082a.p083a.p084l.p086c.C5398n;
import p081h.p082a.p083a.p088n.p089k.AbstractC5452m;
import p081h.p082a.p083a.p088n.p089k.C5454n;
import p081h.p082a.p083a.p092o.C5524b;
/* renamed from: h.a.a.n.k.d */
/* loaded from: classes-dex2jar.jar:h/a/a/n/k/d.class */
public class C5428d extends AbstractC5456o<Integer, Integer> {

    /* renamed from: h.a.a.n.k.d$b */
    /* loaded from: classes-dex2jar.jar:h/a/a/n/k/d$b.class */
    public static final class C5430b {
        /* renamed from: a */
        public static C5428d m25472a() {
            return new C5428d();
        }

        /* renamed from: a */
        public static C5428d m25471a(JSONObject jSONObject, C5341e eVar) {
            if (jSONObject != null && jSONObject.has("x")) {
                eVar.m25648a("Lottie doesn't support expressions.");
            }
            C5454n.C5455a a = C5454n.m25442a(jSONObject, 1.0f, eVar, C5431c.f13570a).m25445a();
            return new C5428d(a.f13593a, (Integer) a.f13594b);
        }
    }

    /* renamed from: h.a.a.n.k.d$c */
    /* loaded from: classes-dex2jar.jar:h/a/a/n/k/d$c.class */
    public static class C5431c implements AbstractC5452m.AbstractC5453a<Integer> {

        /* renamed from: a */
        public static final C5431c f13570a = new C5431c();

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p081h.p082a.p083a.p088n.p089k.AbstractC5452m.AbstractC5453a
        /* renamed from: a */
        public Integer mo25373a(Object obj, float f) {
            return Integer.valueOf(Math.round(C5524b.m25280a(obj) * f));
        }
    }

    public C5428d() {
        super(100);
    }

    public C5428d(List<C5358a<Integer>> list, Integer num) {
        super(list, num);
    }

    @Override // p081h.p082a.p083a.p088n.p089k.AbstractC5452m
    /* renamed from: a */
    public AbstractC5382a<Integer, Integer> mo25446a() {
        return !m25438c() ? new C5398n(this.f13596b) : new C5387e(this.f13595a);
    }

    @Override // p081h.p082a.p083a.p088n.p089k.AbstractC5456o
    /* renamed from: b */
    public Integer mo25439b() {
        return (Integer) this.f13596b;
    }
}

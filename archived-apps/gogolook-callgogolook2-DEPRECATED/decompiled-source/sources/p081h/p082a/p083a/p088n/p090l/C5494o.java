package p081h.p082a.p083a.p088n.p090l;

import androidx.appcompat.widget.SearchView;
import org.json.JSONObject;
import p081h.p082a.p083a.C5341e;
import p081h.p082a.p083a.C5344f;
import p081h.p082a.p083a.p084l.p085b.AbstractC5363b;
import p081h.p082a.p083a.p084l.p085b.C5379p;
import p081h.p082a.p083a.p088n.p089k.C5440h;
import p081h.p082a.p083a.p088n.p091m.AbstractC5506a;
/* renamed from: h.a.a.n.l.o */
/* loaded from: classes-dex2jar.jar:h/a/a/n/l/o.class */
public class C5494o implements AbstractC5460b {

    /* renamed from: a */
    public final String f13671a;

    /* renamed from: b */
    public final int f13672b;

    /* renamed from: c */
    public final C5440h f13673c;

    /* renamed from: h.a.a.n.l.o$b */
    /* loaded from: classes-dex2jar.jar:h/a/a/n/l/o$b.class */
    public static class C5496b {
        /* renamed from: a */
        public static C5494o m25360a(JSONObject jSONObject, C5341e eVar) {
            return new C5494o(jSONObject.optString(SearchView.IME_OPTION_NO_MICROPHONE), jSONObject.optInt("ind"), C5440h.C5442b.m25461a(jSONObject.optJSONObject("ks"), eVar));
        }
    }

    public C5494o(String str, int i, C5440h hVar) {
        this.f13671a = str;
        this.f13672b = i;
        this.f13673c = hVar;
    }

    @Override // p081h.p082a.p083a.p088n.p090l.AbstractC5460b
    /* renamed from: a */
    public AbstractC5363b mo25347a(C5344f fVar, AbstractC5506a aVar) {
        return new C5379p(fVar, aVar, this);
    }

    /* renamed from: a */
    public String m25362a() {
        return this.f13671a;
    }

    /* renamed from: b */
    public C5440h m25361b() {
        return this.f13673c;
    }

    public String toString() {
        return "ShapePath{name=" + this.f13671a + ", index=" + this.f13672b + ", hasAnimation=" + this.f13673c.m25438c() + '}';
    }
}

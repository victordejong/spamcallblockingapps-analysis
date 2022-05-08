package p081h.p082a.p083a.p088n.p090l;

import androidx.appcompat.widget.SearchView;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import com.criteo.publisher.model.C2041o;
import org.json.JSONObject;
import p081h.p082a.p083a.C5341e;
import p081h.p082a.p083a.C5344f;
import p081h.p082a.p083a.p084l.p085b.AbstractC5363b;
import p081h.p082a.p083a.p084l.p085b.C5381r;
import p081h.p082a.p083a.p088n.p089k.C5420b;
import p081h.p082a.p083a.p088n.p091m.AbstractC5506a;
/* renamed from: h.a.a.n.l.q */
/* loaded from: classes-dex2jar.jar:h/a/a/n/l/q.class */
public class C5502q implements AbstractC5460b {

    /* renamed from: a */
    public final String f13692a;

    /* renamed from: b */
    public final EnumC5505c f13693b;

    /* renamed from: c */
    public final C5420b f13694c;

    /* renamed from: d */
    public final C5420b f13695d;

    /* renamed from: e */
    public final C5420b f13696e;

    /* renamed from: h.a.a.n.l.q$b */
    /* loaded from: classes-dex2jar.jar:h/a/a/n/l/q$b.class */
    public static class C5504b {
        /* renamed from: a */
        public static C5502q m25342a(JSONObject jSONObject, C5341e eVar) {
            return new C5502q(jSONObject.optString(SearchView.IME_OPTION_NO_MICROPHONE), EnumC5505c.m25341a(jSONObject.optInt("m", 1)), C5420b.C5422b.m25476a(jSONObject.optJSONObject("s"), eVar, false), C5420b.C5422b.m25476a(jSONObject.optJSONObject("e"), eVar, false), C5420b.C5422b.m25476a(jSONObject.optJSONObject(C2041o.f2249c), eVar, false));
        }
    }

    /* renamed from: h.a.a.n.l.q$c */
    /* loaded from: classes-dex2jar.jar:h/a/a/n/l/q$c.class */
    public enum EnumC5505c {
        Simultaneously,
        Individually;

        /* renamed from: a */
        public static EnumC5505c m25341a(int i) {
            if (i == 1) {
                return Simultaneously;
            }
            if (i == 2) {
                return Individually;
            }
            throw new IllegalArgumentException("Unknown trim path type " + i);
        }
    }

    public C5502q(String str, EnumC5505c cVar, C5420b bVar, C5420b bVar2, C5420b bVar3) {
        this.f13692a = str;
        this.f13693b = cVar;
        this.f13694c = bVar;
        this.f13695d = bVar2;
        this.f13696e = bVar3;
    }

    @Override // p081h.p082a.p083a.p088n.p090l.AbstractC5460b
    /* renamed from: a */
    public AbstractC5363b mo25347a(C5344f fVar, AbstractC5506a aVar) {
        return new C5381r(aVar, this);
    }

    /* renamed from: a */
    public C5420b m25348a() {
        return this.f13695d;
    }

    /* renamed from: b */
    public String m25346b() {
        return this.f13692a;
    }

    /* renamed from: c */
    public C5420b m25345c() {
        return this.f13696e;
    }

    /* renamed from: d */
    public C5420b m25344d() {
        return this.f13694c;
    }

    /* renamed from: e */
    public EnumC5505c m25343e() {
        return this.f13693b;
    }

    public String toString() {
        return "Trim Path: {start: " + this.f13694c + ", end: " + this.f13695d + ", offset: " + this.f13696e + CssParser.BLOCK_END;
    }
}

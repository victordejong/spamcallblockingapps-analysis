package p081h.p415j.p416a.p417a.p418a.p425i;

import android.webkit.WebView;
import org.json.JSONArray;
import org.json.JSONObject;
import p081h.p415j.p416a.p417a.p418a.p420d.C10618a;
import p081h.p415j.p416a.p417a.p418a.p420d.C10620c;
import p081h.p415j.p416a.p417a.p418a.p420d.C10621d;
import p081h.p415j.p416a.p417a.p418a.p420d.C10625h;
import p081h.p415j.p416a.p417a.p418a.p420d.C10626i;
import p081h.p415j.p416a.p417a.p418a.p421e.C10631c;
import p081h.p415j.p416a.p417a.p418a.p421e.C10632d;
import p081h.p415j.p416a.p417a.p418a.p423g.C10640a;
import p081h.p415j.p416a.p417a.p418a.p423g.C10641b;
import p081h.p415j.p416a.p417a.p418a.p423g.C10644d;
import p081h.p415j.p416a.p417a.p418a.p424h.C10648b;
/* renamed from: h.j.a.a.a.i.a */
/* loaded from: classes2-dex2jar.jar:h/j/a/a/a/i/a.class */
public abstract class AbstractC10649a {

    /* renamed from: a */
    public C10648b f24230a = new C10648b(null);

    /* renamed from: b */
    public C10618a f24231b;

    /* renamed from: c */
    public EnumC10650a f24232c;

    /* renamed from: d */
    public double f24233d;

    /* renamed from: h.j.a.a.a.i.a$a */
    /* loaded from: classes2-dex2jar.jar:h/j/a/a/a/i/a$a.class */
    public enum EnumC10650a {
        AD_STATE_IDLE,
        AD_STATE_VISIBLE,
        AD_STATE_HIDDEN
    }

    public AbstractC10649a() {
        m11059h();
    }

    /* renamed from: a */
    public void mo11058a() {
    }

    /* renamed from: a */
    public void m11072a(float f) {
        C10632d.m11133a().m11131a(m11060g(), f);
    }

    /* renamed from: a */
    public void m11071a(WebView webView) {
        this.f24230a = new C10648b(webView);
    }

    /* renamed from: a */
    public void m11070a(C10618a aVar) {
        this.f24231b = aVar;
    }

    /* renamed from: a */
    public void m11069a(C10620c cVar) {
        C10632d.m11133a().m11126a(m11060g(), cVar.m11186b());
    }

    /* renamed from: a */
    public void m11068a(C10626i iVar, C10621d dVar) {
        String i = iVar.m11158i();
        JSONObject jSONObject = new JSONObject();
        C10641b.m11096a(jSONObject, "environment", "app");
        C10641b.m11096a(jSONObject, "adSessionType", dVar.m11185a());
        C10641b.m11096a(jSONObject, "deviceInfo", C10640a.m11103d());
        JSONArray jSONArray = new JSONArray();
        jSONArray.put("clid");
        jSONArray.put("vlid");
        C10641b.m11096a(jSONObject, "supports", jSONArray);
        JSONObject jSONObject2 = new JSONObject();
        C10641b.m11096a(jSONObject2, "partnerName", dVar.m11181d().m11178a());
        C10641b.m11096a(jSONObject2, "partnerVersion", dVar.m11181d().m11176b());
        C10641b.m11096a(jSONObject, "omidNativeInfo", jSONObject2);
        JSONObject jSONObject3 = new JSONObject();
        C10641b.m11096a(jSONObject3, "libraryVersion", "1.2.8-Taiwanmobile");
        C10641b.m11096a(jSONObject3, "appId", C10631c.m11134b().m11136a().getApplicationContext().getPackageName());
        C10641b.m11096a(jSONObject, "app", jSONObject3);
        if (dVar.m11183b() != null) {
            C10641b.m11096a(jSONObject, "customReferenceData", dVar.m11183b());
        }
        JSONObject jSONObject4 = new JSONObject();
        for (C10625h hVar : dVar.m11180e()) {
            C10641b.m11096a(jSONObject4, hVar.m11174b(), hVar.m11173c());
        }
        C10632d.m11133a().m11129a(m11060g(), i, jSONObject, jSONObject4);
    }

    /* renamed from: a */
    public void m11067a(String str, double d) {
        if (d > this.f24233d) {
            this.f24232c = EnumC10650a.AD_STATE_VISIBLE;
            C10632d.m11133a().m11122c(m11060g(), str);
        }
    }

    /* renamed from: a */
    public void m11066a(boolean z) {
        if (m11063d()) {
            C10632d.m11133a().m11121d(m11060g(), z ? "foregrounded" : "backgrounded");
        }
    }

    /* renamed from: b */
    public void mo11056b() {
        this.f24230a.clear();
    }

    /* renamed from: b */
    public void m11065b(String str, double d) {
        if (d > this.f24233d) {
            EnumC10650a aVar = this.f24232c;
            EnumC10650a aVar2 = EnumC10650a.AD_STATE_HIDDEN;
            if (aVar != aVar2) {
                this.f24232c = aVar2;
                C10632d.m11133a().m11122c(m11060g(), str);
            }
        }
    }

    /* renamed from: c */
    public C10618a m11064c() {
        return this.f24231b;
    }

    /* renamed from: d */
    public boolean m11063d() {
        return this.f24230a.get() != null;
    }

    /* renamed from: e */
    public void m11062e() {
        C10632d.m11133a().m11132a(m11060g());
    }

    /* renamed from: f */
    public void m11061f() {
        C10632d.m11133a().m11124b(m11060g());
    }

    /* renamed from: g */
    public WebView m11060g() {
        return this.f24230a.get();
    }

    /* renamed from: h */
    public void m11059h() {
        this.f24233d = C10644d.m11085a();
        this.f24232c = EnumC10650a.AD_STATE_IDLE;
    }
}

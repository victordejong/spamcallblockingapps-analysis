package p000a.p001a.p002a.p003a.p004a.p012g;

import android.content.SharedPreferences;
import org.json.JSONObject;
import p000a.p001a.p002a.p003a.AbstractC0147l;
import p000a.p001a.p002a.p003a.AbstractC0150o;
import p000a.p001a.p002a.p003a.C0137d;
import p000a.p001a.p002a.p003a.p004a.p006b.AbstractC0032m;
import p000a.p001a.p002a.p003a.p004a.p006b.C0026j;
import p000a.p001a.p002a.p003a.p004a.p006b.C0033n;
import p000a.p001a.p002a.p003a.p004a.p011f.AbstractC0107c;
import p000a.p001a.p002a.p003a.p004a.p011f.C0108d;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: a.a.a.a.a.g.j */
/* loaded from: classes-dex2jar.jar:a/a/a/a/a/g/j.class */
public final class C0118j implements AbstractC0128s {

    /* renamed from: a */
    private final C0132w f244a;

    /* renamed from: b */
    private final AbstractC0131v f245b;

    /* renamed from: c */
    private final AbstractC0032m f246c;

    /* renamed from: d */
    private final AbstractC0115g f247d;

    /* renamed from: e */
    private final AbstractC0133x f248e;

    /* renamed from: f */
    private final AbstractC0147l f249f;

    /* renamed from: g */
    private final AbstractC0107c f250g;

    /* renamed from: h */
    private final C0033n f251h;

    public C0118j(AbstractC0147l lVar, C0132w wVar, AbstractC0032m mVar, AbstractC0131v vVar, AbstractC0115g gVar, AbstractC0133x xVar, C0033n nVar) {
        this.f249f = lVar;
        this.f244a = wVar;
        this.f246c = mVar;
        this.f245b = vVar;
        this.f247d = gVar;
        this.f248e = xVar;
        this.f251h = nVar;
        this.f250g = new C0108d(this.f249f);
    }

    /* renamed from: a */
    private static void m10184a(JSONObject jSONObject, String str) {
        AbstractC0150o c = C0137d.m10155c();
        c.mo10135a("Fabric", str + jSONObject.toString());
    }

    /* renamed from: b */
    private C0129t m10182b(EnumC0127r rVar) {
        Exception e;
        AbstractC0150o c;
        String str;
        r9 = null;
        C0129t tVar = null;
        try {
            if (!EnumC0127r.SKIP_CACHE_LOOKUP.equals(rVar)) {
                JSONObject a = this.f247d.mo10186a();
                if (a != null) {
                    tVar = this.f245b.mo10169a(this.f246c, a);
                    m10184a(a, "Loaded cached settings: ");
                    long a2 = this.f246c.mo10310a();
                    if (!EnumC0127r.IGNORE_CACHE_EXPIRATION.equals(rVar)) {
                        if (tVar.f290g < a2) {
                            c = C0137d.m10155c();
                            str = "Cached settings have expired.";
                        }
                    }
                    try {
                        C0137d.m10155c().mo10135a("Fabric", "Returning cached settings.");
                    } catch (Exception e2) {
                        e = e2;
                        C0137d.m10155c().mo10130c("Fabric", "Failed to get cached settings", e);
                        return tVar;
                    }
                } else {
                    c = C0137d.m10155c();
                    str = "No cached settings data found.";
                }
                c.mo10135a("Fabric", str);
                tVar = null;
            }
        } catch (Exception e3) {
            e = e3;
        }
        return tVar;
    }

    /* renamed from: b */
    private String m10183b() {
        return C0026j.m10337a(C0026j.m10318k(this.f249f.getContext()));
    }

    @Override // p000a.p001a.p002a.p003a.p004a.p012g.AbstractC0128s
    /* renamed from: a */
    public final C0129t mo10171a() {
        return mo10170a(EnumC0127r.USE_CACHE);
    }

    @Override // p000a.p001a.p002a.p003a.p004a.p012g.AbstractC0128s
    /* renamed from: a */
    public final C0129t mo10170a(EnumC0127r rVar) {
        if (!this.f251h.m10309a()) {
            C0137d.m10155c().mo10135a("Fabric", "Not fetching settings, because data collection is disabled by Firebase.");
            return null;
        }
        C0129t tVar = null;
        try {
            C0129t tVar2 = null;
            if (!C0137d.m10154d()) {
                tVar2 = null;
                if (!(!this.f250g.mo10190a().getString("existing_instance_identifier", "").equals(m10183b()))) {
                    tVar2 = m10182b(rVar);
                }
            }
            tVar = tVar2;
            if (tVar2 == null) {
                JSONObject a = this.f248e.mo10168a(this.f244a);
                tVar = tVar2;
                if (a != null) {
                    C0129t a2 = this.f245b.mo10169a(this.f246c, a);
                    this.f247d.mo10185a(a2.f290g, a);
                    m10184a(a, "Loaded settings: ");
                    String b = m10183b();
                    SharedPreferences.Editor b2 = this.f250g.mo10188b();
                    b2.putString("existing_instance_identifier", b);
                    this.f250g.mo10189a(b2);
                    tVar = a2;
                }
            }
            tVar = tVar;
            if (tVar == null) {
                tVar = m10182b(EnumC0127r.IGNORE_CACHE_EXPIRATION);
            }
        } catch (Exception e) {
            C0137d.m10155c().mo10130c("Fabric", "Unknown error while loading Crashlytics settings. Crashes will be cached until settings can be retrieved.", e);
        }
        return tVar;
    }
}

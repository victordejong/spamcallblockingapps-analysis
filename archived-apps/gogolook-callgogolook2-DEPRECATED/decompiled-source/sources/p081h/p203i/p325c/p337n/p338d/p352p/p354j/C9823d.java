package p081h.p203i.p325c.p337n.p338d.p352p.p354j;

import androidx.transition.Transition;
import com.taiwanmobile.p055pt.adp.view.webview.IJSExecutor;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
import p081h.p203i.p325c.p337n.p338d.C9513b;
import p081h.p203i.p325c.p337n.p338d.p341h.AbstractC9531a;
import p081h.p203i.p325c.p337n.p338d.p341h.C9546h;
import p081h.p203i.p325c.p337n.p338d.p341h.C9601m;
import p081h.p203i.p325c.p337n.p338d.p345k.C9766b;
import p081h.p203i.p325c.p337n.p338d.p345k.C9767c;
import p081h.p203i.p325c.p337n.p338d.p345k.C9768d;
import p081h.p203i.p325c.p337n.p338d.p345k.EnumC9765a;
import p081h.p203i.p325c.p337n.p338d.p352p.p353i.C9819g;
/* renamed from: h.i.c.n.d.p.j.d */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/p/j/d.class */
public class C9823d extends AbstractC9531a implements AbstractC9824e {

    /* renamed from: f */
    public C9513b f22293f;

    public C9823d(String str, String str2, C9767c cVar) {
        this(str, str2, cVar, EnumC9765a.GET, C9513b.m15015a());
    }

    public C9823d(String str, String str2, C9767c cVar, EnumC9765a aVar, C9513b bVar) {
        super(str, str2, cVar, aVar);
        this.f22293f = bVar;
    }

    /* renamed from: a */
    public final C9766b m14129a(C9766b bVar, C9819g gVar) {
        m14128a(bVar, "X-CRASHLYTICS-GOOGLE-APP-ID", gVar.f22283a);
        m14128a(bVar, "X-CRASHLYTICS-API-CLIENT-TYPE", IJSExecutor.JS_FUNCTION_GROUP);
        m14128a(bVar, "X-CRASHLYTICS-API-CLIENT-VERSION", C9601m.m14742e());
        m14128a(bVar, "Accept", "application/json");
        m14128a(bVar, "X-CRASHLYTICS-DEVICE-MODEL", gVar.f22284b);
        m14128a(bVar, "X-CRASHLYTICS-OS-BUILD-VERSION", gVar.f22285c);
        m14128a(bVar, "X-CRASHLYTICS-OS-DISPLAY-VERSION", gVar.f22286d);
        m14128a(bVar, "X-CRASHLYTICS-INSTALLATION-ID", gVar.f22287e.mo14681a());
        return bVar;
    }

    /* renamed from: a */
    public final Map<String, String> m14126a(C9819g gVar) {
        HashMap hashMap = new HashMap();
        hashMap.put("build_version", gVar.f22290h);
        hashMap.put("display_version", gVar.f22289g);
        hashMap.put("source", Integer.toString(gVar.f22291i));
        String str = gVar.f22288f;
        if (!C9546h.m14920b(str)) {
            hashMap.put(Transition.MATCH_INSTANCE_STR, str);
        }
        return hashMap;
    }

    /* renamed from: a */
    public JSONObject m14127a(C9768d dVar) {
        JSONObject jSONObject;
        int b = dVar.m14338b();
        C9513b bVar = this.f22293f;
        bVar.m15013a("Settings result was: " + b);
        if (m14130a(b)) {
            jSONObject = m14125b(dVar.m14341a());
        } else {
            C9513b bVar2 = this.f22293f;
            bVar2.m15011b("Failed to retrieve settings from " + m14971b());
            jSONObject = null;
        }
        return jSONObject;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p352p.p354j.AbstractC9824e
    /* renamed from: a */
    public JSONObject mo14124a(C9819g gVar, boolean z) {
        JSONObject jSONObject;
        if (z) {
            try {
                Map<String, String> a = m14126a(gVar);
                C9766b a2 = m14972a(a);
                m14129a(a2, gVar);
                C9513b bVar = this.f22293f;
                bVar.m15013a("Requesting settings from " + m14971b());
                C9513b bVar2 = this.f22293f;
                bVar2.m15013a("Settings query params were: " + a);
                C9768d b = a2.m14346b();
                C9513b bVar3 = this.f22293f;
                bVar3.m15013a("Settings request ID: " + b.m14340a("X-REQUEST-ID"));
                jSONObject = m14127a(b);
            } catch (IOException e) {
                this.f22293f.m15010b("Settings request failed.", e);
                jSONObject = null;
            }
            return jSONObject;
        }
        throw new RuntimeException("An invalid data collection token was used.");
    }

    /* renamed from: a */
    public final void m14128a(C9766b bVar, String str, String str2) {
        if (str2 != null) {
            bVar.m14349a(str, str2);
        }
    }

    /* renamed from: a */
    public boolean m14130a(int i) {
        return i == 200 || i == 201 || i == 202 || i == 203;
    }

    /* renamed from: b */
    public final JSONObject m14125b(String str) {
        try {
            return new JSONObject(str);
        } catch (Exception e) {
            C9513b bVar = this.f22293f;
            bVar.m15012a("Failed to parse settings JSON from " + m14971b(), e);
            C9513b bVar2 = this.f22293f;
            bVar2.m15013a("Settings response " + str);
            return null;
        }
    }
}

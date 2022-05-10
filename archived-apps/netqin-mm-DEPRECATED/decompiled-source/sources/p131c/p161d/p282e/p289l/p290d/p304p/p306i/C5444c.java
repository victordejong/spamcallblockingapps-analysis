package p131c.p161d.p282e.p289l.p290d.p304p.p306i;

import com.google.firebase.crashlytics.internal.common.CommonUtils;
import com.google.firebase.crashlytics.internal.network.HttpMethod;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
import p131c.p161d.p282e.p289l.p290d.C5192b;
import p131c.p161d.p282e.p289l.p290d.p293h.AbstractC5210a;
import p131c.p161d.p282e.p289l.p290d.p293h.C5269l;
import p131c.p161d.p282e.p289l.p290d.p297k.C5394a;
import p131c.p161d.p282e.p289l.p290d.p297k.C5395b;
import p131c.p161d.p282e.p289l.p290d.p297k.C5396c;
import p131c.p161d.p282e.p289l.p290d.p304p.p305h.C5441g;
/* renamed from: c.d.e.l.d.p.i.c */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/p/i/c.class */
public class C5444c extends AbstractC5210a implements AbstractC5445d {

    /* renamed from: f */
    public C5192b f18422f;

    public C5444c(String str, String str2, C5395b bVar) {
        this(str, str2, bVar, HttpMethod.GET, C5192b.m24319a());
    }

    public C5444c(String str, String str2, C5395b bVar, HttpMethod httpMethod, C5192b bVar2) {
        super(str, str2, bVar, httpMethod);
        this.f18422f = bVar2;
    }

    /* renamed from: a */
    public final C5394a m23766a(C5394a aVar, C5441g gVar) {
        m23765a(aVar, "X-CRASHLYTICS-GOOGLE-APP-ID", gVar.f18412a);
        m23765a(aVar, "X-CRASHLYTICS-API-CLIENT-TYPE", "android");
        m23765a(aVar, "X-CRASHLYTICS-API-CLIENT-VERSION", C5269l.m24107e());
        m23765a(aVar, "Accept", "application/json");
        m23765a(aVar, "X-CRASHLYTICS-DEVICE-MODEL", gVar.f18413b);
        m23765a(aVar, "X-CRASHLYTICS-OS-BUILD-VERSION", gVar.f18414c);
        m23765a(aVar, "X-CRASHLYTICS-OS-DISPLAY-VERSION", gVar.f18415d);
        m23765a(aVar, "X-CRASHLYTICS-INSTALLATION-ID", gVar.f18416e.mo24052a());
        return aVar;
    }

    /* renamed from: a */
    public final Map<String, String> m23763a(C5441g gVar) {
        HashMap hashMap = new HashMap();
        hashMap.put("build_version", gVar.f18419h);
        hashMap.put("display_version", gVar.f18418g);
        hashMap.put("source", Integer.toString(gVar.f18420i));
        String str = gVar.f18417f;
        if (!CommonUtils.m7651b(str)) {
            hashMap.put("instance", str);
        }
        return hashMap;
    }

    /* renamed from: a */
    public JSONObject m23764a(C5396c cVar) {
        JSONObject jSONObject;
        int b = cVar.m23921b();
        C5192b bVar = this.f18422f;
        bVar.m24317a("Settings result was: " + b);
        if (m23767a(b)) {
            jSONObject = m23762b(cVar.m23924a());
        } else {
            C5192b bVar2 = this.f18422f;
            bVar2.m24315b("Failed to retrieve settings from " + m24274b());
            jSONObject = null;
        }
        return jSONObject;
    }

    @Override // p131c.p161d.p282e.p289l.p290d.p304p.p306i.AbstractC5445d
    /* renamed from: a */
    public JSONObject mo23761a(C5441g gVar, boolean z) {
        JSONObject jSONObject;
        if (z) {
            try {
                Map<String, String> a = m23763a(gVar);
                C5394a a2 = m24275a(a);
                m23766a(a2, gVar);
                C5192b bVar = this.f18422f;
                bVar.m24317a("Requesting settings from " + m24274b());
                C5192b bVar2 = this.f18422f;
                bVar2.m24317a("Settings query params were: " + a);
                C5396c b = a2.m23929b();
                C5192b bVar3 = this.f18422f;
                bVar3.m24317a("Settings request ID: " + b.m23922a("X-REQUEST-ID"));
                jSONObject = m23764a(b);
            } catch (IOException e) {
                this.f18422f.m24314b("Settings request failed.", e);
                jSONObject = null;
            }
            return jSONObject;
        }
        throw new RuntimeException("An invalid data collection token was used.");
    }

    /* renamed from: a */
    public final void m23765a(C5394a aVar, String str, String str2) {
        if (str2 != null) {
            aVar.m23932a(str, str2);
        }
    }

    /* renamed from: a */
    public boolean m23767a(int i) {
        return i == 200 || i == 201 || i == 202 || i == 203;
    }

    /* renamed from: b */
    public final JSONObject m23762b(String str) {
        try {
            return new JSONObject(str);
        } catch (Exception e) {
            C5192b bVar = this.f18422f;
            bVar.m24316a("Failed to parse settings JSON from " + m24274b(), e);
            C5192b bVar2 = this.f18422f;
            bVar2.m24317a("Settings response " + str);
            return null;
        }
    }
}

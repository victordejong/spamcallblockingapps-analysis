package p131c.p161d.p282e.p289l.p290d.p304p.p306i;

import com.google.firebase.crashlytics.internal.common.CommonUtils;
import com.google.firebase.crashlytics.internal.network.HttpMethod;
import java.io.IOException;
import p131c.p161d.p282e.p289l.p290d.C5192b;
import p131c.p161d.p282e.p289l.p290d.p293h.AbstractC5210a;
import p131c.p161d.p282e.p289l.p290d.p293h.C5211a0;
import p131c.p161d.p282e.p289l.p290d.p297k.C5394a;
import p131c.p161d.p282e.p289l.p290d.p297k.C5395b;
import p131c.p161d.p282e.p289l.p290d.p297k.C5396c;
import p131c.p161d.p282e.p289l.p290d.p304p.p305h.C5435a;
/* renamed from: c.d.e.l.d.p.i.a */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/p/i/a.class */
public abstract class AbstractC5442a extends AbstractC5210a {

    /* renamed from: f */
    public final String f18421f;

    public AbstractC5442a(String str, String str2, C5395b bVar, HttpMethod httpMethod, String str3) {
        super(str, str2, bVar, httpMethod);
        this.f18421f = str3;
    }

    /* renamed from: a */
    public final C5394a m23770a(C5394a aVar, C5435a aVar2) {
        aVar.m23932a("X-CRASHLYTICS-ORG-ID", aVar2.f18387a);
        aVar.m23932a("X-CRASHLYTICS-GOOGLE-APP-ID", aVar2.f18388b);
        aVar.m23932a("X-CRASHLYTICS-API-CLIENT-TYPE", "android");
        aVar.m23932a("X-CRASHLYTICS-API-CLIENT-VERSION", this.f18421f);
        return aVar;
    }

    /* renamed from: a */
    public boolean m23769a(C5435a aVar, boolean z) {
        if (z) {
            C5394a a = m24277a();
            m23770a(a, aVar);
            m23768b(a, aVar);
            C5192b a2 = C5192b.m24319a();
            a2.m24317a("Sending app info to " + m24274b());
            try {
                C5396c b = a.m23929b();
                int b2 = b.m23921b();
                String str = "POST".equalsIgnoreCase(a.m23926d()) ? "Create" : "Update";
                C5192b a3 = C5192b.m24319a();
                a3.m24317a(str + " app request ID: " + b.m23922a("X-REQUEST-ID"));
                C5192b a4 = C5192b.m24319a();
                a4.m24317a("Result was " + b2);
                return C5211a0.m24273a(b2) == 0;
            } catch (IOException e) {
                C5192b.m24319a().m24314b("HTTP request failed.", e);
                throw new RuntimeException(e);
            }
        } else {
            throw new RuntimeException("An invalid data collection token was used.");
        }
    }

    /* renamed from: b */
    public final C5394a m23768b(C5394a aVar, C5435a aVar2) {
        aVar.m23928b("org_id", aVar2.f18387a);
        aVar.m23928b("app[identifier]", aVar2.f18389c);
        aVar.m23928b("app[name]", aVar2.f18393g);
        aVar.m23928b("app[display_version]", aVar2.f18390d);
        aVar.m23928b("app[build_version]", aVar2.f18391e);
        aVar.m23928b("app[source]", Integer.toString(aVar2.f18394h));
        aVar.m23928b("app[minimum_sdk_version]", aVar2.f18395i);
        aVar.m23928b("app[built_sdk_version]", aVar2.f18396j);
        if (!CommonUtils.m7651b(aVar2.f18392f)) {
            aVar.m23928b("app[instance_identifier]", aVar2.f18392f);
        }
        return aVar;
    }
}

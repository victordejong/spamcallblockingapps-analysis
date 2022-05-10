package p131c.p372f.p373a.p374a.p375a.p381m.p382h;

import android.content.Context;
import com.integralads.avid.library.mopub.session.internal.InternalAvidAdSessionContext;
import org.json.JSONException;
import org.json.JSONObject;
import p131c.p372f.p373a.p374a.p375a.C6400b;
import p131c.p372f.p373a.p374a.p375a.p381m.C6433g;
/* renamed from: c.f.a.a.a.m.h.a */
/* loaded from: classes2-dex2jar.jar:c/f/a/a/a/m/h/a.class */
public class C6434a {

    /* renamed from: a */
    public String f20113a;

    /* renamed from: b */
    public C6433g f20114b;

    /* renamed from: c */
    public String f20115c;

    /* renamed from: d */
    public String f20116d;

    public C6434a(Context context, String str, String str2, String str3, C6433g gVar) {
        C6400b.m20978d().m20981a(context);
        this.f20113a = str;
        this.f20114b = gVar;
        this.f20115c = str2;
        this.f20116d = str3;
    }

    /* renamed from: a */
    public String m20884a() {
        return this.f20113a;
    }

    /* renamed from: b */
    public JSONObject m20883b() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("avidAdSessionId", this.f20113a);
            jSONObject.put("bundleIdentifier", C6400b.m20978d().m20980b());
            jSONObject.put("partner", C6400b.m20978d().m20979c());
            jSONObject.put("partnerVersion", this.f20114b.m20886a());
            jSONObject.put("avidLibraryVersion", C6400b.m20978d().m20982a());
            jSONObject.put(InternalAvidAdSessionContext.CONTEXT_AVID_AD_SESSION_TYPE, this.f20115c);
            jSONObject.put(InternalAvidAdSessionContext.CONTEXT_MEDIA_TYPE, this.f20116d);
            jSONObject.put(InternalAvidAdSessionContext.CONTEXT_IS_DEFERRED, this.f20114b.m20885b());
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject;
    }

    /* renamed from: c */
    public JSONObject m20882c() {
        JSONObject b = m20883b();
        try {
            b.put(InternalAvidAdSessionContext.CONTEXT_AVID_API_LEVEL, InternalAvidAdSessionContext.AVID_API_LEVEL);
            b.put(InternalAvidAdSessionContext.CONTEXT_MODE, InternalAvidAdSessionContext.AVID_STUB_MODE);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return b;
    }
}

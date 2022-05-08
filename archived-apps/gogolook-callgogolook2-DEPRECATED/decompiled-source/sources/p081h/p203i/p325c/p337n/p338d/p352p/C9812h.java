package p081h.p203i.p325c.p337n.p338d.p352p;

import androidx.core.util.TimeUtils;
import gogolook.callgogolook2.realm.obj.iap.IapPlanRealmObject;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p203i.p325c.p337n.p338d.p341h.AbstractC9612s;
import p081h.p203i.p325c.p337n.p338d.p352p.p353i.C9814b;
import p081h.p203i.p325c.p337n.p338d.p352p.p353i.C9815c;
import p081h.p203i.p325c.p337n.p338d.p352p.p353i.C9816d;
import p081h.p203i.p325c.p337n.p338d.p352p.p353i.C9818f;
/* renamed from: h.i.c.n.d.p.h */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/p/h.class */
public class C9812h implements AbstractC9811g {
    /* renamed from: a */
    public static long m14142a(AbstractC9612s sVar, long j, JSONObject jSONObject) {
        return jSONObject.has("expires_at") ? jSONObject.optLong("expires_at") : sVar.mo14711a() + (j * 1000);
    }

    /* renamed from: a */
    public static C9814b m14139a(JSONObject jSONObject, JSONObject jSONObject2) throws JSONException {
        String string = jSONObject2.getString("status");
        boolean equals = "new".equals(string);
        String string2 = jSONObject.getString("bundle_id");
        return new C9814b(string, equals ? "https://update.crashlytics.com/spi/v1/platforms/android/apps" : String.format(Locale.US, "https://update.crashlytics.com/spi/v1/platforms/android/apps/%s", string2), String.format(Locale.US, "https://reports.crashlytics.com/spi/v1/platforms/android/apps/%s/reports", string2), String.format(Locale.US, "https://reports.crashlytics.com/sdk-api/v1/platforms/android/apps/%s/minidumps", string2), string2, jSONObject.getString("org_id"), jSONObject2.optBoolean("update_required", false), jSONObject2.optInt("report_upload_variant", 0), jSONObject2.optInt("native_report_upload_variant", 0));
    }

    /* renamed from: a */
    public static C9815c m14140a(JSONObject jSONObject) {
        return new C9815c(jSONObject.optBoolean("collect_reports", true));
    }

    /* renamed from: a */
    public static C9816d m14143a() {
        return new C9816d(8, 4);
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p352p.AbstractC9811g
    /* renamed from: a */
    public C9818f mo14141a(AbstractC9612s sVar, JSONObject jSONObject) throws JSONException {
        int optInt = jSONObject.optInt("settings_version", 0);
        int optInt2 = jSONObject.optInt("cache_duration", TimeUtils.SECONDS_PER_HOUR);
        return new C9818f(m14142a(sVar, optInt2, jSONObject), m14139a(jSONObject.getJSONObject("fabric"), jSONObject.getJSONObject("app")), m14143a(), m14140a(jSONObject.getJSONObject(IapPlanRealmObject.FEATURES)), optInt, optInt2);
    }
}

package com.appsflyer;

import com.appsflyer.internal.C0655af;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/appsflyer/ServerConfigHandler.class */
public class ServerConfigHandler {
    public static String getUrl(String str) {
        return String.format(str, AppsFlyerLib.getInstance().getHostPrefix(), AppsFlyerLibCore.getInstance().getHostName());
    }

    /* renamed from: ι */
    static JSONObject m4106(String str) {
        JSONObject jSONObject;
        Throwable th;
        JSONObject jSONObject2;
        try {
            jSONObject2 = new JSONObject(str);
        } catch (Throwable th2) {
            th = th2;
            jSONObject = null;
        }
        try {
            boolean z = AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.DPM, false);
            if (!jSONObject2.optBoolean("monitor", false) || z) {
                C0655af.m4065().m4070();
                C0655af.m4065().m4075();
            } else {
                C0655af.m4065().m4064();
            }
            jSONObject = jSONObject2;
            if (jSONObject2.has("ol_id")) {
                String optString = jSONObject2.optString("ol_scheme", null);
                String optString2 = jSONObject2.optString("ol_domain", null);
                String optString3 = jSONObject2.optString("ol_ver", null);
                if (optString != null) {
                    AppsFlyerProperties.getInstance().set(AppsFlyerProperties.ONELINK_SCHEME, optString);
                }
                if (optString2 != null) {
                    AppsFlyerProperties.getInstance().set(AppsFlyerProperties.ONELINK_DOMAIN, optString2);
                }
                jSONObject = jSONObject2;
                if (optString3 != null) {
                    AppsFlyerProperties.getInstance().set("onelinkVersion", optString3);
                    jSONObject = jSONObject2;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            jSONObject = jSONObject2;
            AFLogger.afErrorLog(th.getMessage(), th);
            C0655af.m4065().m4070();
            C0655af.m4065().m4075();
            return jSONObject;
        }
        return jSONObject;
    }
}

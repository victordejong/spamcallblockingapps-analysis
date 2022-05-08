package com.appsflyer;

import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/appsflyer/AppsFlyer2dXConversionCallback.class */
public class AppsFlyer2dXConversionCallback implements AppsFlyerConversionListener {
    /* renamed from: Ι */
    private void m36270(String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("status", "failure");
            jSONObject.put("data", str2);
            char c = 65535;
            int hashCode = str.hashCode();
            if (hashCode != -1390007222) {
                if (hashCode == 1050716216 && str.equals("onInstallConversionFailure")) {
                    c = 0;
                }
            } else if (str.equals("onAttributionFailure")) {
                c = 1;
            }
            if (c == 0) {
                onInstallConversionFailureNative(jSONObject);
            } else if (c == 1) {
                onAttributionFailureNative(jSONObject);
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    @Override // com.appsflyer.AppsFlyerConversionListener
    public void onAppOpenAttribution(Map<String, String> map) {
        onAppOpenAttributionNative(map);
    }

    public native void onAppOpenAttributionNative(Object obj);

    @Override // com.appsflyer.AppsFlyerConversionListener
    public void onAttributionFailure(String str) {
        m36270("onInstallConversionFailure", str);
    }

    public native void onAttributionFailureNative(Object obj);

    @Override // com.appsflyer.AppsFlyerConversionListener
    public void onConversionDataFail(String str) {
        m36270("onAttributionFailure", str);
    }

    @Override // com.appsflyer.AppsFlyerConversionListener
    public void onConversionDataSuccess(Map<String, Object> map) {
        onInstallConversionDataLoadedNative(map);
    }

    public native void onInstallConversionDataLoadedNative(Object obj);

    public native void onInstallConversionFailureNative(Object obj);
}

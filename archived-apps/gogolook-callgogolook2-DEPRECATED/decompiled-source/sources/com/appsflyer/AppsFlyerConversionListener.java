package com.appsflyer;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/appsflyer/AppsFlyerConversionListener.class */
public interface AppsFlyerConversionListener {
    void onAppOpenAttribution(Map<String, String> map);

    void onAttributionFailure(String str);

    void onConversionDataFail(String str);

    void onConversionDataSuccess(Map<String, Object> map);
}

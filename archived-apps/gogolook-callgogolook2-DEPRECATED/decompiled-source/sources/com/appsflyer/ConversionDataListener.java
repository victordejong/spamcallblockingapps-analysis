package com.appsflyer;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/appsflyer/ConversionDataListener.class */
public interface ConversionDataListener {
    void onConversionDataLoaded(Map<String, Object> map);

    void onConversionFailure(String str);
}

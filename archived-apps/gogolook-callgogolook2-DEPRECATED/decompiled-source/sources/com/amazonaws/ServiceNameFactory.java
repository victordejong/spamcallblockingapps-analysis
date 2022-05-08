package com.amazonaws;

import com.amazonaws.internal.config.HttpClientConfig;
import com.amazonaws.internal.config.InternalConfig;
/* loaded from: classes-dex2jar.jar:com/amazonaws/ServiceNameFactory.class */
public enum ServiceNameFactory {
    ;

    public static String getServiceName(String str) {
        HttpClientConfig httpClientConfig = InternalConfig.Factory.getInternalConfig().getHttpClientConfig(str);
        return httpClientConfig == null ? null : httpClientConfig.getServiceName();
    }
}

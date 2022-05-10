package com.facebook.ads.internal.api;

import androidx.annotation.Keep;
import com.facebook.ads.BuildConfig;
@Keep
/* loaded from: classes-dex2jar.jar:com/facebook/ads/internal/api/BuildConfigApi.class */
public class BuildConfigApi {
    public static String getVersionName() {
        return BuildConfig.VERSION_NAME;
    }

    public static boolean isDebug() {
        return BuildConfig.DEBUG;
    }
}

package com.crashlytics.android.core;

import android.content.Context;
import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/ManifestUnityVersionProvider.class */
class ManifestUnityVersionProvider implements UnityVersionProvider {
    static final String FABRIC_UNITY_CRASHLYTICS_VERSION_KEY = "io.fabric.unity.crashlytics.version";
    private final Context context;
    private final String packageName;

    public ManifestUnityVersionProvider(Context context, String str) {
        this.context = context;
        this.packageName = str;
    }

    @Override // com.crashlytics.android.core.UnityVersionProvider
    public String getUnityVersion() {
        String str;
        try {
            Bundle bundle = this.context.getPackageManager().getApplicationInfo(this.packageName, 128).metaData;
            str = null;
            if (bundle != null) {
                str = bundle.getString(FABRIC_UNITY_CRASHLYTICS_VERSION_KEY);
            }
        } catch (Exception e) {
            str = null;
        }
        return str;
    }
}

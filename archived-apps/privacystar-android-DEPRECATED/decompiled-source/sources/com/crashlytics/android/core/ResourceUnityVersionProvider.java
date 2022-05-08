package com.crashlytics.android.core;

import android.content.Context;
import io.fabric.sdk.android.services.common.CommonUtils;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/ResourceUnityVersionProvider.class */
class ResourceUnityVersionProvider implements UnityVersionProvider {
    private final Context context;
    private final UnityVersionProvider fallback;
    private boolean hasRead = false;
    private String unityVersion;

    public ResourceUnityVersionProvider(Context context, UnityVersionProvider unityVersionProvider) {
        this.context = context;
        this.fallback = unityVersionProvider;
    }

    @Override // com.crashlytics.android.core.UnityVersionProvider
    public String getUnityVersion() {
        if (!this.hasRead) {
            this.unityVersion = CommonUtils.resolveUnityEditorVersion(this.context);
            this.hasRead = true;
        }
        if (this.unityVersion != null) {
            return this.unityVersion;
        }
        if (this.fallback != null) {
            return this.fallback.getUnityVersion();
        }
        return null;
    }
}

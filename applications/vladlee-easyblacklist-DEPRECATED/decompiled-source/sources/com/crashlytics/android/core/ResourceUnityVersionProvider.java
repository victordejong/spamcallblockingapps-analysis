package com.crashlytics.android.core;

import android.content.Context;
import p000a.p001a.p002a.p003a.p004a.p006b.C0026j;
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
            this.unityVersion = C0026j.m10317l(this.context);
            this.hasRead = true;
        }
        String str = this.unityVersion;
        if (str != null) {
            return str;
        }
        UnityVersionProvider unityVersionProvider = this.fallback;
        if (unityVersionProvider != null) {
            return unityVersionProvider.getUnityVersion();
        }
        return null;
    }
}

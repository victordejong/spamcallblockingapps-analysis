package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.doubleclick.AppEventListener;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzul.class */
public final class zzul extends zzwb {

    /* renamed from: a */
    private final AppEventListener f15578a;

    public zzul(AppEventListener appEventListener) {
        this.f15578a = appEventListener;
    }

    public final AppEventListener getAppEventListener() {
        return this.f15578a;
    }

    @Override // com.google.android.gms.internal.ads.zzwc
    public final void onAppEvent(String str, String str2) {
        this.f15578a.onAppEvent(str, str2);
    }
}

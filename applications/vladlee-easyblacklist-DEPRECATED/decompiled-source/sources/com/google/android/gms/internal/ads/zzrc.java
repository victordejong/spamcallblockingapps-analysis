package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.appopen.AppOpenAdPresentationCallback;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzrc.class */
public final class zzrc extends zzrk {

    /* renamed from: a */
    private final AppOpenAdPresentationCallback f15426a;

    public zzrc(AppOpenAdPresentationCallback appOpenAdPresentationCallback) {
        this.f15426a = appOpenAdPresentationCallback;
    }

    @Override // com.google.android.gms.internal.ads.zzrl
    public final void onAppOpenAdClosed() {
        this.f15426a.onAppOpenAdClosed();
    }
}

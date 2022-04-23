package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.UnifiedNativeAd;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaer.class */
public final class zzaer extends zzady {

    /* renamed from: a */
    private final UnifiedNativeAd.OnUnifiedNativeAdLoadedListener f10885a;

    public zzaer(UnifiedNativeAd.OnUnifiedNativeAdLoadedListener onUnifiedNativeAdLoadedListener) {
        this.f10885a = onUnifiedNativeAdLoadedListener;
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final void zza(zzaeg zzaegVar) {
        this.f10885a.onUnifiedNativeAdLoaded(new zzaeh(zzaegVar));
    }
}

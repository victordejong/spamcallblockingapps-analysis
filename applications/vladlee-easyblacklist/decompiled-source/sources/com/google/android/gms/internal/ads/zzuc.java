package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdListener;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzuc.class */
public final class zzuc extends zzvk {

    /* renamed from: a */
    private final AdListener f15555a;

    public zzuc(AdListener adListener) {
        this.f15555a = adListener;
    }

    public final AdListener getAdListener() {
        return this.f15555a;
    }

    @Override // com.google.android.gms.internal.ads.zzvh
    public final void onAdClicked() {
        this.f15555a.onAdClicked();
    }

    @Override // com.google.android.gms.internal.ads.zzvh
    public final void onAdClosed() {
        this.f15555a.onAdClosed();
    }

    @Override // com.google.android.gms.internal.ads.zzvh
    public final void onAdFailedToLoad(int i) {
        this.f15555a.onAdFailedToLoad(i);
    }

    @Override // com.google.android.gms.internal.ads.zzvh
    public final void onAdImpression() {
        this.f15555a.onAdImpression();
    }

    @Override // com.google.android.gms.internal.ads.zzvh
    public final void onAdLeftApplication() {
        this.f15555a.onAdLeftApplication();
    }

    @Override // com.google.android.gms.internal.ads.zzvh
    public final void onAdLoaded() {
        this.f15555a.onAdLoaded();
    }

    @Override // com.google.android.gms.internal.ads.zzvh
    public final void onAdOpened() {
        this.f15555a.onAdOpened();
    }
}

package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.reward.AdMetadataListener;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzud.class */
public final class zzud extends zzwa {

    /* renamed from: a */
    private final AdMetadataListener f15556a;

    public zzud(AdMetadataListener adMetadataListener) {
        this.f15556a = adMetadataListener;
    }

    @Override // com.google.android.gms.internal.ads.zzvx
    public final void onAdMetadataChanged() {
        AdMetadataListener adMetadataListener = this.f15556a;
        if (adMetadataListener != null) {
            adMetadataListener.onAdMetadataChanged();
        }
    }
}

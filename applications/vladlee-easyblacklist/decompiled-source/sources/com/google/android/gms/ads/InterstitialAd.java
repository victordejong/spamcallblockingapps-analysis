package com.google.android.gms.ads;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.reward.AdMetadataListener;
import com.google.android.gms.ads.reward.RewardedVideoAdListener;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzty;
import com.google.android.gms.internal.ads.zzxn;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/InterstitialAd.class */
public final class InterstitialAd {

    /* renamed from: a */
    private final zzxn f5826a;

    public InterstitialAd(Context context) {
        this.f5826a = new zzxn(context);
        Preconditions.checkNotNull(context, "Context cannot be null");
    }

    public final AdListener getAdListener() {
        return this.f5826a.getAdListener();
    }

    public final Bundle getAdMetadata() {
        return this.f5826a.getAdMetadata();
    }

    public final String getAdUnitId() {
        return this.f5826a.getAdUnitId();
    }

    public final String getMediationAdapterClassName() {
        return this.f5826a.getMediationAdapterClassName();
    }

    public final boolean isLoaded() {
        return this.f5826a.isLoaded();
    }

    public final boolean isLoading() {
        return this.f5826a.isLoading();
    }

    public final void loadAd(AdRequest adRequest) {
        this.f5826a.zza(adRequest.zzdg());
    }

    public final void setAdListener(AdListener adListener) {
        this.f5826a.setAdListener(adListener);
        if (adListener != null && (adListener instanceof zzty)) {
            this.f5826a.zza((zzty) adListener);
        } else if (adListener == null) {
            this.f5826a.zza((zzty) null);
        }
    }

    public final void setAdMetadataListener(AdMetadataListener adMetadataListener) {
        this.f5826a.setAdMetadataListener(adMetadataListener);
    }

    public final void setAdUnitId(String str) {
        this.f5826a.setAdUnitId(str);
    }

    public final void setImmersiveMode(boolean z) {
        this.f5826a.setImmersiveMode(z);
    }

    public final void setRewardedVideoAdListener(RewardedVideoAdListener rewardedVideoAdListener) {
        this.f5826a.setRewardedVideoAdListener(rewardedVideoAdListener);
    }

    public final void show() {
        this.f5826a.show();
    }

    public final void zzd(boolean z) {
        this.f5826a.zzd(true);
    }
}

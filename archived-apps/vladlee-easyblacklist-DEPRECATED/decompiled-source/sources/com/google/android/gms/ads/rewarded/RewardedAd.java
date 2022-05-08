package com.google.android.gms.ads.rewarded;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.doubleclick.PublisherAdRequest;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzasv;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/rewarded/RewardedAd.class */
public final class RewardedAd {

    /* renamed from: a */
    private final zzasv f6081a;

    public RewardedAd(Context context, String str) {
        Preconditions.checkNotNull(context, "context cannot be null");
        Preconditions.checkNotNull(str, "adUnitID cannot be null");
        this.f6081a = new zzasv(context, str);
    }

    public final Bundle getAdMetadata() {
        return this.f6081a.getAdMetadata();
    }

    public final String getMediationAdapterClassName() {
        return this.f6081a.getMediationAdapterClassName();
    }

    public final RewardItem getRewardItem() {
        return this.f6081a.getRewardItem();
    }

    public final boolean isLoaded() {
        return this.f6081a.isLoaded();
    }

    public final void loadAd(AdRequest adRequest, RewardedAdLoadCallback rewardedAdLoadCallback) {
        this.f6081a.zza(adRequest.zzdg(), rewardedAdLoadCallback);
    }

    public final void loadAd(PublisherAdRequest publisherAdRequest, RewardedAdLoadCallback rewardedAdLoadCallback) {
        this.f6081a.zza(publisherAdRequest.zzdg(), rewardedAdLoadCallback);
    }

    public final void setOnAdMetadataChangedListener(OnAdMetadataChangedListener onAdMetadataChangedListener) {
        this.f6081a.setOnAdMetadataChangedListener(onAdMetadataChangedListener);
    }

    public final void setServerSideVerificationOptions(ServerSideVerificationOptions serverSideVerificationOptions) {
        this.f6081a.setServerSideVerificationOptions(serverSideVerificationOptions);
    }

    public final void show(Activity activity, RewardedAdCallback rewardedAdCallback) {
        this.f6081a.show(activity, rewardedAdCallback);
    }

    public final void show(Activity activity, RewardedAdCallback rewardedAdCallback, boolean z) {
        this.f6081a.show(activity, rewardedAdCallback, z);
    }
}

package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.rewarded.RewardedAdLoadCallback;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzasy.class */
public final class zzasy extends zzasr {

    /* renamed from: a */
    private final RewardedAdLoadCallback f11347a;

    public zzasy(RewardedAdLoadCallback rewardedAdLoadCallback) {
        this.f11347a = rewardedAdLoadCallback;
    }

    @Override // com.google.android.gms.internal.ads.zzaso
    public final void onRewardedAdFailedToLoad(int i) {
        RewardedAdLoadCallback rewardedAdLoadCallback = this.f11347a;
        if (rewardedAdLoadCallback != null) {
            rewardedAdLoadCallback.onRewardedAdFailedToLoad(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaso
    public final void onRewardedAdLoaded() {
        RewardedAdLoadCallback rewardedAdLoadCallback = this.f11347a;
        if (rewardedAdLoadCallback != null) {
            rewardedAdLoadCallback.onRewardedAdLoaded();
        }
    }
}

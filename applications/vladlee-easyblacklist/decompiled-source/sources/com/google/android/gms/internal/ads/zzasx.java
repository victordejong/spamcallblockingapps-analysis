package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.rewarded.RewardedAdCallback;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzasx.class */
public final class zzasx extends zzask {

    /* renamed from: a */
    private final RewardedAdCallback f11346a;

    public zzasx(RewardedAdCallback rewardedAdCallback) {
        this.f11346a = rewardedAdCallback;
    }

    @Override // com.google.android.gms.internal.ads.zzasl
    public final void onRewardedAdClosed() {
        RewardedAdCallback rewardedAdCallback = this.f11346a;
        if (rewardedAdCallback != null) {
            rewardedAdCallback.onRewardedAdClosed();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzasl
    public final void onRewardedAdFailedToShow(int i) {
        RewardedAdCallback rewardedAdCallback = this.f11346a;
        if (rewardedAdCallback != null) {
            rewardedAdCallback.onRewardedAdFailedToShow(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzasl
    public final void onRewardedAdOpened() {
        RewardedAdCallback rewardedAdCallback = this.f11346a;
        if (rewardedAdCallback != null) {
            rewardedAdCallback.onRewardedAdOpened();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzasl
    public final void zza(zzasf zzasfVar) {
        RewardedAdCallback rewardedAdCallback = this.f11346a;
        if (rewardedAdCallback != null) {
            rewardedAdCallback.onUserEarnedReward(new zzasu(zzasfVar));
        }
    }
}

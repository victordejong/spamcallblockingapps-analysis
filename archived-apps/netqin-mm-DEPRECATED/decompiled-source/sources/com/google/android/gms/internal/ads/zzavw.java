package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAdLoadCallback;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzavw.class */
public final class zzavw extends zzavj {

    /* renamed from: a */
    public final RewardedInterstitialAdLoadCallback f24544a;

    /* renamed from: b */
    public final zzavz f24545b;

    @Override // com.google.android.gms.internal.ads.zzavg
    /* renamed from: c */
    public final void mo16285c(zzva zzvaVar) {
        RewardedInterstitialAdLoadCallback rewardedInterstitialAdLoadCallback = this.f24544a;
        if (rewardedInterstitialAdLoadCallback != null) {
            rewardedInterstitialAdLoadCallback.m17894a(zzvaVar.m11206i());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavg
    /* renamed from: l */
    public final void mo16284l(int i) {
        RewardedInterstitialAdLoadCallback rewardedInterstitialAdLoadCallback = this.f24544a;
        if (rewardedInterstitialAdLoadCallback != null) {
            rewardedInterstitialAdLoadCallback.m17895a(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavg
    public final void onRewardedAdLoaded() {
        zzavz zzavzVar;
        RewardedInterstitialAdLoadCallback rewardedInterstitialAdLoadCallback = this.f24544a;
        if (rewardedInterstitialAdLoadCallback != null && (zzavzVar = this.f24545b) != null) {
            rewardedInterstitialAdLoadCallback.m17893a(zzavzVar);
        }
    }
}

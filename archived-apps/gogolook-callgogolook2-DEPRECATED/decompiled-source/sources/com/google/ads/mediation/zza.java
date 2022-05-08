package com.google.ads.mediation;

import com.google.android.gms.ads.reward.RewardItem;
import com.google.android.gms.ads.reward.RewardedVideoAdListener;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener;
/* loaded from: classes2-dex2jar.jar:com/google/ads/mediation/zza.class */
public final class zza implements RewardedVideoAdListener {
    public final /* synthetic */ AbstractAdViewAdapter zzhh;

    public zza(AbstractAdViewAdapter abstractAdViewAdapter) {
        this.zzhh = abstractAdViewAdapter;
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
    public final void onRewarded(RewardItem rewardItem) {
        MediationRewardedVideoAdListener mediationRewardedVideoAdListener;
        mediationRewardedVideoAdListener = this.zzhh.zzhf;
        mediationRewardedVideoAdListener.onRewarded(this.zzhh, rewardItem);
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
    public final void onRewardedVideoAdClosed() {
        MediationRewardedVideoAdListener mediationRewardedVideoAdListener;
        mediationRewardedVideoAdListener = this.zzhh.zzhf;
        mediationRewardedVideoAdListener.onAdClosed(this.zzhh);
        this.zzhh.zzhe = null;
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
    public final void onRewardedVideoAdFailedToLoad(int i) {
        MediationRewardedVideoAdListener mediationRewardedVideoAdListener;
        mediationRewardedVideoAdListener = this.zzhh.zzhf;
        mediationRewardedVideoAdListener.onAdFailedToLoad(this.zzhh, i);
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
    public final void onRewardedVideoAdLeftApplication() {
        MediationRewardedVideoAdListener mediationRewardedVideoAdListener;
        mediationRewardedVideoAdListener = this.zzhh.zzhf;
        mediationRewardedVideoAdListener.onAdLeftApplication(this.zzhh);
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
    public final void onRewardedVideoAdLoaded() {
        MediationRewardedVideoAdListener mediationRewardedVideoAdListener;
        mediationRewardedVideoAdListener = this.zzhh.zzhf;
        mediationRewardedVideoAdListener.onAdLoaded(this.zzhh);
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
    public final void onRewardedVideoAdOpened() {
        MediationRewardedVideoAdListener mediationRewardedVideoAdListener;
        mediationRewardedVideoAdListener = this.zzhh.zzhf;
        mediationRewardedVideoAdListener.onAdOpened(this.zzhh);
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
    public final void onRewardedVideoCompleted() {
        MediationRewardedVideoAdListener mediationRewardedVideoAdListener;
        mediationRewardedVideoAdListener = this.zzhh.zzhf;
        mediationRewardedVideoAdListener.onVideoCompleted(this.zzhh);
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
    public final void onRewardedVideoStarted() {
        MediationRewardedVideoAdListener mediationRewardedVideoAdListener;
        mediationRewardedVideoAdListener = this.zzhh.zzhf;
        mediationRewardedVideoAdListener.onVideoStarted(this.zzhh);
    }
}

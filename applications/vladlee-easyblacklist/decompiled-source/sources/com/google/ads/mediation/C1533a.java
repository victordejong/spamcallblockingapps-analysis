package com.google.ads.mediation;

import com.google.android.gms.ads.reward.RewardItem;
import com.google.android.gms.ads.reward.RewardedVideoAdListener;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.ads.mediation.a */
/* loaded from: classes-dex2jar.jar:com/google/ads/mediation/a.class */
public final class C1533a implements RewardedVideoAdListener {

    /* renamed from: a */
    private final /* synthetic */ AbstractAdViewAdapter f5800a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1533a(AbstractAdViewAdapter abstractAdViewAdapter) {
        this.f5800a = abstractAdViewAdapter;
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
    public final void onRewarded(RewardItem rewardItem) {
        MediationRewardedVideoAdListener mediationRewardedVideoAdListener;
        mediationRewardedVideoAdListener = this.f5800a.zzlv;
        mediationRewardedVideoAdListener.onRewarded(this.f5800a, rewardItem);
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
    public final void onRewardedVideoAdClosed() {
        MediationRewardedVideoAdListener mediationRewardedVideoAdListener;
        mediationRewardedVideoAdListener = this.f5800a.zzlv;
        mediationRewardedVideoAdListener.onAdClosed(this.f5800a);
        this.f5800a.zzlu = null;
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
    public final void onRewardedVideoAdFailedToLoad(int i) {
        MediationRewardedVideoAdListener mediationRewardedVideoAdListener;
        mediationRewardedVideoAdListener = this.f5800a.zzlv;
        mediationRewardedVideoAdListener.onAdFailedToLoad(this.f5800a, i);
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
    public final void onRewardedVideoAdLeftApplication() {
        MediationRewardedVideoAdListener mediationRewardedVideoAdListener;
        mediationRewardedVideoAdListener = this.f5800a.zzlv;
        mediationRewardedVideoAdListener.onAdLeftApplication(this.f5800a);
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
    public final void onRewardedVideoAdLoaded() {
        MediationRewardedVideoAdListener mediationRewardedVideoAdListener;
        mediationRewardedVideoAdListener = this.f5800a.zzlv;
        mediationRewardedVideoAdListener.onAdLoaded(this.f5800a);
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
    public final void onRewardedVideoAdOpened() {
        MediationRewardedVideoAdListener mediationRewardedVideoAdListener;
        mediationRewardedVideoAdListener = this.f5800a.zzlv;
        mediationRewardedVideoAdListener.onAdOpened(this.f5800a);
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
    public final void onRewardedVideoCompleted() {
        MediationRewardedVideoAdListener mediationRewardedVideoAdListener;
        mediationRewardedVideoAdListener = this.f5800a.zzlv;
        mediationRewardedVideoAdListener.onVideoCompleted(this.f5800a);
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
    public final void onRewardedVideoStarted() {
        MediationRewardedVideoAdListener mediationRewardedVideoAdListener;
        mediationRewardedVideoAdListener = this.f5800a.zzlv;
        mediationRewardedVideoAdListener.onVideoStarted(this.f5800a);
    }
}

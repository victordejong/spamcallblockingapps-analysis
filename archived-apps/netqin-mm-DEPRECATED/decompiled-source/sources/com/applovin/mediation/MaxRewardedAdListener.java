package com.applovin.mediation;
/* loaded from: classes-dex2jar.jar:com/applovin/mediation/MaxRewardedAdListener.class */
public interface MaxRewardedAdListener extends MaxAdListener {
    void onRewardedVideoCompleted(MaxAd maxAd);

    void onRewardedVideoStarted(MaxAd maxAd);

    void onUserRewarded(MaxAd maxAd, MaxReward maxReward);
}

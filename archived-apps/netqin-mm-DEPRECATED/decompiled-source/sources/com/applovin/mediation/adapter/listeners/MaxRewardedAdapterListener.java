package com.applovin.mediation.adapter.listeners;

import com.applovin.mediation.MaxReward;
import com.applovin.mediation.adapter.MaxAdapterError;
/* loaded from: classes-dex2jar.jar:com/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener.class */
public interface MaxRewardedAdapterListener extends MaxAdapterListener {
    void onRewardedAdClicked();

    void onRewardedAdDisplayFailed(MaxAdapterError maxAdapterError);

    void onRewardedAdDisplayed();

    void onRewardedAdHidden();

    void onRewardedAdLoadFailed(MaxAdapterError maxAdapterError);

    void onRewardedAdLoaded();

    void onRewardedAdVideoCompleted();

    void onRewardedAdVideoStarted();

    void onUserRewarded(MaxReward maxReward);
}

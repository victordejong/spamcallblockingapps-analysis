package com.applovin.mediation.adapter.listeners;

import com.applovin.mediation.adapter.MaxAdapterError;
/* loaded from: classes-dex2jar.jar:com/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener.class */
public interface MaxInterstitialAdapterListener extends MaxAdapterListener {
    void onInterstitialAdClicked();

    void onInterstitialAdDisplayFailed(MaxAdapterError maxAdapterError);

    void onInterstitialAdDisplayed();

    void onInterstitialAdHidden();

    void onInterstitialAdLoadFailed(MaxAdapterError maxAdapterError);

    void onInterstitialAdLoaded();
}

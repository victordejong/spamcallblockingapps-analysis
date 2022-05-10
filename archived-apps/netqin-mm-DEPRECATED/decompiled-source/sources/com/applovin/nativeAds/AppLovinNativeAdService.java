package com.applovin.nativeAds;
/* loaded from: classes-dex2jar.jar:com/applovin/nativeAds/AppLovinNativeAdService.class */
public interface AppLovinNativeAdService {
    @Deprecated
    void loadNativeAds(int i, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener);

    void loadNextAd(AppLovinNativeAdLoadListener appLovinNativeAdLoadListener);

    void precacheResources(AppLovinNativeAd appLovinNativeAd, AppLovinNativeAdPrecacheListener appLovinNativeAdPrecacheListener);
}

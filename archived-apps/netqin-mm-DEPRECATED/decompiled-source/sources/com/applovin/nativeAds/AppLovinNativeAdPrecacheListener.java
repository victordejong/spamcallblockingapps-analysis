package com.applovin.nativeAds;
/* loaded from: classes-dex2jar.jar:com/applovin/nativeAds/AppLovinNativeAdPrecacheListener.class */
public interface AppLovinNativeAdPrecacheListener {
    void onNativeAdImagePrecachingFailed(AppLovinNativeAd appLovinNativeAd, int i);

    void onNativeAdImagesPrecached(AppLovinNativeAd appLovinNativeAd);

    void onNativeAdVideoPrecachingFailed(AppLovinNativeAd appLovinNativeAd, int i);

    void onNativeAdVideoPreceached(AppLovinNativeAd appLovinNativeAd);
}

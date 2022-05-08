package com.facebook.ads.internal.api;

import android.view.View;
import androidx.annotation.Keep;
import androidx.annotation.Nullable;
import com.facebook.ads.ExtraHints;
import com.facebook.ads.NativeAdBase;
import com.facebook.ads.NativeAdListener;
@Keep
/* loaded from: classes-dex2jar.jar:com/facebook/ads/internal/api/NativeAdBaseApi.class */
public interface NativeAdBaseApi {
    NativeAdBase.NativeAdLoadConfigBuilder buildLoadAdConfig(NativeAdBase nativeAdBase);

    void destroy();

    void downloadMedia();

    @Nullable
    String getAdBodyText();

    @Nullable
    String getAdCallToAction();

    @Nullable
    NativeAdImageApi getAdChoicesIcon();

    @Nullable
    String getAdChoicesImageUrl();

    @Nullable
    String getAdChoicesLinkUrl();

    @Nullable
    String getAdChoicesText();

    @Nullable
    NativeAdImageApi getAdCoverImage();

    @Nullable
    String getAdHeadline();

    @Nullable
    NativeAdImageApi getAdIcon();

    @Nullable
    String getAdLinkDescription();

    @Nullable
    String getAdSocialContext();

    @Nullable
    @Deprecated
    NativeAdRatingApi getAdStarRating();

    @Nullable
    String getAdTranslation();

    @Nullable
    String getAdUntrimmedBodyText();

    @Nullable
    String getAdvertiserName();

    float getAspectRatio();

    @Nullable
    String getId();

    String getPlacementId();

    @Nullable
    String getPromotedTranslation();

    @Nullable
    String getSponsoredTranslation();

    boolean hasCallToAction();

    boolean isAdInvalidated();

    boolean isAdLoaded();

    void loadAd();

    @Deprecated
    void loadAd(NativeAdBase.MediaCacheFlag mediaCacheFlag);

    void loadAd(NativeAdBase.NativeLoadAdConfig nativeLoadAdConfig);

    @Deprecated
    void loadAdFromBid(String str);

    @Deprecated
    void loadAdFromBid(String str, NativeAdBase.MediaCacheFlag mediaCacheFlag);

    void onCtaBroadcast();

    void setAdListener(NativeAdListener nativeAdListener, NativeAdBase nativeAdBase);

    void setExtraHints(ExtraHints extraHints);

    void setOnTouchListener(View.OnTouchListener onTouchListener);

    void unregisterView();
}

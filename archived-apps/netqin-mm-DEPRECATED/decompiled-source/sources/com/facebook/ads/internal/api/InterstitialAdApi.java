package com.facebook.ads.internal.api;

import androidx.annotation.Keep;
import com.facebook.ads.AbstractC7079Ad;
import com.facebook.ads.CacheFlag;
import com.facebook.ads.ExtraHints;
import com.facebook.ads.InterstitialAdListener;
import com.facebook.ads.RewardedAdListener;
import java.util.EnumSet;
@Keep
/* loaded from: classes-dex2jar.jar:com/facebook/ads/internal/api/InterstitialAdApi.class */
public interface InterstitialAdApi extends AbstractC7079Ad {
    boolean isAdLoaded();

    void loadAd(EnumSet<CacheFlag> enumSet);

    void loadAdFromBid(EnumSet<CacheFlag> enumSet, String str);

    void setAdListener(InterstitialAdListener interstitialAdListener);

    @Override // com.facebook.ads.AbstractC7079Ad
    void setExtraHints(ExtraHints extraHints);

    void setRewardedAdListener(RewardedAdListener rewardedAdListener);

    boolean show();
}

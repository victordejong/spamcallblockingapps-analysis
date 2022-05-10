package com.facebook.ads;

import android.content.Context;
import androidx.annotation.Keep;
import com.facebook.ads.internal.api.RewardedVideoAdApi;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;
@Keep
/* loaded from: classes-dex2jar.jar:com/facebook/ads/RewardedVideoAd.class */
public class RewardedVideoAd implements AbstractC7079Ad {
    public static final int UNSET_VIDEO_DURATION = -1;
    public final RewardedVideoAdApi mRewardedVideoAdApi;

    public RewardedVideoAd(Context context, String str) {
        this.mRewardedVideoAdApi = DynamicLoaderFactory.makeLoader(context).createRewardedVideoAd(context, str, this);
    }

    @Override // com.facebook.ads.AbstractC7079Ad
    public void destroy() {
        this.mRewardedVideoAdApi.destroy();
    }

    public void enableRVChain(boolean z) {
        this.mRewardedVideoAdApi.enableRVChain(z);
    }

    @Override // com.facebook.ads.AbstractC7079Ad
    public String getPlacementId() {
        return this.mRewardedVideoAdApi.getPlacementId();
    }

    public int getVideoDuration() {
        return this.mRewardedVideoAdApi.getVideoDuration();
    }

    @Override // com.facebook.ads.AbstractC7079Ad
    public boolean isAdInvalidated() {
        return this.mRewardedVideoAdApi.isAdInvalidated();
    }

    public boolean isAdLoaded() {
        return this.mRewardedVideoAdApi.isAdLoaded();
    }

    @Override // com.facebook.ads.AbstractC7079Ad
    public void loadAd() {
        this.mRewardedVideoAdApi.loadAd();
    }

    public void loadAd(boolean z) {
        this.mRewardedVideoAdApi.loadAd(z);
    }

    @Override // com.facebook.ads.AbstractC7079Ad
    public void loadAdFromBid(String str) {
        this.mRewardedVideoAdApi.loadAdFromBid(str);
    }

    public void loadAdFromBid(String str, boolean z) {
        this.mRewardedVideoAdApi.loadAdFromBid(str, z);
    }

    public void setAdListener(RewardedVideoAdListener rewardedVideoAdListener) {
        this.mRewardedVideoAdApi.setAdListener(rewardedVideoAdListener);
    }

    @Override // com.facebook.ads.AbstractC7079Ad
    public void setExtraHints(ExtraHints extraHints) {
        this.mRewardedVideoAdApi.setExtraHints(extraHints);
    }

    public void setRewardData(RewardData rewardData) {
        this.mRewardedVideoAdApi.setRewardData(rewardData);
    }

    public boolean show() {
        return this.mRewardedVideoAdApi.show();
    }

    public boolean show(int i) {
        return this.mRewardedVideoAdApi.show(i);
    }
}

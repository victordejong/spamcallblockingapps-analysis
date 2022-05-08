package com.facebook.ads;

import android.content.Context;
import androidx.annotation.Keep;
import androidx.annotation.UiThread;
import com.facebook.ads.AbstractC2237Ad;
import com.facebook.ads.FullScreenAd;
import com.facebook.ads.internal.api.RewardedVideoAdApi;
import com.facebook.ads.internal.bench.Benchmark;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;
@Keep
@UiThread
/* loaded from: classes-dex2jar.jar:com/facebook/ads/RewardedVideoAd.class */
public class RewardedVideoAd implements FullScreenAd {
    public static final int UNSET_VIDEO_DURATION = -1;
    public final RewardedVideoAdApi mRewardedVideoAdApi;

    @Keep
    /* loaded from: classes-dex2jar.jar:com/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder.class */
    public interface RewardedVideoAdLoadConfigBuilder extends AbstractC2237Ad.LoadConfigBuilder {
        @Override // com.facebook.ads.AbstractC2237Ad.LoadConfigBuilder
        @Benchmark(failAtMillis = 5, warnAtMillis = 1)
        RewardedVideoLoadAdConfig build();

        @Benchmark(failAtMillis = 5, warnAtMillis = 1)
        RewardedVideoAdLoadConfigBuilder withAdListener(RewardedVideoAdListener rewardedVideoAdListener);

        @Override // com.facebook.ads.AbstractC2237Ad.LoadConfigBuilder
        @Benchmark(failAtMillis = 5, warnAtMillis = 1)
        RewardedVideoAdLoadConfigBuilder withBid(String str);

        @Benchmark(failAtMillis = 5, warnAtMillis = 1)
        RewardedVideoAdLoadConfigBuilder withFailOnCacheFailureEnabled(boolean z);

        @Benchmark(failAtMillis = 5, warnAtMillis = 1)
        RewardedVideoAdLoadConfigBuilder withRVChainEnabled(boolean z);

        @Benchmark(failAtMillis = 5, warnAtMillis = 1)
        RewardedVideoAdLoadConfigBuilder withRewardData(RewardData rewardData);
    }

    @Keep
    /* loaded from: classes-dex2jar.jar:com/facebook/ads/RewardedVideoAd$RewardedVideoAdShowConfigBuilder.class */
    public interface RewardedVideoAdShowConfigBuilder extends FullScreenAd.ShowConfigBuilder {
        @Override // com.facebook.ads.FullScreenAd.ShowConfigBuilder
        RewardedVideoShowAdConfig build();

        @Benchmark(failAtMillis = 5, warnAtMillis = 1)
        RewardedVideoAdShowConfigBuilder withAppOrientation(int i);
    }

    @Keep
    /* loaded from: classes-dex2jar.jar:com/facebook/ads/RewardedVideoAd$RewardedVideoLoadAdConfig.class */
    public interface RewardedVideoLoadAdConfig extends AbstractC2237Ad.LoadAdConfig {
    }

    @Keep
    /* loaded from: classes-dex2jar.jar:com/facebook/ads/RewardedVideoAd$RewardedVideoShowAdConfig.class */
    public interface RewardedVideoShowAdConfig extends FullScreenAd.ShowAdConfig {
    }

    @Benchmark
    public RewardedVideoAd(Context context, String str) {
        this.mRewardedVideoAdApi = DynamicLoaderFactory.makeLoader(context).createRewardedVideoAd(context, str, this);
    }

    @Override // com.facebook.ads.FullScreenAd
    @Benchmark(failAtMillis = 5, warnAtMillis = 1)
    public RewardedVideoAdLoadConfigBuilder buildLoadAdConfig() {
        return this.mRewardedVideoAdApi.buildLoadAdConfig();
    }

    @Override // com.facebook.ads.FullScreenAd
    @Benchmark(failAtMillis = 5, warnAtMillis = 1)
    public RewardedVideoAdShowConfigBuilder buildShowAdConfig() {
        return this.mRewardedVideoAdApi.buildShowAdConfig();
    }

    @Override // com.facebook.ads.AbstractC2237Ad
    public void destroy() {
        this.mRewardedVideoAdApi.destroy();
    }

    @Benchmark(failAtMillis = 5, warnAtMillis = 1)
    @Deprecated
    public void enableRVChain(boolean z) {
        this.mRewardedVideoAdApi.enableRVChain(z);
    }

    @Override // com.facebook.ads.AbstractC2237Ad
    public String getPlacementId() {
        return this.mRewardedVideoAdApi.getPlacementId();
    }

    @Benchmark(failAtMillis = 5, warnAtMillis = 1)
    public int getVideoDuration() {
        return this.mRewardedVideoAdApi.getVideoDuration();
    }

    @Override // com.facebook.ads.AbstractC2237Ad
    public boolean isAdInvalidated() {
        return this.mRewardedVideoAdApi.isAdInvalidated();
    }

    @Benchmark(failAtMillis = 5, warnAtMillis = 1)
    public boolean isAdLoaded() {
        return this.mRewardedVideoAdApi.isAdLoaded();
    }

    @Override // com.facebook.ads.AbstractC2237Ad
    public void loadAd() {
        this.mRewardedVideoAdApi.loadAd();
    }

    @Benchmark
    public void loadAd(RewardedVideoLoadAdConfig rewardedVideoLoadAdConfig) {
        this.mRewardedVideoAdApi.loadAd(rewardedVideoLoadAdConfig);
    }

    @Benchmark
    @Deprecated
    public void loadAd(boolean z) {
        this.mRewardedVideoAdApi.loadAd(z);
    }

    @Override // com.facebook.ads.AbstractC2237Ad
    @Deprecated
    public void loadAdFromBid(String str) {
        this.mRewardedVideoAdApi.loadAdFromBid(str);
    }

    @Benchmark
    @Deprecated
    public void loadAdFromBid(String str, boolean z) {
        this.mRewardedVideoAdApi.loadAdFromBid(str, z);
    }

    @Benchmark(failAtMillis = 5, warnAtMillis = 1)
    @Deprecated
    public void setAdListener(RewardedVideoAdListener rewardedVideoAdListener) {
        this.mRewardedVideoAdApi.setAdListener(rewardedVideoAdListener);
    }

    @Override // com.facebook.ads.AbstractC2237Ad
    public void setExtraHints(ExtraHints extraHints) {
        this.mRewardedVideoAdApi.setExtraHints(extraHints);
    }

    @Benchmark(failAtMillis = 5, warnAtMillis = 1)
    @Deprecated
    public void setRewardData(RewardData rewardData) {
        this.mRewardedVideoAdApi.setRewardData(rewardData);
    }

    @Override // com.facebook.ads.FullScreenAd
    public boolean show() {
        return this.mRewardedVideoAdApi.show();
    }

    @Benchmark
    @Deprecated
    public boolean show(int i) {
        return this.mRewardedVideoAdApi.show(i);
    }

    @Benchmark
    public boolean show(RewardedVideoShowAdConfig rewardedVideoShowAdConfig) {
        return this.mRewardedVideoAdApi.show(rewardedVideoShowAdConfig);
    }
}

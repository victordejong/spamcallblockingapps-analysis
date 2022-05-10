package com.mopub.mobileads;

import android.app.Activity;
import com.mopub.common.MediationSettings;
import com.mopub.common.MoPubReward;
import com.mopub.common.Preconditions;
import com.mopub.common.SdkConfiguration;
import com.mopub.common.util.ReflectionTarget;
import com.mopub.mobileads.MoPubRewardedVideoManager;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MoPubRewardedVideos.class */
public class MoPubRewardedVideos {
    @ReflectionTarget
    public static Set<MoPubReward> getAvailableRewards(String str) {
        Preconditions.checkNotNull(str);
        return MoPubRewardedVideoManager.getAvailableRewards(str);
    }

    @ReflectionTarget
    public static boolean hasRewardedVideo(String str) {
        Preconditions.checkNotNull(str);
        return MoPubRewardedVideoManager.hasVideo(str);
    }

    @ReflectionTarget
    public static void initializeRewardedVideo(Activity activity, SdkConfiguration sdkConfiguration) {
        Preconditions.checkNotNull(activity);
        Preconditions.checkNotNull(sdkConfiguration);
        initializeRewardedVideo(activity, sdkConfiguration.getMediationSettings());
    }

    @ReflectionTarget
    public static void initializeRewardedVideo(Activity activity, MediationSettings... mediationSettingsArr) {
        Preconditions.checkNotNull(activity);
        MoPubRewardedVideoManager.init(activity, mediationSettingsArr);
    }

    @ReflectionTarget
    public static void loadRewardedVideo(String str, MoPubRewardedVideoManager.RequestParameters requestParameters, MediationSettings... mediationSettingsArr) {
        Preconditions.checkNotNull(str);
        MoPubRewardedVideoManager.loadVideo(str, requestParameters, mediationSettingsArr);
    }

    @ReflectionTarget
    public static void loadRewardedVideo(String str, MediationSettings... mediationSettingsArr) {
        Preconditions.checkNotNull(str);
        MoPubRewardedVideoManager.loadVideo(str, null, mediationSettingsArr);
    }

    @ReflectionTarget
    public static void selectReward(String str, MoPubReward moPubReward) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(moPubReward);
        MoPubRewardedVideoManager.selectReward(str, moPubReward);
    }

    @ReflectionTarget
    public static void setRewardedVideoListener(MoPubRewardedVideoListener moPubRewardedVideoListener) {
        MoPubRewardedVideoManager.setVideoListener(moPubRewardedVideoListener);
    }

    @ReflectionTarget
    public static void showRewardedVideo(String str) {
        Preconditions.checkNotNull(str);
        MoPubRewardedVideoManager.showVideo(str);
    }

    @ReflectionTarget
    public static void showRewardedVideo(String str, String str2) {
        Preconditions.checkNotNull(str);
        MoPubRewardedVideoManager.showVideo(str, str2);
    }
}

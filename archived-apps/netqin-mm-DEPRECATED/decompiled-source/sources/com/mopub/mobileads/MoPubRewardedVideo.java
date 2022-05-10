package com.mopub.mobileads;

import android.app.Activity;
import com.mopub.common.MoPubReward;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.MoPubRewardedAd;
import com.mopub.mobileads.RewardedVastVideoInterstitial;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MoPubRewardedVideo.class */
public class MoPubRewardedVideo extends MoPubRewardedAd {

    /* renamed from: e */
    public RewardedVastVideoInterstitial f34139e = new RewardedVastVideoInterstitial();

    /* renamed from: com.mopub.mobileads.MoPubRewardedVideo$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MoPubRewardedVideo$a.class */
    public class C8783a extends MoPubRewardedAd.MoPubRewardedAdListener implements RewardedVastVideoInterstitial.AbstractC8812a {
        public C8783a() {
            super(MoPubRewardedVideo.class);
        }

        @Override // com.mopub.mobileads.RewardedVastVideoInterstitial.AbstractC8812a
        public void onVideoComplete() {
            if (MoPubRewardedVideo.this.m4361g() == null) {
                MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "No rewarded video was loaded, so no reward is possible");
            } else {
                MoPubRewardedVideoManager.onRewardedVideoCompleted(this.f34131a, MoPubRewardedVideo.this.mo4330a(), MoPubReward.success(MoPubRewardedVideo.this.m4361g(), MoPubRewardedVideo.this.m4362f()));
            }
        }
    }

    @Override // com.mopub.mobileads.CustomEventRewardedAd
    /* renamed from: a */
    public String mo4330a() {
        String str = this.f34130d;
        if (str == null) {
            str = "mopub_rewarded_video_id";
        }
        return str;
    }

    @Override // com.mopub.mobileads.MoPubRewardedAd, com.mopub.mobileads.CustomEventRewardedAd
    /* renamed from: c */
    public void mo4329c(Activity activity, Map<String, Object> map, Map<String, String> map2) throws Exception {
        super.mo4329c(activity, map, map2);
        RewardedVastVideoInterstitial rewardedVastVideoInterstitial = this.f34139e;
        if (rewardedVastVideoInterstitial == null) {
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "mRewardedVastVideoInterstitial is null. Has this class been invalidated?");
        } else {
            rewardedVastVideoInterstitial.loadInterstitial(activity, new C8783a(), map, map2);
        }
    }

    @Override // com.mopub.mobileads.MoPubRewardedAd, com.mopub.mobileads.CustomEventRewardedAd
    /* renamed from: d */
    public void mo4328d() {
        RewardedVastVideoInterstitial rewardedVastVideoInterstitial = this.f34139e;
        if (rewardedVastVideoInterstitial != null) {
            rewardedVastVideoInterstitial.onInvalidate();
        }
        this.f34139e = null;
        super.mo4328d();
    }

    @Override // com.mopub.mobileads.CustomEventRewardedAd
    /* renamed from: e */
    public void mo4327e() {
        if (!mo4363c() || this.f34139e == null) {
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Unable to show MoPub rewarded video");
            return;
        }
        MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Showing MoPub rewarded video.");
        this.f34139e.showInterstitial();
    }
}

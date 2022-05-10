package com.mopub.mraid;

import android.content.Context;
import com.mopub.common.DataKeys;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.CustomEventInterstitial;
import com.mopub.mobileads.RewardedMraidActivity;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/mopub/mraid/RewardedMraidInterstitial.class */
public class RewardedMraidInterstitial extends MraidInterstitial {
    public static final String ADAPTER_NAME = "RewardedMraidInterstitial";

    /* renamed from: h */
    public RewardedPlayableBroadcastReceiver f34630h;

    /* renamed from: i */
    public int f34631i;

    /* renamed from: j */
    public boolean f34632j;

    /* loaded from: classes2-dex2jar.jar:com/mopub/mraid/RewardedMraidInterstitial$RewardedMraidInterstitialListener.class */
    public interface RewardedMraidInterstitialListener extends CustomEventInterstitial.CustomEventInterstitialListener {
        void onMraidComplete();
    }

    @Override // com.mopub.mraid.MraidInterstitial, com.mopub.mobileads.ResponseBodyInterstitial
    /* renamed from: a */
    public void mo4032a(CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener) {
        Map<String, Object> map = this.f34201f;
        if (map != null) {
            Object obj = map.get(DataKeys.REWARDED_AD_DURATION_KEY);
            this.f34631i = obj instanceof Integer ? ((Integer) obj).intValue() : 30;
            Object obj2 = map.get(DataKeys.SHOULD_REWARD_ON_CLICK_KEY);
            this.f34632j = obj2 instanceof Boolean ? ((Boolean) obj2).booleanValue() : false;
        }
        RewardedMraidActivity.preRenderHtml(this, this.f34198c, customEventInterstitialListener, Long.valueOf(this.f34200e), this.f34199d, this.f34631i);
    }

    @Override // com.mopub.mobileads.ResponseBodyInterstitial, com.mopub.mobileads.CustomEventInterstitial
    public void loadInterstitial(Context context, CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener, Map<String, Object> map, Map<String, String> map2) {
        super.loadInterstitial(context, customEventInterstitialListener, map, map2);
        MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_ATTEMPTED, ADAPTER_NAME);
        if (customEventInterstitialListener instanceof RewardedMraidInterstitialListener) {
            RewardedPlayableBroadcastReceiver rewardedPlayableBroadcastReceiver = new RewardedPlayableBroadcastReceiver((RewardedMraidInterstitialListener) customEventInterstitialListener, this.f34200e);
            this.f34630h = rewardedPlayableBroadcastReceiver;
            rewardedPlayableBroadcastReceiver.register(rewardedPlayableBroadcastReceiver, context);
        }
    }

    @Override // com.mopub.mobileads.ResponseBodyInterstitial, com.mopub.mobileads.CustomEventInterstitial
    public void onInvalidate() {
        super.onInvalidate();
        RewardedPlayableBroadcastReceiver rewardedPlayableBroadcastReceiver = this.f34630h;
        if (rewardedPlayableBroadcastReceiver != null) {
            rewardedPlayableBroadcastReceiver.unregister(rewardedPlayableBroadcastReceiver);
        }
    }

    @Override // com.mopub.mraid.MraidInterstitial, com.mopub.mobileads.ResponseBodyInterstitial, com.mopub.mobileads.CustomEventInterstitial
    public void showInterstitial() {
        MoPubLog.log(MoPubLog.AdapterLogEvent.SHOW_ATTEMPTED, ADAPTER_NAME);
        RewardedMraidActivity.start(this.f34198c, this.f34199d, this.f34200e, this.f34631i, this.f34632j);
    }
}

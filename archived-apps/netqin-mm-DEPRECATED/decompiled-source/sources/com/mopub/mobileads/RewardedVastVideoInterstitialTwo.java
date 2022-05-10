package com.mopub.mobileads;

import android.content.Context;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.CustomEventInterstitial;
import java.util.Map;
import p573f.p590w.p592c.C10057o;
import p573f.p590w.p592c.C10059q;
@Mockable
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/RewardedVastVideoInterstitialTwo.class */
public class RewardedVastVideoInterstitialTwo extends VastVideoInterstitialTwo {
    public static final Companion Companion = new Companion(null);

    /* renamed from: q */
    public static final String f34213q;

    /* renamed from: p */
    public RewardedVideoBroadcastReceiverTwo f34214p;

    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/RewardedVastVideoInterstitialTwo$Companion.class */
    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(C10057o oVar) {
            this();
        }

        public final String getADAPTER_NAME() {
            return RewardedVastVideoInterstitialTwo.f34213q;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/RewardedVastVideoInterstitialTwo$RewardedVideoInterstitialListenerTwo.class */
    public interface RewardedVideoInterstitialListenerTwo extends CustomEventInterstitial.CustomEventInterstitialListener {
        void onVideoComplete();
    }

    static {
        String simpleName = RewardedVastVideoInterstitialTwo.class.getSimpleName();
        C10059q.m1642a((Object) simpleName, "RewardedVastVideoInterst…wo::class.java.simpleName");
        f34213q = simpleName;
    }

    public RewardedVideoBroadcastReceiverTwo getRewardedVideoBroadcastReceiver() {
        return this.f34214p;
    }

    @Override // com.mopub.mobileads.ResponseBodyInterstitial, com.mopub.mobileads.CustomEventInterstitial
    public void loadInterstitial(Context context, CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener, Map<String, ? extends Object> map, Map<String, String> map2) {
        C10059q.m1637b(context, "context");
        C10059q.m1637b(customEventInterstitialListener, "customEventInterstitialListener");
        C10059q.m1637b(map, "localExtras");
        C10059q.m1637b(map2, "serverExtras");
        MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_ATTEMPTED, f34213q);
        super.loadInterstitial(context, customEventInterstitialListener, map, map2);
        if (customEventInterstitialListener instanceof RewardedVideoInterstitialListenerTwo) {
            RewardedVideoBroadcastReceiverTwo rewardedVideoBroadcastReceiverTwo = new RewardedVideoBroadcastReceiverTwo((RewardedVideoInterstitialListenerTwo) customEventInterstitialListener, this.f34200e);
            rewardedVideoBroadcastReceiverTwo.register(rewardedVideoBroadcastReceiverTwo, context);
            setRewardedVideoBroadcastReceiver(rewardedVideoBroadcastReceiverTwo);
        }
    }

    @Override // com.mopub.mobileads.VastVideoInterstitialTwo, com.mopub.mobileads.ResponseBodyInterstitial, com.mopub.mobileads.CustomEventInterstitial
    public void onInvalidate() {
        super.onInvalidate();
        RewardedVideoBroadcastReceiverTwo rewardedVideoBroadcastReceiver = getRewardedVideoBroadcastReceiver();
        if (rewardedVideoBroadcastReceiver != null) {
            rewardedVideoBroadcastReceiver.unregister(getRewardedVideoBroadcastReceiver());
        }
    }

    @Override // com.mopub.mobileads.VastVideoInterstitialTwo, com.mopub.mobileads.VastManager.VastManagerListener
    public void onVastVideoConfigurationPrepared(VastVideoConfig vastVideoConfig) {
        MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_SUCCESS, f34213q);
        if (vastVideoConfig != null) {
            vastVideoConfig.setIsRewardedVideo(true);
        }
        super.onVastVideoConfigurationPrepared(vastVideoConfig);
    }

    public void setRewardedVideoBroadcastReceiver(RewardedVideoBroadcastReceiverTwo rewardedVideoBroadcastReceiverTwo) {
        this.f34214p = rewardedVideoBroadcastReceiverTwo;
    }
}

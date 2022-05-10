package com.applovin.mediation;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdRewardListener;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.AppLovinEventParameters;
import com.google.ads.mediation.applovin.AppLovinMediationAdapter;
import com.google.android.gms.ads.mediation.MediationRewardedAdCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAdConfiguration;
import java.util.Map;
import p131c.p161d.p162a.p163b.p164f.C2461a;
/* loaded from: classes-dex2jar.jar:com/applovin/mediation/AppLovinIncentivizedAdListener.class */
public class AppLovinIncentivizedAdListener implements AppLovinAdRewardListener, AppLovinAdDisplayListener, AppLovinAdClickListener, AppLovinAdVideoPlaybackListener {

    /* renamed from: a */
    public MediationRewardedAdCallback f21793a;

    /* renamed from: b */
    public boolean f21794b;

    /* renamed from: c */
    public C2461a f21795c;

    /* renamed from: d */
    public String f21796d;

    public AppLovinIncentivizedAdListener(MediationRewardedAdConfiguration mediationRewardedAdConfiguration, MediationRewardedAdCallback mediationRewardedAdCallback) {
        this.f21796d = AppLovinUtils.retrieveZoneId(mediationRewardedAdConfiguration.m17939e());
        this.f21793a = mediationRewardedAdCallback;
    }

    @Override // com.applovin.sdk.AppLovinAdClickListener
    public void adClicked(AppLovinAd appLovinAd) {
        ApplovinAdapter.log(3, "Rewarded video clicked");
        this.f21793a.mo16290C();
    }

    @Override // com.applovin.sdk.AppLovinAdDisplayListener
    public void adDisplayed(AppLovinAd appLovinAd) {
        ApplovinAdapter.log(3, "Rewarded video displayed");
        this.f21793a.mo16286t();
        this.f21793a.mo16291B();
    }

    @Override // com.applovin.sdk.AppLovinAdDisplayListener
    public void adHidden(AppLovinAd appLovinAd) {
        ApplovinAdapter.log(3, "Rewarded video dismissed");
        AppLovinMediationAdapter.INCENTIVIZED_ADS.remove(this.f21796d);
        if (this.f21794b) {
            this.f21793a.mo16289a(this.f21795c);
        }
        this.f21793a.mo16292A();
    }

    @Override // com.applovin.sdk.AppLovinAdRewardListener
    public void userDeclinedToViewAd(AppLovinAd appLovinAd) {
        ApplovinAdapter.log(3, "User declined to view rewarded video");
    }

    @Override // com.applovin.sdk.AppLovinAdRewardListener
    public void userOverQuota(AppLovinAd appLovinAd, Map<String, String> map) {
        ApplovinAdapter.log(6, "Rewarded video validation request for ad did exceed quota with response: " + map);
    }

    @Override // com.applovin.sdk.AppLovinAdRewardListener
    public void userRewardRejected(AppLovinAd appLovinAd, Map<String, String> map) {
        ApplovinAdapter.log(6, "Rewarded video validation request was rejected with response: " + map);
    }

    @Override // com.applovin.sdk.AppLovinAdRewardListener
    public void userRewardVerified(AppLovinAd appLovinAd, Map<String, String> map) {
        String str = map.get("currency");
        int parseDouble = (int) Double.parseDouble(map.get(AppLovinEventParameters.REVENUE_AMOUNT));
        ApplovinAdapter.log(3, "Rewarded " + parseDouble + " " + str);
        this.f21795c = new C2461a(parseDouble, str);
    }

    @Override // com.applovin.sdk.AppLovinAdRewardListener
    public void validationRequestFailed(AppLovinAd appLovinAd, int i) {
        ApplovinAdapter.log(6, "Rewarded video validation request for ad failed with error code: " + i);
    }

    @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
    public void videoPlaybackBegan(AppLovinAd appLovinAd) {
        ApplovinAdapter.log(3, "Rewarded video playback began");
        this.f21793a.mo16287j0();
    }

    @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
    public void videoPlaybackEnded(AppLovinAd appLovinAd, double d, boolean z) {
        ApplovinAdapter.log(3, "Rewarded video playback ended at playback percent: " + d + "%");
        this.f21794b = z;
        if (z) {
            this.f21793a.onVideoComplete();
        }
    }
}

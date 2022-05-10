package p131c.p135b.p154b;

import com.applovin.mediation.ApplovinAdapter;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
/* renamed from: c.b.b.b */
/* loaded from: classes-dex2jar.jar:c/b/b/b.class */
public class C2440b implements AppLovinAdDisplayListener, AppLovinAdClickListener, AppLovinAdVideoPlaybackListener {

    /* renamed from: a */
    public final ApplovinAdapter f9380a;

    /* renamed from: b */
    public final MediationInterstitialListener f9381b;

    public C2440b(ApplovinAdapter applovinAdapter, MediationInterstitialListener mediationInterstitialListener) {
        this.f9380a = applovinAdapter;
        this.f9381b = mediationInterstitialListener;
    }

    @Override // com.applovin.sdk.AppLovinAdClickListener
    public void adClicked(AppLovinAd appLovinAd) {
        ApplovinAdapter.log(3, "Interstitial clicked");
        this.f9381b.mo16609b(this.f9380a);
        this.f9381b.mo16622a(this.f9380a);
    }

    @Override // com.applovin.sdk.AppLovinAdDisplayListener
    public void adDisplayed(AppLovinAd appLovinAd) {
        ApplovinAdapter.log(3, "Interstitial displayed");
        this.f9381b.mo16599e(this.f9380a);
    }

    @Override // com.applovin.sdk.AppLovinAdDisplayListener
    public void adHidden(AppLovinAd appLovinAd) {
        ApplovinAdapter.log(3, "Interstitial dismissed");
        this.f9381b.mo16602d(this.f9380a);
    }

    @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
    public void videoPlaybackBegan(AppLovinAd appLovinAd) {
        ApplovinAdapter.log(3, "Interstitial video playback began");
    }

    @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
    public void videoPlaybackEnded(AppLovinAd appLovinAd, double d, boolean z) {
        ApplovinAdapter.log(3, "Interstitial video playback ended at playback percent: " + d + "%");
    }
}

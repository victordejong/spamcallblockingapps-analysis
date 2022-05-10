package p131c.p135b.p154b;

import com.applovin.adview.AppLovinAdView;
import com.applovin.adview.AppLovinAdViewDisplayErrorCode;
import com.applovin.adview.AppLovinAdViewEventListener;
import com.applovin.mediation.AppLovinUtils;
import com.applovin.mediation.ApplovinAdapter;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinSdkUtils;
import com.google.android.gms.ads.mediation.MediationBannerListener;
/* renamed from: c.b.b.a */
/* loaded from: classes-dex2jar.jar:c/b/b/a.class */
public class C2437a implements AppLovinAdLoadListener, AppLovinAdDisplayListener, AppLovinAdClickListener, AppLovinAdViewEventListener {

    /* renamed from: a */
    public final ApplovinAdapter f9373a;

    /* renamed from: b */
    public final MediationBannerListener f9374b;

    /* renamed from: c */
    public final AppLovinAdView f9375c;

    /* renamed from: d */
    public final String f9376d;

    /* renamed from: c.b.b.a$a */
    /* loaded from: classes-dex2jar.jar:c/b/b/a$a.class */
    public class RunnableC2438a implements Runnable {
        public RunnableC2438a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C2437a.this.f9374b.mo16606c(C2437a.this.f9373a);
        }
    }

    /* renamed from: c.b.b.a$b */
    /* loaded from: classes-dex2jar.jar:c/b/b/a$b.class */
    public class RunnableC2439b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ int f9378a;

        public RunnableC2439b(int i) {
            this.f9378a = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            C2437a.this.f9374b.mo16625a(C2437a.this.f9373a, AppLovinUtils.toAdMobErrorCode(this.f9378a));
        }
    }

    public C2437a(String str, AppLovinAdView appLovinAdView, ApplovinAdapter applovinAdapter, MediationBannerListener mediationBannerListener) {
        this.f9373a = applovinAdapter;
        this.f9374b = mediationBannerListener;
        this.f9375c = appLovinAdView;
        this.f9376d = str;
    }

    @Override // com.applovin.sdk.AppLovinAdClickListener
    public void adClicked(AppLovinAd appLovinAd) {
        ApplovinAdapter.log(3, "Banner clicked");
        this.f9374b.mo16610b(this.f9373a);
    }

    @Override // com.applovin.adview.AppLovinAdViewEventListener
    public void adClosedFullscreen(AppLovinAd appLovinAd, AppLovinAdView appLovinAdView) {
        ApplovinAdapter.log(3, "Banner closed fullscreen");
        this.f9374b.mo16626a(this.f9373a);
    }

    @Override // com.applovin.sdk.AppLovinAdDisplayListener
    public void adDisplayed(AppLovinAd appLovinAd) {
        ApplovinAdapter.log(3, "Banner displayed");
    }

    @Override // com.applovin.adview.AppLovinAdViewEventListener
    public void adFailedToDisplay(AppLovinAd appLovinAd, AppLovinAdView appLovinAdView, AppLovinAdViewDisplayErrorCode appLovinAdViewDisplayErrorCode) {
        ApplovinAdapter.log(6, "Banner failed to display: " + appLovinAdViewDisplayErrorCode);
    }

    @Override // com.applovin.sdk.AppLovinAdDisplayListener
    public void adHidden(AppLovinAd appLovinAd) {
        ApplovinAdapter.log(3, "Banner dismissed");
    }

    @Override // com.applovin.adview.AppLovinAdViewEventListener
    public void adLeftApplication(AppLovinAd appLovinAd, AppLovinAdView appLovinAdView) {
        ApplovinAdapter.log(3, "Banner left application");
        this.f9374b.mo16603d(this.f9373a);
    }

    @Override // com.applovin.adview.AppLovinAdViewEventListener
    public void adOpenedFullscreen(AppLovinAd appLovinAd, AppLovinAdView appLovinAdView) {
        ApplovinAdapter.log(3, "Banner opened fullscreen");
        this.f9374b.mo16600e(this.f9373a);
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void adReceived(AppLovinAd appLovinAd) {
        ApplovinAdapter.log(3, "Banner did load ad: " + appLovinAd.getAdIdNumber() + " for zone: " + this.f9376d);
        this.f9375c.renderAd(appLovinAd);
        AppLovinSdkUtils.runOnUiThread(new RunnableC2438a());
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void failedToReceiveAd(int i) {
        ApplovinAdapter.log(6, "Failed to load banner ad with error: " + i);
        AppLovinSdkUtils.runOnUiThread(new RunnableC2439b(i));
    }
}

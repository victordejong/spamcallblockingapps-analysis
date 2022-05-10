package p131c.p135b.p154b.p155f;

import android.content.Context;
import android.util.Log;
import android.view.View;
import com.applovin.adview.AppLovinAdView;
import com.applovin.adview.AppLovinAdViewDisplayErrorCode;
import com.applovin.adview.AppLovinAdViewEventListener;
import com.applovin.mediation.AppLovinUtils;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdSize;
import com.google.ads.mediation.applovin.AppLovinMediationAdapter;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationBannerAd;
import com.google.android.gms.ads.mediation.MediationBannerAdCallback;
import com.google.android.gms.ads.mediation.MediationBannerAdConfiguration;
/* renamed from: c.b.b.f.a */
/* loaded from: classes-dex2jar.jar:c/b/b/f/a.class */
public final class C2447a implements MediationBannerAd, AppLovinAdLoadListener, AppLovinAdDisplayListener, AppLovinAdClickListener, AppLovinAdViewEventListener {

    /* renamed from: e */
    public static final String f9395e = "a";

    /* renamed from: a */
    public final MediationBannerAdConfiguration f9396a;

    /* renamed from: b */
    public final MediationAdLoadCallback<MediationBannerAd, MediationBannerAdCallback> f9397b;

    /* renamed from: c */
    public MediationBannerAdCallback f9398c;

    /* renamed from: d */
    public AppLovinAdView f9399d;

    public C2447a(MediationBannerAdConfiguration mediationBannerAdConfiguration, MediationAdLoadCallback<MediationBannerAd, MediationBannerAdCallback> mediationAdLoadCallback) {
        this.f9396a = mediationBannerAdConfiguration;
        this.f9397b = mediationAdLoadCallback;
    }

    /* renamed from: a */
    public void m29731a() {
        Context b = this.f9396a.m17942b();
        AppLovinAdSize appLovinAdSizeFromAdMobAdSize = AppLovinUtils.appLovinAdSizeFromAdMobAdSize(b, this.f9396a.m17934g());
        if (appLovinAdSizeFromAdMobAdSize == null) {
            this.f9397b.mo17937a(AppLovinMediationAdapter.createAdapterError(101, "Failed to request banner with unsupported size"));
            return;
        }
        this.f9399d = new AppLovinAdView(AppLovinUtils.retrieveSdk(this.f9396a.m17939e(), b), appLovinAdSizeFromAdMobAdSize, b);
    }

    @Override // com.applovin.sdk.AppLovinAdClickListener
    public void adClicked(AppLovinAd appLovinAd) {
        Log.d(f9395e, "Banner clicked");
        this.f9398c.mo16290C();
    }

    @Override // com.applovin.adview.AppLovinAdViewEventListener
    public void adClosedFullscreen(AppLovinAd appLovinAd, AppLovinAdView appLovinAdView) {
        Log.d(f9395e, "Banner closed fullscreen");
        this.f9398c.mo16292A();
    }

    @Override // com.applovin.sdk.AppLovinAdDisplayListener
    public void adDisplayed(AppLovinAd appLovinAd) {
        Log.d(f9395e, "Banner displayed");
        this.f9398c.mo16291B();
        this.f9398c.mo16286t();
    }

    @Override // com.applovin.adview.AppLovinAdViewEventListener
    public void adFailedToDisplay(AppLovinAd appLovinAd, AppLovinAdView appLovinAdView, AppLovinAdViewDisplayErrorCode appLovinAdViewDisplayErrorCode) {
        String str = f9395e;
        Log.e(str, "Banner failed to display: " + appLovinAdViewDisplayErrorCode);
    }

    @Override // com.applovin.sdk.AppLovinAdDisplayListener
    public void adHidden(AppLovinAd appLovinAd) {
        Log.d(f9395e, "Banner hidden");
    }

    @Override // com.applovin.adview.AppLovinAdViewEventListener
    public void adLeftApplication(AppLovinAd appLovinAd, AppLovinAdView appLovinAdView) {
        Log.d(f9395e, "Banner left application");
        this.f9398c.mo17931k();
    }

    @Override // com.applovin.adview.AppLovinAdViewEventListener
    public void adOpenedFullscreen(AppLovinAd appLovinAd, AppLovinAdView appLovinAdView) {
        Log.d(f9395e, "Banner opened fullscreen");
        this.f9398c.mo16286t();
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void adReceived(AppLovinAd appLovinAd) {
        String str = f9395e;
        Log.d(str, "Banner did load ad: " + appLovinAd.getAdIdNumber());
        this.f9398c = this.f9397b.onSuccess(this);
        this.f9399d.renderAd(appLovinAd);
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void failedToReceiveAd(int i) {
        String str = f9395e;
        Log.e(str, "Failed to load banner ad with error: " + i);
        this.f9397b.mo17937a(AppLovinMediationAdapter.createSDKError(i));
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAd
    public View getView() {
        return this.f9399d;
    }
}

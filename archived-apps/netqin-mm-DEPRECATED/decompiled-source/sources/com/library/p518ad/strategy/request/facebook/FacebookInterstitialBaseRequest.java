package com.library.p518ad.strategy.request.facebook;

import com.facebook.ads.AbstractC7079Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AdSettings;
import com.facebook.ads.InterstitialAd;
import com.facebook.ads.InterstitialAdListener;
import java.util.Arrays;
import p131c.p396i.p397a.C6489a;
import p131c.p396i.p397a.p398e.AbstractC6508d;
import p131c.p396i.p397a.p398e.AbstractC6514f;
import p131c.p396i.p397a.p405h.C6549b;
import p131c.p396i.p397a.p405h.C6550c;
import p131c.p396i.p397a.p405h.C6552e;
/* renamed from: com.library.ad.strategy.request.facebook.FacebookInterstitialBaseRequest */
/* loaded from: classes2-dex2jar.jar:com/library/ad/strategy/request/facebook/FacebookInterstitialBaseRequest.class */
public class FacebookInterstitialBaseRequest extends AbstractC6508d<AbstractC7079Ad> implements InterstitialAdListener {
    public FacebookInterstitialBaseRequest(String str) {
        super("FB", str);
    }

    /* renamed from: a */
    public void m5274a(AdError adError) {
        int errorCode = adError.getErrorCode();
        C6549b.m20532a(new C6550c(getAdInfo(), 203, (errorCode != 1000 ? errorCode != 1001 ? errorCode != 2001 ? C6552e.f20335e : C6552e.f20333c : C6552e.f20334d : C6552e.f20332b).toString()));
    }

    @Override // com.facebook.ads.AdListener
    public void onAdClicked(AbstractC7079Ad ad) {
        if (getAdResult() != null && getAdResult().m5331a() != null) {
            getAdResult().m5331a().mo3232a(getAdInfo(), 0);
        }
    }

    @Override // com.facebook.ads.AdListener
    public void onAdLoaded(AbstractC7079Ad ad) {
        if (ad != null) {
            m20622a("network_success", (AbstractC6514f) m20618a(ad));
        } else {
            m20620a("network_failure", "加载的回调成功,但是没有广告数据");
        }
    }

    @Override // com.facebook.ads.AdListener
    public void onError(AbstractC7079Ad ad, AdError adError) {
        adError.getErrorMessage();
        m20620a("network_failure", Integer.valueOf(adError.getErrorCode()));
        m5274a(adError);
    }

    @Override // com.facebook.ads.InterstitialAdListener
    public void onInterstitialDismissed(AbstractC7079Ad ad) {
        if (!(getAdResult() == null || getAdResult().m5331a() == null)) {
            getAdResult().m5331a().mo3231b(getAdInfo(), 0);
        }
        ad.destroy();
    }

    @Override // com.facebook.ads.InterstitialAdListener
    public void onInterstitialDisplayed(AbstractC7079Ad ad) {
        if (getAdResult() != null && getAdResult().m5331a() != null) {
            getAdResult().m5331a().mo3230d(getAdInfo(), 0);
        }
    }

    @Override // com.facebook.ads.AdListener
    public void onLoggingImpression(AbstractC7079Ad ad) {
    }

    @Override // p131c.p396i.p397a.p398e.AbstractC6508d
    public boolean performLoad(int i) {
        String[] strArr = this.f20251b;
        if (strArr != null && strArr.length > 0) {
            AdSettings.addTestDevices(Arrays.asList(strArr));
        }
        InterstitialAd interstitialAd = new InterstitialAd(C6489a.m20718b(), getUnitId());
        interstitialAd.setAdListener(this);
        interstitialAd.loadAd();
        return false;
    }
}

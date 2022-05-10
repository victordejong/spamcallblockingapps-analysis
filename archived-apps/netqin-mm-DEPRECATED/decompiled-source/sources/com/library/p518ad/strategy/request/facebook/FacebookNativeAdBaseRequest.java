package com.library.p518ad.strategy.request.facebook;

import android.os.Build;
import android.webkit.CookieSyncManager;
import com.facebook.ads.AbstractC7079Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AdSettings;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdListener;
import com.facebook.ads.NativeAdsManager;
import com.library.p518ad.core.BaseAdResult;
import java.util.ArrayList;
import java.util.Arrays;
import p131c.p396i.p397a.C6489a;
import p131c.p396i.p397a.p398e.AbstractC6508d;
import p131c.p396i.p397a.p405h.C6549b;
import p131c.p396i.p397a.p405h.C6550c;
import p131c.p396i.p397a.p405h.C6552e;
/* renamed from: com.library.ad.strategy.request.facebook.FacebookNativeAdBaseRequest */
/* loaded from: classes2-dex2jar.jar:com/library/ad/strategy/request/facebook/FacebookNativeAdBaseRequest.class */
public class FacebookNativeAdBaseRequest extends AbstractC6508d<NativeAd> implements NativeAdsManager.Listener {

    /* renamed from: t */
    public NativeAdsManager f33178t;

    /* renamed from: u */
    public NativeAd f33179u;

    /* renamed from: v */
    public final NativeAdListener f33180v = new C8523a();

    /* renamed from: com.library.ad.strategy.request.facebook.FacebookNativeAdBaseRequest$a */
    /* loaded from: classes2-dex2jar.jar:com/library/ad/strategy/request/facebook/FacebookNativeAdBaseRequest$a.class */
    public class C8523a implements NativeAdListener {
        public C8523a() {
        }

        @Override // com.facebook.ads.AdListener
        public void onAdClicked(AbstractC7079Ad ad) {
            if (FacebookNativeAdBaseRequest.this.getInnerAdEventListener() != null) {
                FacebookNativeAdBaseRequest.this.getInnerAdEventListener().mo3232a(FacebookNativeAdBaseRequest.this.getAdInfo(), 0);
            }
        }

        @Override // com.facebook.ads.AdListener
        public void onAdLoaded(AbstractC7079Ad ad) {
            FacebookNativeAdBaseRequest facebookNativeAdBaseRequest = FacebookNativeAdBaseRequest.this;
            BaseAdResult<NativeAd> adResult = facebookNativeAdBaseRequest.getAdResult();
            FacebookNativeAdBaseRequest facebookNativeAdBaseRequest2 = FacebookNativeAdBaseRequest.this;
            facebookNativeAdBaseRequest.m20621a("network_success", adResult, facebookNativeAdBaseRequest2.m20618a(facebookNativeAdBaseRequest2.f33179u));
        }

        @Override // com.facebook.ads.AdListener
        public void onError(AbstractC7079Ad ad, AdError adError) {
            FacebookNativeAdBaseRequest.this.m20620a("network_failure", adError.getErrorMessage());
            FacebookNativeAdBaseRequest.this.m5273a(adError);
        }

        @Override // com.facebook.ads.AdListener
        public void onLoggingImpression(AbstractC7079Ad ad) {
        }

        @Override // com.facebook.ads.NativeAdListener
        public void onMediaDownloaded(AbstractC7079Ad ad) {
        }
    }

    public FacebookNativeAdBaseRequest(String str) {
        super("FB", str);
    }

    /* renamed from: a */
    public void m5273a(AdError adError) {
        int errorCode = adError.getErrorCode();
        C6549b.m20532a(new C6550c(getAdInfo(), 203, (errorCode != 1000 ? errorCode != 1001 ? errorCode != 2001 ? C6552e.f20335e : C6552e.f20333c : C6552e.f20334d : C6552e.f20332b).toString()));
    }

    @Override // com.facebook.ads.NativeAdsManager.Listener
    public void onAdError(AdError adError) {
        m20620a("network_failure", adError.getErrorMessage());
        m5273a(adError);
    }

    @Override // com.facebook.ads.NativeAdsManager.Listener
    public void onAdsLoaded() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.f33178t.getUniqueNativeAdCount(); i++) {
            arrayList.add(this.f33178t.nextNativeAd());
        }
        m20621a("network_success", getAdResult(), m20619a(arrayList));
    }

    @Override // p131c.p396i.p397a.p398e.AbstractC6508d
    public boolean performLoad(int i) {
        try {
            if (Build.VERSION.SDK_INT < 21) {
                CookieSyncManager.createInstance(C6489a.m20718b());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        String[] strArr = this.f20251b;
        if (strArr != null && strArr.length > 0) {
            AdSettings.addTestDevices(Arrays.asList(strArr));
        }
        if (i > 1) {
            NativeAdsManager nativeAdsManager = new NativeAdsManager(C6489a.m20718b(), getUnitId(), i);
            this.f33178t = nativeAdsManager;
            nativeAdsManager.disableAutoRefresh();
            this.f33178t.setListener(this);
            this.f33178t.loadAds();
            return true;
        }
        NativeAd nativeAd = new NativeAd(C6489a.m20718b(), getUnitId());
        this.f33179u = nativeAd;
        nativeAd.setAdListener(this.f33180v);
        this.f33179u.loadAd();
        return true;
    }
}

package com.library.p518ad.strategy.request.facebook;

import android.os.Build;
import android.webkit.CookieSyncManager;
import com.facebook.ads.AbstractC7079Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AdSettings;
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
/* renamed from: com.library.ad.strategy.request.facebook.FacebookNativeTemplateBaseRequest */
/* loaded from: classes2-dex2jar.jar:com/library/ad/strategy/request/facebook/FacebookNativeTemplateBaseRequest.class */
public abstract class FacebookNativeTemplateBaseRequest extends AbstractC6508d<AbstractC7079Ad> implements NativeAdsManager.Listener {

    /* renamed from: t */
    public NativeAdsManager f33182t;

    /* renamed from: u */
    public AbstractC7079Ad f33183u;

    /* renamed from: v */
    public final NativeAdListener f33184v = new C8524a();

    /* renamed from: com.library.ad.strategy.request.facebook.FacebookNativeTemplateBaseRequest$a */
    /* loaded from: classes2-dex2jar.jar:com/library/ad/strategy/request/facebook/FacebookNativeTemplateBaseRequest$a.class */
    public class C8524a implements NativeAdListener {
        public C8524a() {
        }

        @Override // com.facebook.ads.AdListener
        public void onAdClicked(AbstractC7079Ad ad) {
            if (FacebookNativeTemplateBaseRequest.this.getInnerAdEventListener() != null) {
                FacebookNativeTemplateBaseRequest.this.getInnerAdEventListener().mo3232a(FacebookNativeTemplateBaseRequest.this.getAdInfo(), 0);
            }
        }

        @Override // com.facebook.ads.AdListener
        public void onAdLoaded(AbstractC7079Ad ad) {
            FacebookNativeTemplateBaseRequest facebookNativeTemplateBaseRequest = FacebookNativeTemplateBaseRequest.this;
            BaseAdResult<AbstractC7079Ad> adResult = facebookNativeTemplateBaseRequest.getAdResult();
            FacebookNativeTemplateBaseRequest facebookNativeTemplateBaseRequest2 = FacebookNativeTemplateBaseRequest.this;
            facebookNativeTemplateBaseRequest.m20621a("network_success", adResult, facebookNativeTemplateBaseRequest2.m20618a(facebookNativeTemplateBaseRequest2.f33183u));
        }

        @Override // com.facebook.ads.AdListener
        public void onError(AbstractC7079Ad ad, AdError adError) {
            FacebookNativeTemplateBaseRequest.this.m20620a("network_failure", adError.getErrorMessage());
            FacebookNativeTemplateBaseRequest.this.m5268a(adError);
        }

        @Override // com.facebook.ads.AdListener
        public void onLoggingImpression(AbstractC7079Ad ad) {
        }

        @Override // com.facebook.ads.NativeAdListener
        public void onMediaDownloaded(AbstractC7079Ad ad) {
        }
    }

    public FacebookNativeTemplateBaseRequest(String str) {
        super("FB", str);
    }

    /* renamed from: a */
    public void m5268a(AdError adError) {
        int errorCode = adError.getErrorCode();
        C6549b.m20532a(new C6550c(getAdInfo(), 203, (errorCode != 1000 ? errorCode != 1001 ? errorCode != 2001 ? C6552e.f20335e : C6552e.f20333c : C6552e.f20334d : C6552e.f20332b).toString()));
    }

    /* renamed from: a */
    public abstract void mo5264a(NativeAdListener nativeAdListener);

    @Override // com.facebook.ads.NativeAdsManager.Listener
    public void onAdError(AdError adError) {
        m20620a("network_failure", adError.getErrorMessage());
        m5268a(adError);
    }

    @Override // com.facebook.ads.NativeAdsManager.Listener
    public void onAdsLoaded() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.f33182t.getUniqueNativeAdCount(); i++) {
            arrayList.add(this.f33182t.nextNativeAd());
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
            this.f33182t = nativeAdsManager;
            nativeAdsManager.disableAutoRefresh();
            this.f33182t.setListener(this);
            this.f33182t.loadAds();
            return true;
        }
        mo5264a(this.f33184v);
        return true;
    }
}

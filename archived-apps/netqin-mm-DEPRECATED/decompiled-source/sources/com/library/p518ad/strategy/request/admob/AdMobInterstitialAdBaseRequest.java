package com.library.p518ad.strategy.request.admob;

import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.InterstitialAd;
import p131c.p396i.p397a.C6489a;
import p131c.p396i.p397a.p398e.AbstractC6508d;
import p131c.p396i.p397a.p405h.C6549b;
import p131c.p396i.p397a.p405h.C6550c;
import p131c.p396i.p397a.p405h.C6552e;
/* renamed from: com.library.ad.strategy.request.admob.AdMobInterstitialAdBaseRequest */
/* loaded from: classes2-dex2jar.jar:com/library/ad/strategy/request/admob/AdMobInterstitialAdBaseRequest.class */
public class AdMobInterstitialAdBaseRequest extends AbstractC6508d<InterstitialAd> {

    /* renamed from: t */
    public InterstitialAd f33158t;

    /* renamed from: u */
    public AdListener f33159u = new C8516a();

    /* renamed from: com.library.ad.strategy.request.admob.AdMobInterstitialAdBaseRequest$a */
    /* loaded from: classes2-dex2jar.jar:com/library/ad/strategy/request/admob/AdMobInterstitialAdBaseRequest$a.class */
    public class C8516a extends AdListener {
        public C8516a() {
        }

        @Override // com.google.android.gms.ads.AdListener
        /* renamed from: a */
        public void mo5294a() {
            AdMobInterstitialAdBaseRequest.this.onAdClosed();
        }

        @Override // com.google.android.gms.ads.AdListener
        /* renamed from: a */
        public void mo3662a(int i) {
            AdMobInterstitialAdBaseRequest.this.m20620a("network_failure", Integer.valueOf(i));
            AdMobInterstitialAdBaseRequest.this.m5300a(i);
            AdMobInterstitialAdBaseRequest.this.onAdFailedToLoad(i);
        }

        @Override // com.google.android.gms.ads.AdListener
        /* renamed from: c */
        public void mo5293c() {
            AdMobInterstitialAdBaseRequest.this.onAdLeftApplication();
        }

        @Override // com.google.android.gms.ads.AdListener
        /* renamed from: d */
        public void mo5292d() {
            if (AdMobInterstitialAdBaseRequest.this.f33158t == null || !AdMobInterstitialAdBaseRequest.this.f33158t.m18108c()) {
                AdMobInterstitialAdBaseRequest.this.m20620a("network_failure", "加载的回调成功,但是没有广告数据");
            } else {
                AdMobInterstitialAdBaseRequest adMobInterstitialAdBaseRequest = AdMobInterstitialAdBaseRequest.this;
                adMobInterstitialAdBaseRequest.m20622a("network_success", adMobInterstitialAdBaseRequest.m20618a(adMobInterstitialAdBaseRequest.f33158t));
            }
            AdMobInterstitialAdBaseRequest.this.onAdLoaded();
        }

        @Override // com.google.android.gms.ads.AdListener
        /* renamed from: e */
        public void mo3661e() {
            AdMobInterstitialAdBaseRequest.this.onAdOpened();
        }
    }

    public AdMobInterstitialAdBaseRequest(String str) {
        super("AM", str);
    }

    /* renamed from: a */
    public void m5300a(int i) {
        C6549b.m20532a(new C6550c(getAdInfo(), 203, (i != 0 ? i != 2 ? i != 3 ? C6552e.f20335e : C6552e.f20334d : C6552e.f20332b : C6552e.f20333c).toString()));
    }

    public void onAdClosed() {
    }

    public void onAdFailedToLoad(int i) {
    }

    public void onAdLeftApplication() {
    }

    public void onAdLoaded() {
    }

    public void onAdOpened() {
    }

    @Override // p131c.p396i.p397a.p398e.AbstractC6508d
    public boolean performLoad(int i) {
        getUnitId();
        AdRequest.Builder builder = new AdRequest.Builder();
        String[] strArr = this.f20251b;
        if (strArr != null && strArr.length > 0) {
            for (String str : strArr) {
                builder.m18139b(str);
            }
        }
        AdRequest a = builder.m18147a();
        InterstitialAd interstitialAd = new InterstitialAd(C6489a.m20718b());
        this.f33158t = interstitialAd;
        interstitialAd.m18112a(getUnitId());
        this.f33158t.m18116a(this.f33159u);
        this.f33158t.m18115a(a);
        return true;
    }
}

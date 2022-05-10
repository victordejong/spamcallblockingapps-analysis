package com.library.p518ad.strategy.request.admob;

import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
import p131c.p396i.p397a.C6489a;
import p131c.p396i.p397a.p398e.AbstractC6508d;
import p131c.p396i.p397a.p398e.AbstractC6514f;
import p131c.p396i.p397a.p405h.C6549b;
import p131c.p396i.p397a.p405h.C6550c;
import p131c.p396i.p397a.p405h.C6552e;
/* renamed from: com.library.ad.strategy.request.admob.AdMobBannerBaseRequest */
/* loaded from: classes2-dex2jar.jar:com/library/ad/strategy/request/admob/AdMobBannerBaseRequest.class */
public class AdMobBannerBaseRequest extends AbstractC6508d<AdView> {

    /* renamed from: t */
    public AdView f33154t;

    /* renamed from: u */
    public boolean f33155u = false;

    /* renamed from: v */
    public AdSize f33156v = AdSize.f22648g;

    /* renamed from: com.library.ad.strategy.request.admob.AdMobBannerBaseRequest$a */
    /* loaded from: classes2-dex2jar.jar:com/library/ad/strategy/request/admob/AdMobBannerBaseRequest$a.class */
    public class C8515a extends AdListener {
        public C8515a() {
        }

        @Override // com.google.android.gms.ads.AdListener
        /* renamed from: a */
        public void mo5294a() {
            AdMobBannerBaseRequest.this.onAdClosed();
        }

        @Override // com.google.android.gms.ads.AdListener
        /* renamed from: a */
        public void mo3662a(int i) {
            AdMobBannerBaseRequest.this.onAdFailedToLoad(i);
            AdMobBannerBaseRequest.this.m5301a(i);
        }

        @Override // com.google.android.gms.ads.AdListener
        /* renamed from: c */
        public void mo5293c() {
            AdMobBannerBaseRequest.this.onAdLeftApplication();
        }

        @Override // com.google.android.gms.ads.AdListener
        /* renamed from: d */
        public void mo5292d() {
            AdMobBannerBaseRequest.this.onAdLoaded();
        }

        @Override // com.google.android.gms.ads.AdListener
        /* renamed from: e */
        public void mo3661e() {
            AdMobBannerBaseRequest.this.onAdOpened();
        }
    }

    public AdMobBannerBaseRequest(String str) {
        super("AM", str);
    }

    /* renamed from: a */
    public void m5301a(int i) {
        if (!this.f20267r) {
            C6549b.m20532a(new C6550c(getAdInfo(), 203, (i != 0 ? i != 2 ? i != 3 ? C6552e.f20335e : C6552e.f20334d : C6552e.f20332b : C6552e.f20333c).toString()));
        }
    }

    public AdSize getAdSize() {
        return this.f33156v;
    }

    public void onAdClosed() {
    }

    public void onAdFailedToLoad(int i) {
        m20620a("network_failure", Integer.valueOf(i));
    }

    public void onAdLeftApplication() {
    }

    public void onAdLoaded() {
        String str = "onAdLoaded:" + this.f33155u;
        if (!this.f33155u) {
            this.f33155u = true;
            m20622a("network_success", (AbstractC6514f) m20618a(this.f33154t));
        }
    }

    public void onAdOpened() {
    }

    @Override // p131c.p396i.p397a.p398e.AbstractC6508d
    public void onDestroy() {
        super.onDestroy();
        AdView adView = this.f33154t;
        if (adView != null) {
            adView.m18124a();
        }
    }

    @Override // p131c.p396i.p397a.p398e.AbstractC6508d
    public boolean performLoad(int i) {
        AdView adView = new AdView(C6489a.m20718b());
        this.f33154t = adView;
        adView.setAdSize(getAdSize());
        this.f33154t.setAdUnitId(getUnitId());
        AdRequest.Builder builder = new AdRequest.Builder();
        AdRequest a = builder.m18147a();
        String[] strArr = this.f20251b;
        if (strArr != null && strArr.length > 0) {
            for (String str : strArr) {
                builder.m18139b(str);
            }
        }
        this.f33154t.setAdListener(new C8515a());
        this.f33154t.m18123a(a);
        return true;
    }

    public void setAdSize(AdSize adSize) {
        this.f33156v = adSize;
    }
}

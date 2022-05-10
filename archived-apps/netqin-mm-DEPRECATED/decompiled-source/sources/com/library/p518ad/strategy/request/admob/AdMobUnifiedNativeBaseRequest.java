package com.library.p518ad.strategy.request.admob;

import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdLoader;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.formats.UnifiedNativeAd;
import p131c.p396i.p397a.C6489a;
import p131c.p396i.p397a.p398e.AbstractC6508d;
import p131c.p396i.p397a.p405h.C6549b;
import p131c.p396i.p397a.p405h.C6550c;
import p131c.p396i.p397a.p405h.C6552e;
import p131c.p396i.p397a.p406i.p408e.p409a.C6576a;
/* renamed from: com.library.ad.strategy.request.admob.AdMobUnifiedNativeBaseRequest */
/* loaded from: classes2-dex2jar.jar:com/library/ad/strategy/request/admob/AdMobUnifiedNativeBaseRequest.class */
public class AdMobUnifiedNativeBaseRequest extends AbstractC6508d<UnifiedNativeAd> implements UnifiedNativeAd.OnUnifiedNativeAdLoadedListener {

    /* renamed from: t */
    public int f33165t = 0;

    /* renamed from: u */
    public AdListener f33166u = new C8518a();

    /* renamed from: com.library.ad.strategy.request.admob.AdMobUnifiedNativeBaseRequest$a */
    /* loaded from: classes2-dex2jar.jar:com/library/ad/strategy/request/admob/AdMobUnifiedNativeBaseRequest$a.class */
    public class C8518a extends AdListener {
        public C8518a() {
        }

        @Override // com.google.android.gms.ads.AdListener
        /* renamed from: a */
        public void mo3662a(int i) {
            AdMobUnifiedNativeBaseRequest.this.m20620a("network_failure", Integer.valueOf(i));
            AdMobUnifiedNativeBaseRequest.this.m5284a(i);
        }

        @Override // com.google.android.gms.ads.AdListener
        /* renamed from: e */
        public void mo3661e() {
            C6549b.m20532a(new C6550c(AdMobUnifiedNativeBaseRequest.this.getAdInfo(), 302, String.valueOf(AdMobUnifiedNativeBaseRequest.m5283a(AdMobUnifiedNativeBaseRequest.this))));
            C6576a.m20458a("action_click", AdMobUnifiedNativeBaseRequest.this.getAdInfo());
            C6549b.m20533a();
        }
    }

    public AdMobUnifiedNativeBaseRequest(String str) {
        super("AM", str);
        testDevices("A17B3106C46A25877FC934CFEE9F748C");
    }

    /* renamed from: a */
    public static /* synthetic */ int m5283a(AdMobUnifiedNativeBaseRequest adMobUnifiedNativeBaseRequest) {
        int i = adMobUnifiedNativeBaseRequest.f33165t + 1;
        adMobUnifiedNativeBaseRequest.f33165t = i;
        return i;
    }

    /* renamed from: a */
    public void m5284a(int i) {
        C6549b.m20532a(new C6550c(getAdInfo(), 203, (i != 0 ? i != 2 ? i != 3 ? C6552e.f20335e : C6552e.f20334d : C6552e.f20332b : C6552e.f20333c).toString()));
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd.OnUnifiedNativeAdLoadedListener
    public void onUnifiedNativeAdLoaded(UnifiedNativeAd unifiedNativeAd) {
        m20621a("network_success", getAdResult(), m20618a(unifiedNativeAd));
    }

    @Override // p131c.p396i.p397a.p398e.AbstractC6508d
    public boolean performLoad(int i) {
        AdRequest.Builder builder = new AdRequest.Builder();
        String[] strArr = this.f20251b;
        if (strArr != null && strArr.length > 0) {
            for (String str : strArr) {
                builder.m18139b(str);
            }
        }
        AdRequest a = builder.m18147a();
        AdLoader.Builder builder2 = new AdLoader.Builder(C6489a.m20718b(), getUnitId());
        builder2.m18150a(this);
        builder2.m18154a(this.f33166u);
        builder2.m18155a().m18157a(a);
        return true;
    }
}

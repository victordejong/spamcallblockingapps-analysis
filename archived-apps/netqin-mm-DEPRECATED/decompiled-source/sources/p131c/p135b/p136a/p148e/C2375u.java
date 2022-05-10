package p131c.p135b.p136a.p148e;

import com.applovin.impl.sdk.p489ad.NativeAdImpl;
import com.applovin.nativeAds.AppLovinNativeAd;
import com.applovin.nativeAds.AppLovinNativeAdLoadListener;
import com.applovin.nativeAds.AppLovinNativeAdPrecacheListener;
import com.applovin.sdk.AppLovinAd;
import java.util.Arrays;
import java.util.List;
import p131c.p135b.p136a.p148e.C2251d;
import p131c.p135b.p136a.p148e.C2270g;
import p131c.p135b.p136a.p148e.p150c.AbstractC2250f;
import p131c.p135b.p136a.p148e.p150c.C2246b;
import p131c.p135b.p136a.p148e.p153y.C2422o;
/* renamed from: c.b.a.e.u */
/* loaded from: classes-dex2jar.jar:c/b/a/e/u.class */
public class C2375u extends AbstractC2377v {

    /* renamed from: c.b.a.e.u$a */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/u$a.class */
    public class C2376a implements AppLovinNativeAdPrecacheListener {
        public C2376a() {
        }

        @Override // com.applovin.nativeAds.AppLovinNativeAdPrecacheListener
        public void onNativeAdImagePrecachingFailed(AppLovinNativeAd appLovinNativeAd, int i) {
            C2375u uVar = C2375u.this;
            uVar.m30018c(C2246b.m30627h(uVar.f9237a), i);
        }

        @Override // com.applovin.nativeAds.AppLovinNativeAdPrecacheListener
        public void onNativeAdImagesPrecached(AppLovinNativeAd appLovinNativeAd) {
            if (!C2422o.m29851b(appLovinNativeAd.getVideoUrl())) {
                C2375u.this.m30021b((AbstractC2250f) appLovinNativeAd);
            }
        }

        @Override // com.applovin.nativeAds.AppLovinNativeAdPrecacheListener
        public void onNativeAdVideoPrecachingFailed(AppLovinNativeAd appLovinNativeAd, int i) {
            C2374t tVar = C2375u.this.f9238b;
            tVar.m30040d("NativeAdPreloadManager", "Video failed to cache during native ad preload. " + i);
            C2375u.this.m30021b((AbstractC2250f) appLovinNativeAd);
        }

        @Override // com.applovin.nativeAds.AppLovinNativeAdPrecacheListener
        public void onNativeAdVideoPreceached(AppLovinNativeAd appLovinNativeAd) {
            C2375u.this.m30021b((AbstractC2250f) appLovinNativeAd);
        }
    }

    public C2375u(C2341l lVar) {
        super(lVar);
    }

    @Override // p131c.p135b.p136a.p148e.AbstractC2377v
    /* renamed from: a */
    public C2246b mo30029a(AbstractC2250f fVar) {
        return ((NativeAdImpl) fVar).getAdZone();
    }

    @Override // p131c.p135b.p136a.p148e.AbstractC2377v
    /* renamed from: a */
    public C2270g.AbstractRunnableC2278c mo30031a(C2246b bVar) {
        return new C2270g.C2318v(this.f9237a, this);
    }

    /* renamed from: a */
    public void m30033a() {
        m30013h(C2246b.m30627h(this.f9237a));
    }

    @Override // p131c.p135b.p136a.p148e.AbstractC2355p
    /* renamed from: a */
    public void mo30032a(C2246b bVar, int i) {
    }

    @Override // p131c.p135b.p136a.p148e.AbstractC2377v
    /* renamed from: a */
    public void mo30027a(Object obj, C2246b bVar, int i) {
        ((AppLovinNativeAdLoadListener) obj).onNativeAdsFailedToLoad(i);
    }

    @Override // p131c.p135b.p136a.p148e.AbstractC2377v
    /* renamed from: a */
    public void mo30026a(Object obj, AbstractC2250f fVar) {
        ((AppLovinNativeAdLoadListener) obj).onNativeAdsLoaded(Arrays.asList((AppLovinNativeAd) fVar));
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void adReceived(AppLovinAd appLovinAd) {
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void failedToReceiveAd(int i) {
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdLoadListener
    public void onNativeAdsFailedToLoad(int i) {
        m30018c(C2246b.m30627h(this.f9237a), i);
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdLoadListener
    public void onNativeAdsLoaded(List<AppLovinNativeAd> list) {
        AppLovinNativeAd appLovinNativeAd = list.get(0);
        if (((Boolean) this.f9237a.m30291a(C2251d.C2256e.f8538G0)).booleanValue()) {
            this.f9237a.m30298X().precacheResources(appLovinNativeAd, new C2376a());
        } else {
            m30021b((AbstractC2250f) appLovinNativeAd);
        }
    }
}

package p131c.p135b.p136a.p148e;

import com.applovin.impl.sdk.AppLovinAdBase;
import com.applovin.nativeAds.AppLovinNativeAd;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdLoadListener;
import java.util.List;
import p131c.p135b.p136a.p148e.C2270g;
import p131c.p135b.p136a.p148e.p150c.AbstractC2250f;
import p131c.p135b.p136a.p148e.p150c.C2246b;
/* renamed from: c.b.a.e.f */
/* loaded from: classes-dex2jar.jar:c/b/a/e/f.class */
public class C2269f extends AbstractC2377v {
    public C2269f(C2341l lVar) {
        super(lVar);
    }

    @Override // p131c.p135b.p136a.p148e.AbstractC2377v
    /* renamed from: a */
    public C2246b mo30029a(AbstractC2250f fVar) {
        return ((AppLovinAdBase) fVar).getAdZone();
    }

    @Override // p131c.p135b.p136a.p148e.AbstractC2377v
    /* renamed from: a */
    public C2270g.AbstractRunnableC2278c mo30031a(C2246b bVar) {
        C2270g.C2316u uVar = new C2270g.C2316u(bVar, this, this.f9237a);
        uVar.m30387a(true);
        return uVar;
    }

    /* renamed from: a */
    public void m30513a() {
        for (C2246b bVar : C2246b.m30640b(this.f9237a)) {
            if (!bVar.m30634e()) {
                m30013h(bVar);
            }
        }
    }

    @Override // p131c.p135b.p136a.p148e.AbstractC2355p
    /* renamed from: a */
    public void mo30032a(C2246b bVar, int i) {
        m30018c(bVar, i);
    }

    @Override // p131c.p135b.p136a.p148e.AbstractC2377v
    /* renamed from: a */
    public void mo30027a(Object obj, C2246b bVar, int i) {
        if (obj instanceof AbstractC2355p) {
            ((AbstractC2355p) obj).mo30032a(bVar, i);
        }
        if (obj instanceof AppLovinAdLoadListener) {
            ((AppLovinAdLoadListener) obj).failedToReceiveAd(i);
        }
    }

    @Override // p131c.p135b.p136a.p148e.AbstractC2377v
    /* renamed from: a */
    public void mo30026a(Object obj, AbstractC2250f fVar) {
        ((AppLovinAdLoadListener) obj).adReceived((AppLovinAd) fVar);
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void adReceived(AppLovinAd appLovinAd) {
        m30021b((AbstractC2250f) appLovinAd);
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void failedToReceiveAd(int i) {
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdLoadListener
    public void onNativeAdsFailedToLoad(int i) {
    }

    @Override // com.applovin.nativeAds.AppLovinNativeAdLoadListener
    public void onNativeAdsLoaded(List<AppLovinNativeAd> list) {
    }
}

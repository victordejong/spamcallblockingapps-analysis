package p131c.p135b.p136a.p143d.p147e;

import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdListener;
import com.applovin.mediation.MaxAdViewAdListener;
import com.applovin.mediation.MaxReward;
import com.applovin.mediation.MaxRewardedAdListener;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.p153y.C2391j;
/* renamed from: c.b.a.d.e.a */
/* loaded from: classes-dex2jar.jar:c/b/a/d/e/a.class */
public class C2166a implements MaxAdListener, MaxAdViewAdListener, MaxRewardedAdListener {

    /* renamed from: a */
    public final MaxAdListener f8254a;

    public C2166a(MaxAdListener maxAdListener, C2341l lVar) {
        this.f8254a = maxAdListener;
    }

    @Override // com.applovin.mediation.MaxAdListener
    public void onAdClicked(MaxAd maxAd) {
        C2391j.m29883d(this.f8254a, maxAd);
    }

    @Override // com.applovin.mediation.MaxAdViewAdListener
    public void onAdCollapsed(MaxAd maxAd) {
        C2391j.m29879h(this.f8254a, maxAd);
    }

    @Override // com.applovin.mediation.MaxAdListener
    public void onAdDisplayFailed(MaxAd maxAd, int i) {
        C2391j.m29904a(this.f8254a, maxAd, i);
    }

    @Override // com.applovin.mediation.MaxAdListener
    public void onAdDisplayed(MaxAd maxAd) {
        C2391j.m29890b(this.f8254a, maxAd);
    }

    @Override // com.applovin.mediation.MaxAdViewAdListener
    public void onAdExpanded(MaxAd maxAd) {
        C2391j.m29880g(this.f8254a, maxAd);
    }

    @Override // com.applovin.mediation.MaxAdListener
    public void onAdHidden(MaxAd maxAd) {
        C2391j.m29885c(this.f8254a, maxAd);
    }

    @Override // com.applovin.mediation.MaxRewardedAdListener
    public void onRewardedVideoCompleted(MaxAd maxAd) {
        C2391j.m29881f(this.f8254a, maxAd);
    }

    @Override // com.applovin.mediation.MaxRewardedAdListener
    public void onRewardedVideoStarted(MaxAd maxAd) {
        C2391j.m29882e(this.f8254a, maxAd);
    }

    @Override // com.applovin.mediation.MaxRewardedAdListener
    public void onUserRewarded(MaxAd maxAd, MaxReward maxReward) {
        C2391j.m29903a(this.f8254a, maxAd, maxReward);
    }
}

package p081h.p203i.p204a.p224e.p259j.p260a;

import com.google.android.gms.ads.formats.UnifiedNativeAd;
@AbstractC7354p0
/* renamed from: h.i.a.e.j.a.u9 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/u9.class */
public final class BinderC7424u9 extends AbstractBinderC7238f9 {

    /* renamed from: a */
    public final UnifiedNativeAd.OnUnifiedNativeAdLoadedListener f17484a;

    public BinderC7424u9(UnifiedNativeAd.OnUnifiedNativeAdLoadedListener onUnifiedNativeAdLoadedListener) {
        this.f17484a = onUnifiedNativeAdLoadedListener;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7225e9
    /* renamed from: a */
    public final void mo20645a(AbstractC7290j9 j9Var) {
        this.f17484a.onUnifiedNativeAdLoaded(new C7315l9(j9Var));
    }
}

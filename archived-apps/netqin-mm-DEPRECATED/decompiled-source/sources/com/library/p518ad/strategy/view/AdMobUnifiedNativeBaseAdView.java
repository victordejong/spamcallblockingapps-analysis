package com.library.p518ad.strategy.view;

import android.content.Context;
import android.view.View;
import com.google.android.ads.nativetemplates.TemplateView;
import com.google.android.gms.ads.formats.UnifiedNativeAd;
import com.library.p518ad.core.AbstractAdView;
/* renamed from: com.library.ad.strategy.view.AdMobUnifiedNativeBaseAdView */
/* loaded from: classes2-dex2jar.jar:com/library/ad/strategy/view/AdMobUnifiedNativeBaseAdView.class */
public abstract class AdMobUnifiedNativeBaseAdView extends AbstractAdView<UnifiedNativeAd> {
    public AdMobUnifiedNativeBaseAdView(Context context) {
        super(context, "AM");
    }

    public int nativeAdLayout() {
        return getIdByStr("native_ad_container");
    }

    public void onBindData(UnifiedNativeAd unifiedNativeAd) {
        View.inflate(getContext(), getLayoutId(), this);
        ((TemplateView) getView(nativeAdLayout())).setNativeAd(unifiedNativeAd);
    }
}

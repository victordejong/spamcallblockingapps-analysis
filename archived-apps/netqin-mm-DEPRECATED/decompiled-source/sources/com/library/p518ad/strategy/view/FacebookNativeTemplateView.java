package com.library.p518ad.strategy.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.facebook.ads.AbstractC7079Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AdListener;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdListener;
import com.facebook.ads.NativeAdView;
import com.google.logging.type.LogSeverity;
import com.library.p518ad.core.AbstractAdView;
/* renamed from: com.library.ad.strategy.view.FacebookNativeTemplateView */
/* loaded from: classes2-dex2jar.jar:com/library/ad/strategy/view/FacebookNativeTemplateView.class */
public class FacebookNativeTemplateView extends AbstractAdView<AbstractC7079Ad> implements AdListener, NativeAdListener {
    public FacebookNativeTemplateView(Context context) {
        super(context, "FB");
    }

    public FacebookNativeTemplateView(Context context, AttributeSet attributeSet) {
        super(context, "FB", attributeSet);
    }

    @Override // p131c.p396i.p397a.p398e.AbstractViewTreeObserver$OnScrollChangedListenerC6512e
    public int[] layoutIds() {
        return new int[0];
    }

    public int nativeAdLayout() {
        return getIdByStr("native_ad_container");
    }

    @Override // com.facebook.ads.AdListener
    public void onAdClicked(AbstractC7079Ad ad) {
    }

    @Override // com.facebook.ads.AdListener
    public void onAdLoaded(AbstractC7079Ad ad) {
    }

    public void onBindData(AbstractC7079Ad ad) {
        View render = NativeAdView.render(this.mContext, (NativeAd) ad);
        View.inflate(getContext(), getLayoutId(), this);
        ((LinearLayout) getView(nativeAdLayout())).addView(render, new FrameLayout.LayoutParams(-1, (int) LogSeverity.EMERGENCY_VALUE));
    }

    @Override // com.facebook.ads.AdListener
    public void onError(AbstractC7079Ad ad, AdError adError) {
    }

    @Override // com.facebook.ads.AdListener
    public void onLoggingImpression(AbstractC7079Ad ad) {
    }

    @Override // com.facebook.ads.NativeAdListener
    public void onMediaDownloaded(AbstractC7079Ad ad) {
    }
}

package com.netqin.p525cm.p526ad.facebook;

import android.content.Context;
import com.library.p518ad.strategy.view.FacebookNativeBaseAdView;
/* renamed from: com.netqin.cm.ad.facebook.FacebookNativeAdSplashFullScreenView */
/* loaded from: classes2-dex2jar.jar:com/netqin/cm/ad/facebook/FacebookNativeAdSplashFullScreenView.class */
public class FacebookNativeAdSplashFullScreenView extends FacebookNativeBaseAdView {

    /* renamed from: com.netqin.cm.ad.facebook.FacebookNativeAdSplashFullScreenView$a */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/ad/facebook/FacebookNativeAdSplashFullScreenView$a.class */
    public class RunnableC9018a implements Runnable {
        public RunnableC9018a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            FacebookNativeAdSplashFullScreenView.this.requestLayout();
        }
    }

    public FacebookNativeAdSplashFullScreenView(Context context) {
        super(context);
    }

    @Override // com.library.p518ad.strategy.view.FacebookNativeBaseAdView
    public int adChoicesId() {
        return getIdByStr("ads_adChoices");
    }

    @Override // com.library.p518ad.core.AbstractAdView
    public int bodyId() {
        return getIdByStr("ads_nativeAdBody");
    }

    @Override // com.library.p518ad.core.AbstractAdView
    public int buttonId() {
        return getIdByStr("ads_nativeAdCallToAction");
    }

    @Override // com.library.p518ad.core.AbstractAdView
    public int iconId() {
        return getIdByStr("ads_nativeAdIcon");
    }

    @Override // com.library.p518ad.core.AbstractAdView
    public int imageContainerId() {
        return getIdByStr("ads_nativeAdMedia");
    }

    @Override // p131c.p396i.p397a.p398e.AbstractViewTreeObserver$OnScrollChangedListenerC6512e
    public int[] layoutIds() {
        return new int[]{2131427367};
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        getLayoutParams().height = -1;
        post(new RunnableC9018a());
    }
}

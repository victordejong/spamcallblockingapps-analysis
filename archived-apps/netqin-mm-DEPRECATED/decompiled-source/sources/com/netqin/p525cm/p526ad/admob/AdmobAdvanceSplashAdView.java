package com.netqin.p525cm.p526ad.admob;

import android.content.Context;
import android.widget.LinearLayout;
/* renamed from: com.netqin.cm.ad.admob.AdmobAdvanceSplashAdView */
/* loaded from: classes2-dex2jar.jar:com/netqin/cm/ad/admob/AdmobAdvanceSplashAdView.class */
public class AdmobAdvanceSplashAdView extends BaseAdMobAdvanceNativeView {

    /* renamed from: com.netqin.cm.ad.admob.AdmobAdvanceSplashAdView$a */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/ad/admob/AdmobAdvanceSplashAdView$a.class */
    public class RunnableC9014a implements Runnable {
        public RunnableC9014a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AdmobAdvanceSplashAdView.this.requestLayout();
        }
    }

    public AdmobAdvanceSplashAdView(Context context) {
        super(context);
    }

    @Override // com.netqin.p525cm.p526ad.admob.BaseAdMobAdvanceNativeView
    public int getViewId() {
        return 2131427367;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        ((LinearLayout.LayoutParams) getLayoutParams()).height = 0;
        ((LinearLayout.LayoutParams) getLayoutParams()).weight = 1.0f;
        postDelayed(new RunnableC9014a(), 200L);
    }
}

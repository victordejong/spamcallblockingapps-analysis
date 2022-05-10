package com.applovin.adview;

import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.applovin.impl.adview.AdViewControllerImpl;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinSdk;
import com.mopub.mobileads.resource.DrawableConstants;
import p131c.p135b.p136a.p148e.C2374t;
/* loaded from: classes-dex2jar.jar:com/applovin/adview/AppLovinAdView.class */
public class AppLovinAdView extends RelativeLayout {
    public static final String NAMESPACE = "http://schemas.applovin.com/android/1.0";

    /* renamed from: a */
    public AdViewController f21079a;

    public AppLovinAdView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AppLovinAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m19477a(null, null, null, context, attributeSet);
    }

    public AppLovinAdView(AppLovinAdSize appLovinAdSize, Context context) {
        this(appLovinAdSize, (String) null, context);
    }

    public AppLovinAdView(AppLovinAdSize appLovinAdSize, String str, Context context) {
        super(context);
        m19477a(appLovinAdSize, str, null, context, null);
    }

    public AppLovinAdView(AppLovinSdk appLovinSdk, AppLovinAdSize appLovinAdSize, Context context) {
        this(appLovinSdk, appLovinAdSize, null, context);
    }

    public AppLovinAdView(AppLovinSdk appLovinSdk, AppLovinAdSize appLovinAdSize, String str, Context context) {
        super(context);
        m19477a(appLovinAdSize, str, appLovinSdk, context, null);
    }

    /* renamed from: a */
    public final void m19478a(AttributeSet attributeSet, Context context) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        int i = displayMetrics.widthPixels;
        int applyDimension = (int) TypedValue.applyDimension(1, 50.0f, displayMetrics);
        TextView textView = new TextView(context);
        textView.setBackgroundColor(Color.rgb(220, 220, 220));
        textView.setTextColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
        textView.setText("AppLovin Ad");
        textView.setGravity(17);
        addView(textView, i, applyDimension);
    }

    /* renamed from: a */
    public final void m19477a(AppLovinAdSize appLovinAdSize, String str, AppLovinSdk appLovinSdk, Context context, AttributeSet attributeSet) {
        if (!isInEditMode()) {
            AdViewControllerImpl adViewControllerImpl = new AdViewControllerImpl();
            adViewControllerImpl.initializeAdView(this, context, appLovinAdSize, str, appLovinSdk, attributeSet);
            this.f21079a = adViewControllerImpl;
            return;
        }
        m19478a(attributeSet, context);
    }

    public void destroy() {
        AdViewController adViewController = this.f21079a;
        if (adViewController != null) {
            adViewController.destroy();
        }
    }

    @Deprecated
    public AdViewController getAdViewController() {
        return this.f21079a;
    }

    public AppLovinAdSize getSize() {
        AdViewController adViewController = this.f21079a;
        if (adViewController != null) {
            return adViewController.getSize();
        }
        return null;
    }

    public String getZoneId() {
        AdViewController adViewController = this.f21079a;
        if (adViewController != null) {
            return adViewController.getZoneId();
        }
        return null;
    }

    @Deprecated
    public boolean isAdReadyToDisplay() {
        AdViewController adViewController = this.f21079a;
        return adViewController != null && adViewController.isAdReadyToDisplay();
    }

    public void loadNextAd() {
        AdViewController adViewController = this.f21079a;
        if (adViewController != null) {
            adViewController.loadNextAd();
        } else {
            C2374t.m30036h(AppLovinSdk.TAG, "Unable to load next ad: AppLovinAdView is not initialized.");
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        AdViewController adViewController = this.f21079a;
        if (adViewController != null) {
            adViewController.onAttachedToWindow();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        AdViewController adViewController = this.f21079a;
        if (adViewController != null) {
            adViewController.onDetachedFromWindow();
        }
        super.onDetachedFromWindow();
    }

    public void pause() {
        AdViewController adViewController = this.f21079a;
        if (adViewController != null) {
            adViewController.pause();
        }
    }

    public void renderAd(AppLovinAd appLovinAd) {
        renderAd(appLovinAd, null);
    }

    @Deprecated
    public void renderAd(AppLovinAd appLovinAd, String str) {
        AdViewController adViewController = this.f21079a;
        if (adViewController != null) {
            adViewController.renderAd(appLovinAd, str);
        }
    }

    public void resume() {
        AdViewController adViewController = this.f21079a;
        if (adViewController != null) {
            adViewController.resume();
        }
    }

    public void setAdClickListener(AppLovinAdClickListener appLovinAdClickListener) {
        AdViewController adViewController = this.f21079a;
        if (adViewController != null) {
            adViewController.setAdClickListener(appLovinAdClickListener);
        }
    }

    public void setAdDisplayListener(AppLovinAdDisplayListener appLovinAdDisplayListener) {
        AdViewController adViewController = this.f21079a;
        if (adViewController != null) {
            adViewController.setAdDisplayListener(appLovinAdDisplayListener);
        }
    }

    public void setAdLoadListener(AppLovinAdLoadListener appLovinAdLoadListener) {
        AdViewController adViewController = this.f21079a;
        if (adViewController != null) {
            adViewController.setAdLoadListener(appLovinAdLoadListener);
        }
    }

    public void setAdViewEventListener(AppLovinAdViewEventListener appLovinAdViewEventListener) {
        AdViewController adViewController = this.f21079a;
        if (adViewController != null) {
            adViewController.setAdViewEventListener(appLovinAdViewEventListener);
        }
    }

    @Deprecated
    public void setAutoDestroy(boolean z) {
    }

    @Override // android.view.View
    public String toString() {
        return "AppLovinAdView{zoneId='" + getZoneId() + "', size=" + getSize() + '}';
    }
}

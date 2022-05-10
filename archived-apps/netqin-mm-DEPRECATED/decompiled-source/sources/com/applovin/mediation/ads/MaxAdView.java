package com.applovin.mediation.ads;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.applovin.adview.AppLovinAdView;
import com.applovin.impl.mediation.ads.MaxAdViewImpl;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdViewAdListener;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinSdk;
import com.mopub.mobileads.resource.DrawableConstants;
import p131c.p135b.p136a.p148e.C2374t;
import p131c.p135b.p136a.p148e.p153y.AbstractC2426r;
import p131c.p135b.p136a.p148e.p153y.C2382b;
import p131c.p135b.p136a.p148e.p153y.C2422o;
import p131c.p135b.p136a.p148e.p153y.C2427s;
/* loaded from: classes-dex2jar.jar:com/applovin/mediation/ads/MaxAdView.class */
public class MaxAdView extends RelativeLayout {

    /* renamed from: a */
    public MaxAdViewImpl f21825a;

    /* renamed from: b */
    public View f21826b;

    /* renamed from: c */
    public int f21827c;

    public MaxAdView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MaxAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        String attributeValue = attributeSet.getAttributeValue(AppLovinAdView.NAMESPACE, "adUnitId");
        String attributeValue2 = attributeSet.getAttributeValue(AppLovinAdView.NAMESPACE, "adFormat");
        MaxAdFormat c = C2422o.m29851b(attributeValue2) ? AbstractC2426r.m29779c(attributeValue2) : C2382b.m29997a(context);
        int attributeIntValue = attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "gravity", 49);
        if (attributeValue == null) {
            throw new IllegalArgumentException("No ad unit ID specified");
        } else if (TextUtils.isEmpty(attributeValue)) {
            throw new IllegalArgumentException("Empty ad unit ID specified");
        } else if (context instanceof Activity) {
            Activity activity = (Activity) context;
            m18785a(attributeValue, c, attributeIntValue, AppLovinSdk.getInstance(activity), activity);
        } else {
            throw new IllegalArgumentException("Max ad view context is not an activity");
        }
    }

    public MaxAdView(String str, Activity activity) {
        this(str, AppLovinSdk.getInstance(activity), activity);
    }

    public MaxAdView(String str, MaxAdFormat maxAdFormat, Activity activity) {
        this(str, maxAdFormat, AppLovinSdk.getInstance(activity), activity);
    }

    public MaxAdView(String str, MaxAdFormat maxAdFormat, AppLovinSdk appLovinSdk, Activity activity) {
        super(activity);
        C2374t.m30037g("MaxAdView", "MaxAdView(adUnitId=" + str + ", adFormat=" + maxAdFormat + ", sdk=" + appLovinSdk + ")");
        m18785a(str, maxAdFormat, 49, appLovinSdk, activity);
    }

    public MaxAdView(String str, AppLovinSdk appLovinSdk, Activity activity) {
        this(str, C2382b.m29997a(activity), appLovinSdk, activity);
    }

    /* renamed from: a */
    public final void m18786a(MaxAdFormat maxAdFormat, Context context) {
        int i;
        int i2;
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        if (maxAdFormat == MaxAdFormat.MREC) {
            i2 = (int) TypedValue.applyDimension(1, AppLovinAdSize.MREC.getWidth(), displayMetrics);
            i = (int) TypedValue.applyDimension(1, AppLovinAdSize.MREC.getHeight(), displayMetrics);
        } else {
            i2 = displayMetrics.widthPixels;
            i = (int) TypedValue.applyDimension(1, (maxAdFormat == MaxAdFormat.BANNER ? AppLovinAdSize.BANNER : AppLovinAdSize.LEADER).getHeight(), displayMetrics);
        }
        TextView textView = new TextView(context);
        textView.setBackgroundColor(Color.rgb(220, 220, 220));
        textView.setTextColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
        textView.setText("AppLovin MAX Ad");
        textView.setGravity(17);
        addView(textView, i2, i);
    }

    /* renamed from: a */
    public final void m18785a(String str, MaxAdFormat maxAdFormat, int i, AppLovinSdk appLovinSdk, Activity activity) {
        if (!isInEditMode()) {
            View view = new View(activity);
            this.f21826b = view;
            view.setBackgroundColor(0);
            addView(this.f21826b);
            this.f21826b.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
            this.f21827c = getVisibility();
            this.f21825a = new MaxAdViewImpl(str, maxAdFormat, this, this.f21826b, AbstractC2426r.m29811a(appLovinSdk), activity);
            setGravity(i);
            if (getBackground() instanceof ColorDrawable) {
                setBackgroundColor(((ColorDrawable) getBackground()).getColor());
            }
            super.setBackgroundColor(0);
            return;
        }
        m18786a(maxAdFormat, activity);
    }

    public void destroy() {
        this.f21825a.destroy();
    }

    public String getPlacement() {
        return this.f21825a.getPlacement();
    }

    public void loadAd() {
        this.f21825a.loadAd();
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        C2374t.m30037g("MaxAdView", "onWindowVisibilityChanged(visibility=" + i + ")");
        if (this.f21825a != null && C2427s.m29769a(this.f21827c, i)) {
            this.f21825a.onWindowVisibilityChanged(i);
        }
        this.f21827c = i;
    }

    @Override // android.view.View
    public void setAlpha(float f) {
        C2374t.m30037g("MaxAdView", "setAlpha(alpha=" + f + ")");
        View view = this.f21826b;
        if (view != null) {
            view.setAlpha(f);
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        C2374t.m30037g("MaxAdView", "setBackgroundColor(color=" + i + ")");
        MaxAdViewImpl maxAdViewImpl = this.f21825a;
        if (maxAdViewImpl != null) {
            maxAdViewImpl.setPublisherBackgroundColor(i);
        }
        View view = this.f21826b;
        if (view != null) {
            view.setBackgroundColor(i);
        }
    }

    public void setExtraParameter(String str, String str2) {
        C2374t.m30037g("MaxAdView", "setExtraParameter(key=" + str + ", value=" + str2 + ")");
        this.f21825a.setExtraParameter(str, str2);
    }

    public void setListener(MaxAdViewAdListener maxAdViewAdListener) {
        C2374t.m30037g("MaxAdView", "setListener(listener=" + maxAdViewAdListener + ")");
        this.f21825a.setListener(maxAdViewAdListener);
    }

    public void setPlacement(String str) {
        this.f21825a.setPlacement(str);
    }

    public void startAutoRefresh() {
        this.f21825a.startAutoRefresh();
    }

    public void stopAutoRefresh() {
        this.f21825a.stopAutoRefresh();
    }

    @Override // android.view.View
    public String toString() {
        MaxAdViewImpl maxAdViewImpl = this.f21825a;
        return maxAdViewImpl != null ? maxAdViewImpl.toString() : "MaxAdView";
    }
}

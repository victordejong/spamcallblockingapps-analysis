package com.google.android.gms.ads;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.internal.ads.zzayu;
import com.google.android.gms.internal.ads.zzty;
import com.google.android.gms.internal.ads.zzxl;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/BaseAdView.class */
public class BaseAdView extends ViewGroup {

    /* renamed from: a */
    protected final zzxl f5825a;

    public BaseAdView(Context context, int i) {
        super(context);
        this.f5825a = new zzxl(this, i);
    }

    public BaseAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        this.f5825a = new zzxl(this, attributeSet, false, i);
    }

    public BaseAdView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i);
        this.f5825a = new zzxl(this, attributeSet, false, i2);
    }

    public void destroy() {
        this.f5825a.destroy();
    }

    public AdListener getAdListener() {
        return this.f5825a.getAdListener();
    }

    public AdSize getAdSize() {
        return this.f5825a.getAdSize();
    }

    public String getAdUnitId() {
        return this.f5825a.getAdUnitId();
    }

    public String getMediationAdapterClassName() {
        return this.f5825a.getMediationAdapterClassName();
    }

    public boolean isLoading() {
        return this.f5825a.isLoading();
    }

    public void loadAd(AdRequest adRequest) {
        this.f5825a.zza(adRequest.zzdg());
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View childAt = getChildAt(0);
        if (childAt != null && childAt.getVisibility() != 8) {
            int measuredWidth = childAt.getMeasuredWidth();
            int measuredHeight = childAt.getMeasuredHeight();
            int i5 = ((i3 - i) - measuredWidth) / 2;
            int i6 = ((i4 - i2) - measuredHeight) / 2;
            childAt.layout(i5, i6, measuredWidth + i5, measuredHeight + i6);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        int i4 = 0;
        View childAt = getChildAt(0);
        if (childAt == null || childAt.getVisibility() == 8) {
            AdSize adSize = null;
            try {
                adSize = getAdSize();
            } catch (NullPointerException e) {
                zzayu.zzc("Unable to retrieve ad size.", e);
            }
            if (adSize != null) {
                Context context = getContext();
                i4 = adSize.getWidthInPixels(context);
                i3 = adSize.getHeightInPixels(context);
            } else {
                i3 = 0;
            }
        } else {
            measureChild(childAt, i, i2);
            i4 = childAt.getMeasuredWidth();
            i3 = childAt.getMeasuredHeight();
        }
        setMeasuredDimension(View.resolveSize(Math.max(i4, getSuggestedMinimumWidth()), i), View.resolveSize(Math.max(i3, getSuggestedMinimumHeight()), i2));
    }

    public void pause() {
        this.f5825a.pause();
    }

    public void resume() {
        this.f5825a.resume();
    }

    public void setAdListener(AdListener adListener) {
        this.f5825a.setAdListener(adListener);
        if (adListener == null) {
            this.f5825a.zza((zzty) null);
            this.f5825a.setAppEventListener(null);
            return;
        }
        if (adListener instanceof zzty) {
            this.f5825a.zza((zzty) adListener);
        }
        if (adListener instanceof AppEventListener) {
            this.f5825a.setAppEventListener((AppEventListener) adListener);
        }
    }

    public void setAdSize(AdSize adSize) {
        this.f5825a.setAdSizes(adSize);
    }

    public void setAdUnitId(String str) {
        this.f5825a.setAdUnitId(str);
    }
}

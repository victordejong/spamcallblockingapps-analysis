package com.google.android.gms.ads.search;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.internal.ads.zzayu;
import com.google.android.gms.internal.ads.zzxl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/search/SearchAdView.class */
public final class SearchAdView extends ViewGroup {

    /* renamed from: a */
    private final zzxl f6093a;

    public SearchAdView(Context context) {
        super(context);
        this.f6093a = new zzxl(this);
    }

    public SearchAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f6093a = new zzxl(this, attributeSet, false);
    }

    public SearchAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f6093a = new zzxl(this, attributeSet, false);
    }

    public final void destroy() {
        this.f6093a.destroy();
    }

    public final AdListener getAdListener() {
        return this.f6093a.getAdListener();
    }

    public final AdSize getAdSize() {
        return this.f6093a.getAdSize();
    }

    public final String getAdUnitId() {
        return this.f6093a.getAdUnitId();
    }

    public final void loadAd(DynamicHeightSearchAdRequest dynamicHeightSearchAdRequest) {
        if (AdSize.SEARCH.equals(getAdSize())) {
            this.f6093a.zza(dynamicHeightSearchAdRequest.m6025a());
            return;
        }
        throw new IllegalStateException("You must use AdSize.SEARCH for a DynamicHeightSearchAdRequest");
    }

    public final void loadAd(SearchAdRequest searchAdRequest) {
        this.f6093a.zza(searchAdRequest.m6023a());
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onLayout(boolean z, int i, int i2, int i3, int i4) {
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
    protected final void onMeasure(int i, int i2) {
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

    public final void pause() {
        this.f6093a.pause();
    }

    public final void resume() {
        this.f6093a.resume();
    }

    public final void setAdListener(AdListener adListener) {
        this.f6093a.setAdListener(adListener);
    }

    public final void setAdSize(AdSize adSize) {
        this.f6093a.setAdSizes(adSize);
    }

    public final void setAdUnitId(String str) {
        this.f6093a.setAdUnitId(str);
    }
}

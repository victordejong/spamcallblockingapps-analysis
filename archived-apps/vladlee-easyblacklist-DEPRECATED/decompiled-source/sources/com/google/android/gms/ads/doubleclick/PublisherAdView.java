package com.google.android.gms.ads.doubleclick;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.Correlator;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzayu;
import com.google.android.gms.internal.ads.zzvu;
import com.google.android.gms.internal.ads.zzxl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/doubleclick/PublisherAdView.class */
public final class PublisherAdView extends ViewGroup {

    /* renamed from: a */
    private final zzxl f5850a;

    public PublisherAdView(Context context) {
        super(context);
        this.f5850a = new zzxl(this);
    }

    public PublisherAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5850a = new zzxl(this, attributeSet, true);
        Preconditions.checkNotNull(context, "Context cannot be null");
    }

    public PublisherAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f5850a = new zzxl(this, attributeSet, true);
    }

    public final void destroy() {
        this.f5850a.destroy();
    }

    public final AdListener getAdListener() {
        return this.f5850a.getAdListener();
    }

    public final AdSize getAdSize() {
        return this.f5850a.getAdSize();
    }

    public final AdSize[] getAdSizes() {
        return this.f5850a.getAdSizes();
    }

    public final String getAdUnitId() {
        return this.f5850a.getAdUnitId();
    }

    public final AppEventListener getAppEventListener() {
        return this.f5850a.getAppEventListener();
    }

    public final String getMediationAdapterClassName() {
        return this.f5850a.getMediationAdapterClassName();
    }

    public final OnCustomRenderedAdLoadedListener getOnCustomRenderedAdLoadedListener() {
        return this.f5850a.getOnCustomRenderedAdLoadedListener();
    }

    public final VideoController getVideoController() {
        return this.f5850a.getVideoController();
    }

    public final VideoOptions getVideoOptions() {
        return this.f5850a.getVideoOptions();
    }

    public final boolean isLoading() {
        return this.f5850a.isLoading();
    }

    public final void loadAd(PublisherAdRequest publisherAdRequest) {
        this.f5850a.zza(publisherAdRequest.zzdg());
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
        this.f5850a.pause();
    }

    public final void recordManualImpression() {
        this.f5850a.recordManualImpression();
    }

    public final void resume() {
        this.f5850a.resume();
    }

    public final void setAdListener(AdListener adListener) {
        this.f5850a.setAdListener(adListener);
    }

    public final void setAdSizes(AdSize... adSizeArr) {
        if (adSizeArr == null || adSizeArr.length <= 0) {
            throw new IllegalArgumentException("The supported ad sizes must contain at least one valid ad size.");
        }
        this.f5850a.zza(adSizeArr);
    }

    public final void setAdUnitId(String str) {
        this.f5850a.setAdUnitId(str);
    }

    public final void setAppEventListener(AppEventListener appEventListener) {
        this.f5850a.setAppEventListener(appEventListener);
    }

    @Deprecated
    public final void setCorrelator(Correlator correlator) {
    }

    public final void setManualImpressionsEnabled(boolean z) {
        this.f5850a.setManualImpressionsEnabled(z);
    }

    public final void setOnCustomRenderedAdLoadedListener(OnCustomRenderedAdLoadedListener onCustomRenderedAdLoadedListener) {
        this.f5850a.setOnCustomRenderedAdLoadedListener(onCustomRenderedAdLoadedListener);
    }

    public final void setVideoOptions(VideoOptions videoOptions) {
        this.f5850a.setVideoOptions(videoOptions);
    }

    public final boolean zza(zzvu zzvuVar) {
        return this.f5850a.zza(zzvuVar);
    }
}

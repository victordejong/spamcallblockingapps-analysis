package com.google.android.gms.ads.doubleclick;

import android.content.Context;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.Correlator;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzxn;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/doubleclick/PublisherInterstitialAd.class */
public final class PublisherInterstitialAd {

    /* renamed from: a */
    private final zzxn f5851a;

    public PublisherInterstitialAd(Context context) {
        this.f5851a = new zzxn(context, this);
        Preconditions.checkNotNull(context, "Context cannot be null");
    }

    public final AdListener getAdListener() {
        return this.f5851a.getAdListener();
    }

    public final String getAdUnitId() {
        return this.f5851a.getAdUnitId();
    }

    public final AppEventListener getAppEventListener() {
        return this.f5851a.getAppEventListener();
    }

    public final String getMediationAdapterClassName() {
        return this.f5851a.getMediationAdapterClassName();
    }

    public final OnCustomRenderedAdLoadedListener getOnCustomRenderedAdLoadedListener() {
        return this.f5851a.getOnCustomRenderedAdLoadedListener();
    }

    public final boolean isLoaded() {
        return this.f5851a.isLoaded();
    }

    public final boolean isLoading() {
        return this.f5851a.isLoading();
    }

    public final void loadAd(PublisherAdRequest publisherAdRequest) {
        this.f5851a.zza(publisherAdRequest.zzdg());
    }

    public final void setAdListener(AdListener adListener) {
        this.f5851a.setAdListener(adListener);
    }

    public final void setAdUnitId(String str) {
        this.f5851a.setAdUnitId(str);
    }

    public final void setAppEventListener(AppEventListener appEventListener) {
        this.f5851a.setAppEventListener(appEventListener);
    }

    @Deprecated
    public final void setCorrelator(Correlator correlator) {
    }

    public final void setImmersiveMode(boolean z) {
        this.f5851a.setImmersiveMode(z);
    }

    public final void setOnCustomRenderedAdLoadedListener(OnCustomRenderedAdLoadedListener onCustomRenderedAdLoadedListener) {
        this.f5851a.setOnCustomRenderedAdLoadedListener(onCustomRenderedAdLoadedListener);
    }

    public final void show() {
        this.f5851a.show();
    }
}

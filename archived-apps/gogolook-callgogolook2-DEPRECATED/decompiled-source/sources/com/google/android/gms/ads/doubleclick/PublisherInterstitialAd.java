package com.google.android.gms.ads.doubleclick;

import android.content.Context;
import androidx.annotation.RequiresPermission;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.Correlator;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p259j.p260a.C7170a6;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/doubleclick/PublisherInterstitialAd.class */
public final class PublisherInterstitialAd {
    public final C7170a6 zzvg;

    public PublisherInterstitialAd(Context context) {
        this.zzvg = new C7170a6(context, this);
        C7021t.m21289a(context, "Context cannot be null");
    }

    public final AdListener getAdListener() {
        return this.zzvg.m21013a();
    }

    public final String getAdUnitId() {
        return this.zzvg.m20999c();
    }

    public final AppEventListener getAppEventListener() {
        return this.zzvg.m20998d();
    }

    public final String getMediationAdapterClassName() {
        return this.zzvg.m20997e();
    }

    public final OnCustomRenderedAdLoadedListener getOnCustomRenderedAdLoadedListener() {
        return this.zzvg.m20996f();
    }

    public final boolean isLoaded() {
        return this.zzvg.m20995g();
    }

    public final boolean isLoading() {
        return this.zzvg.m20994h();
    }

    @RequiresPermission("android.permission.INTERNET")
    public final void loadAd(PublisherAdRequest publisherAdRequest) {
        this.zzvg.m21006a(publisherAdRequest.zzay());
    }

    public final void setAdListener(AdListener adListener) {
        this.zzvg.m21012a(adListener);
    }

    public final void setAdUnitId(String str) {
        this.zzvg.m21004a(str);
    }

    public final void setAppEventListener(AppEventListener appEventListener) {
        this.zzvg.m21010a(appEventListener);
    }

    public final void setCorrelator(Correlator correlator) {
        this.zzvg.m21011a(correlator);
    }

    public final void setImmersiveMode(boolean z) {
        this.zzvg.m21003a(z);
    }

    public final void setOnCustomRenderedAdLoadedListener(OnCustomRenderedAdLoadedListener onCustomRenderedAdLoadedListener) {
        this.zzvg.m21009a(onCustomRenderedAdLoadedListener);
    }

    public final void show() {
        this.zzvg.m20993i();
    }
}

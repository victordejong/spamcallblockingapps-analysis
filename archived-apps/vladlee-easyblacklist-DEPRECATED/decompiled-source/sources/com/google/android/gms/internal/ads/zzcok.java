package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Collections;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcok.class */
public final class zzcok extends zzvt {

    /* renamed from: a */
    private final Context f13447a;

    /* renamed from: b */
    private final zzvh f13448b;

    /* renamed from: c */
    private final zzczu f13449c;

    /* renamed from: d */
    private final zzbkk f13450d;

    /* renamed from: e */
    private final ViewGroup f13451e;

    public zzcok(Context context, zzvh zzvhVar, zzczu zzczuVar, zzbkk zzbkkVar) {
        this.f13447a = context;
        this.f13448b = zzvhVar;
        this.f13449c = zzczuVar;
        this.f13450d = zzbkkVar;
        FrameLayout frameLayout = new FrameLayout(this.f13447a);
        frameLayout.removeAllViews();
        frameLayout.addView(this.f13450d.zzaga(), zzq.zzks().zzwp());
        frameLayout.setMinimumHeight(zzjz().heightPixels);
        frameLayout.setMinimumWidth(zzjz().widthPixels);
        this.f13451e = frameLayout;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void destroy() {
        Preconditions.checkMainThread("destroy must be called on the main UI thread.");
        this.f13450d.destroy();
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final Bundle getAdMetadata() {
        zzavs.zzey("getAdMetadata is not supported in Publisher AdView returned by AdLoader.");
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final String getAdUnitId() {
        return this.f13449c.zzgmm;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final String getMediationAdapterClassName() {
        if (this.f13450d.zzags() != null) {
            return this.f13450d.zzags().getMediationAdapterClassName();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final zzxb getVideoController() {
        return this.f13450d.getVideoController();
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final boolean isLoading() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final boolean isReady() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void pause() {
        Preconditions.checkMainThread("destroy must be called on the main UI thread.");
        this.f13450d.zzagr().zzbv(null);
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void resume() {
        Preconditions.checkMainThread("destroy must be called on the main UI thread.");
        this.f13450d.zzagr().zzbw(null);
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void setImmersiveMode(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void setManualImpressionsEnabled(boolean z) {
        zzavs.zzey("setManualImpressionsEnabled is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void setUserId(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void showInterstitial() {
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void stopLoading() {
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzaak zzaakVar) {
        zzavs.zzey("setOnCustomRenderedAdLoadedListener is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzaoy zzaoyVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzape zzapeVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzaro zzaroVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzrg zzrgVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzuj zzujVar) {
        Preconditions.checkMainThread("setAdSize must be called on the main UI thread.");
        zzbkk zzbkkVar = this.f13450d;
        if (zzbkkVar != null) {
            zzbkkVar.zza(this.f13451e, zzujVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzuo zzuoVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzvg zzvgVar) {
        zzavs.zzey("setAdClickListener is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzvh zzvhVar) {
        zzavs.zzey("setAdListener is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzvx zzvxVar) {
        zzavs.zzey("setAdMetadataListener is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzwc zzwcVar) {
        zzavs.zzey("setAppEventListener is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzwi zzwiVar) {
        zzavs.zzey("setCorrelationIdProvider is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzxh zzxhVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zza(zzyw zzywVar) {
        zzavs.zzey("setVideoOptions is not supported in Publisher AdView returned by AdLoader.");
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final boolean zza(zzug zzugVar) {
        zzavs.zzey("loadAd is not supported for a Publisher AdView returned from AdLoader.");
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zzbr(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final IObjectWrapper zzjx() {
        return ObjectWrapper.wrap(this.f13451e);
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final void zzjy() {
        this.f13450d.zzjy();
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final zzuj zzjz() {
        Preconditions.checkMainThread("getAdSize must be called on the main UI thread.");
        return zzczy.zza(this.f13447a, Collections.singletonList(this.f13450d.zzafz()));
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final String zzka() {
        if (this.f13450d.zzags() != null) {
            return this.f13450d.zzags().getMediationAdapterClassName();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final zzxa zzkb() {
        return this.f13450d.zzags();
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final zzwc zzkc() {
        return this.f13449c.zzgmr;
    }

    @Override // com.google.android.gms.internal.ads.zzvu
    public final zzvh zzkd() {
        return this.f13448b;
    }
}

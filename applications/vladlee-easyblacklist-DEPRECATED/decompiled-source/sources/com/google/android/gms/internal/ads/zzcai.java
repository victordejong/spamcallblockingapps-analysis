package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcai.class */
public final class zzcai extends zzaef {

    /* renamed from: a */
    private final String f12814a;

    /* renamed from: b */
    private final zzbwk f12815b;

    /* renamed from: c */
    private final zzbws f12816c;

    public zzcai(String str, zzbwk zzbwkVar, zzbws zzbwsVar) {
        this.f12814a = str;
        this.f12815b = zzbwkVar;
        this.f12816c = zzbwsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaeg
    public final void cancelUnconfirmedClick() {
        this.f12815b.cancelUnconfirmedClick();
    }

    @Override // com.google.android.gms.internal.ads.zzaeg
    public final void destroy() {
        this.f12815b.destroy();
    }

    @Override // com.google.android.gms.internal.ads.zzaeg
    public final String getAdvertiser() {
        return this.f12816c.getAdvertiser();
    }

    @Override // com.google.android.gms.internal.ads.zzaeg
    public final String getBody() {
        return this.f12816c.getBody();
    }

    @Override // com.google.android.gms.internal.ads.zzaeg
    public final String getCallToAction() {
        return this.f12816c.getCallToAction();
    }

    @Override // com.google.android.gms.internal.ads.zzaeg
    public final Bundle getExtras() {
        return this.f12816c.getExtras();
    }

    @Override // com.google.android.gms.internal.ads.zzaeg
    public final String getHeadline() {
        return this.f12816c.getHeadline();
    }

    @Override // com.google.android.gms.internal.ads.zzaeg
    public final List<?> getImages() {
        return this.f12816c.getImages();
    }

    @Override // com.google.android.gms.internal.ads.zzaeg
    public final String getMediationAdapterClassName() {
        return this.f12814a;
    }

    @Override // com.google.android.gms.internal.ads.zzaeg
    public final List<?> getMuteThisAdReasons() {
        return isCustomMuteThisAdEnabled() ? this.f12816c.getMuteThisAdReasons() : Collections.emptyList();
    }

    @Override // com.google.android.gms.internal.ads.zzaeg
    public final String getPrice() {
        return this.f12816c.getPrice();
    }

    @Override // com.google.android.gms.internal.ads.zzaeg
    public final double getStarRating() {
        return this.f12816c.getStarRating();
    }

    @Override // com.google.android.gms.internal.ads.zzaeg
    public final String getStore() {
        return this.f12816c.getStore();
    }

    @Override // com.google.android.gms.internal.ads.zzaeg
    public final zzxb getVideoController() {
        return this.f12816c.getVideoController();
    }

    @Override // com.google.android.gms.internal.ads.zzaeg
    public final boolean isCustomClickGestureEnabled() {
        return this.f12815b.isCustomClickGestureEnabled();
    }

    @Override // com.google.android.gms.internal.ads.zzaeg
    public final boolean isCustomMuteThisAdEnabled() {
        return !this.f12816c.getMuteThisAdReasons().isEmpty() && this.f12816c.zzajd() != null;
    }

    @Override // com.google.android.gms.internal.ads.zzaeg
    public final void performClick(Bundle bundle) {
        this.f12815b.zzf(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzaeg
    public final void recordCustomClickGesture() {
        this.f12815b.recordCustomClickGesture();
    }

    @Override // com.google.android.gms.internal.ads.zzaeg
    public final boolean recordImpression(Bundle bundle) {
        return this.f12815b.zzh(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzaeg
    public final void reportTouchEvent(Bundle bundle) {
        this.f12815b.zzg(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzaeg
    public final void zza(zzaeb zzaebVar) {
        this.f12815b.zza(zzaebVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaeg
    public final void zza(zzwn zzwnVar) {
        this.f12815b.zza(zzwnVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaeg
    public final void zza(zzwr zzwrVar) {
        this.f12815b.zza(zzwrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaeg
    public final zzxa zzkb() {
        if (!((Boolean) zzve.zzoy().zzd(zzzn.zzcrf)).booleanValue()) {
            return null;
        }
        return this.f12815b.zzags();
    }

    @Override // com.google.android.gms.internal.ads.zzaeg
    public final IObjectWrapper zzrf() {
        return ObjectWrapper.wrap(this.f12815b);
    }

    @Override // com.google.android.gms.internal.ads.zzaeg
    public final zzaci zzrg() {
        return this.f12816c.zzrg();
    }

    @Override // com.google.android.gms.internal.ads.zzaeg
    public final zzaca zzrh() {
        return this.f12816c.zzrh();
    }

    @Override // com.google.android.gms.internal.ads.zzaeg
    public final IObjectWrapper zzri() {
        return this.f12816c.zzri();
    }

    @Override // com.google.android.gms.internal.ads.zzaeg
    public final void zzrp() {
        this.f12815b.zzrp();
    }

    @Override // com.google.android.gms.internal.ads.zzaeg
    public final zzacd zzrq() {
        return this.f12815b.zzaix().zzrq();
    }
}

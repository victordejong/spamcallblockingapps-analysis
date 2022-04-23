package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcab.class */
public final class zzcab extends zzacz {

    /* renamed from: a */
    private final String f12794a;

    /* renamed from: b */
    private final zzbwk f12795b;

    /* renamed from: c */
    private final zzbws f12796c;

    public zzcab(String str, zzbwk zzbwkVar, zzbws zzbwsVar) {
        this.f12794a = str;
        this.f12795b = zzbwkVar;
        this.f12796c = zzbwsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final void destroy() {
        this.f12795b.destroy();
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final String getAdvertiser() {
        return this.f12796c.getAdvertiser();
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final String getBody() {
        return this.f12796c.getBody();
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final String getCallToAction() {
        return this.f12796c.getCallToAction();
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final Bundle getExtras() {
        return this.f12796c.getExtras();
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final String getHeadline() {
        return this.f12796c.getHeadline();
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final List<?> getImages() {
        return this.f12796c.getImages();
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final String getMediationAdapterClassName() {
        return this.f12794a;
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final zzxb getVideoController() {
        return this.f12796c.getVideoController();
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final void performClick(Bundle bundle) {
        this.f12795b.zzf(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final boolean recordImpression(Bundle bundle) {
        return this.f12795b.zzh(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final void reportTouchEvent(Bundle bundle) {
        this.f12795b.zzg(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final IObjectWrapper zzrf() {
        return ObjectWrapper.wrap(this.f12795b);
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final zzaca zzrh() {
        return this.f12796c.zzrh();
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final IObjectWrapper zzri() {
        return this.f12796c.zzri();
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final zzaci zzrj() {
        return this.f12796c.zzrj();
    }
}

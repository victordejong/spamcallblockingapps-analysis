package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbzz.class */
public final class zzbzz extends zzacv {

    /* renamed from: a */
    private final String f12782a;

    /* renamed from: b */
    private final zzbwk f12783b;

    /* renamed from: c */
    private final zzbws f12784c;

    public zzbzz(String str, zzbwk zzbwkVar, zzbws zzbwsVar) {
        this.f12782a = str;
        this.f12783b = zzbwkVar;
        this.f12784c = zzbwsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzacw
    public final void destroy() {
        this.f12783b.destroy();
    }

    @Override // com.google.android.gms.internal.ads.zzacw
    public final String getBody() {
        return this.f12784c.getBody();
    }

    @Override // com.google.android.gms.internal.ads.zzacw
    public final String getCallToAction() {
        return this.f12784c.getCallToAction();
    }

    @Override // com.google.android.gms.internal.ads.zzacw
    public final Bundle getExtras() {
        return this.f12784c.getExtras();
    }

    @Override // com.google.android.gms.internal.ads.zzacw
    public final String getHeadline() {
        return this.f12784c.getHeadline();
    }

    @Override // com.google.android.gms.internal.ads.zzacw
    public final List<?> getImages() {
        return this.f12784c.getImages();
    }

    @Override // com.google.android.gms.internal.ads.zzacw
    public final String getMediationAdapterClassName() {
        return this.f12782a;
    }

    @Override // com.google.android.gms.internal.ads.zzacw
    public final String getPrice() {
        return this.f12784c.getPrice();
    }

    @Override // com.google.android.gms.internal.ads.zzacw
    public final double getStarRating() {
        return this.f12784c.getStarRating();
    }

    @Override // com.google.android.gms.internal.ads.zzacw
    public final String getStore() {
        return this.f12784c.getStore();
    }

    @Override // com.google.android.gms.internal.ads.zzacw
    public final zzxb getVideoController() {
        return this.f12784c.getVideoController();
    }

    @Override // com.google.android.gms.internal.ads.zzacw
    public final void performClick(Bundle bundle) {
        this.f12783b.zzf(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzacw
    public final boolean recordImpression(Bundle bundle) {
        return this.f12783b.zzh(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzacw
    public final void reportTouchEvent(Bundle bundle) {
        this.f12783b.zzg(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzacw
    public final IObjectWrapper zzrf() {
        return ObjectWrapper.wrap(this.f12783b);
    }

    @Override // com.google.android.gms.internal.ads.zzacw
    public final zzaci zzrg() {
        return this.f12784c.zzrg();
    }

    @Override // com.google.android.gms.internal.ads.zzacw
    public final zzaca zzrh() {
        return this.f12784c.zzrh();
    }

    @Override // com.google.android.gms.internal.ads.zzacw
    public final IObjectWrapper zzri() {
        return this.f12784c.zzri();
    }
}

package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzyl.class */
public final class zzyl extends zzark {

    /* renamed from: a */
    private zzaro f15689a;

    @Override // com.google.android.gms.internal.ads.zzarl
    public final void destroy() {
    }

    @Override // com.google.android.gms.internal.ads.zzarl
    public final Bundle getAdMetadata() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzarl
    public final String getMediationAdapterClassName() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzarl
    public final boolean isLoaded() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzarl
    public final void pause() {
    }

    @Override // com.google.android.gms.internal.ads.zzarl
    public final void resume() {
    }

    @Override // com.google.android.gms.internal.ads.zzarl
    public final void setAppPackageName(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzarl
    public final void setCustomData(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzarl
    public final void setImmersiveMode(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzarl
    public final void setUserId(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzarl
    public final void show() {
    }

    @Override // com.google.android.gms.internal.ads.zzarl
    public final void zza(zzarj zzarjVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzarl
    public final void zza(zzaro zzaroVar) {
        this.f15689a = zzaroVar;
    }

    @Override // com.google.android.gms.internal.ads.zzarl
    public final void zza(zzaru zzaruVar) {
        zzayu.zzex("This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date.");
        zzayk.zzyu.post(new ash(this));
    }

    @Override // com.google.android.gms.internal.ads.zzarl
    public final void zza(zzvx zzvxVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzarl
    public final void zzi(IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.internal.ads.zzarl
    public final void zzj(IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.internal.ads.zzarl
    public final void zzk(IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.internal.ads.zzarl
    public final zzxa zzkb() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzarl
    public final void zzl(IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.internal.ads.zzarl
    public final boolean zzqa() {
        return false;
    }
}

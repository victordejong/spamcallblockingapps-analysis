package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcol.class */
public final class zzcol extends zzvl {

    /* renamed from: a */
    private final zzcot f13452a;

    public zzcol(Context context, zzbfx zzbfxVar, zzczw zzczwVar, zzbwz zzbwzVar, zzvh zzvhVar) {
        zzcov zzcovVar = new zzcov(zzbwzVar);
        zzcovVar.zzc(zzvhVar);
        this.f13452a = new zzcot(new zzcpb(zzbfxVar, context, zzcovVar, zzczwVar), zzczwVar.zzaor());
    }

    @Override // com.google.android.gms.internal.ads.zzvm
    public final String getMediationAdapterClassName() {
        String mediationAdapterClassName;
        synchronized (this) {
            mediationAdapterClassName = this.f13452a.getMediationAdapterClassName();
        }
        return mediationAdapterClassName;
    }

    @Override // com.google.android.gms.internal.ads.zzvm
    public final boolean isLoading() {
        boolean isLoading;
        synchronized (this) {
            isLoading = this.f13452a.isLoading();
        }
        return isLoading;
    }

    @Override // com.google.android.gms.internal.ads.zzvm
    public final void zza(zzug zzugVar, int i) {
        synchronized (this) {
            this.f13452a.zza(zzugVar, i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvm
    public final void zzb(zzug zzugVar) {
        this.f13452a.zza(zzugVar, 1);
    }

    @Override // com.google.android.gms.internal.ads.zzvm
    public final String zzka() {
        String zzka;
        synchronized (this) {
            zzka = this.f13452a.zzka();
        }
        return zzka;
    }
}

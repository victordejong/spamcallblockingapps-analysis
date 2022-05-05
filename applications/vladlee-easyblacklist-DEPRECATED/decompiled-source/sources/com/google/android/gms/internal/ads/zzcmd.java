package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcmd.class */
public final class zzcmd extends zzcnd {

    /* renamed from: a */
    private zzbte f13347a;

    /* renamed from: b */
    private zzboz f13348b;

    public zzcmd(zzboq zzboqVar, zzbpd zzbpdVar, zzbpm zzbpmVar, zzbpw zzbpwVar, zzboz zzbozVar, zzbra zzbraVar, zzbtj zzbtjVar, zzbqj zzbqjVar, zzbte zzbteVar) {
        super(zzboqVar, zzbpdVar, zzbpmVar, zzbpwVar, zzbraVar, zzbqjVar, zzbtjVar);
        this.f13347a = zzbteVar;
        this.f13348b = zzbozVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcnd, com.google.android.gms.internal.ads.zzali
    public final void onVideoEnd() {
        this.f13347a.zzrt();
    }

    @Override // com.google.android.gms.internal.ads.zzcnd, com.google.android.gms.internal.ads.zzali
    public final void zza(zzasf zzasfVar) {
        this.f13347a.zza(new zzasd(zzasfVar.getType(), zzasfVar.getAmount()));
    }

    @Override // com.google.android.gms.internal.ads.zzcnd, com.google.android.gms.internal.ads.zzali
    public final void zzb(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.ads.zzcnd, com.google.android.gms.internal.ads.zzali
    public final void zzb(zzasd zzasdVar) {
        this.f13347a.zza(zzasdVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcnd, com.google.android.gms.internal.ads.zzali
    public final void zzco(int i) {
        this.f13348b.zzco(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcnd, com.google.android.gms.internal.ads.zzali
    public final void zzss() {
        this.f13347a.zzrs();
    }

    @Override // com.google.android.gms.internal.ads.zzcnd, com.google.android.gms.internal.ads.zzali
    public final void zzst() {
        this.f13347a.zzrt();
    }
}

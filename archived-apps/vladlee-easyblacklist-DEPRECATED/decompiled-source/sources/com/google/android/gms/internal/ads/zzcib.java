package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzq;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcib.class */
public final class zzcib implements zzdcx {

    /* renamed from: a */
    private final zzchz f13169a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcib(zzchz zzchzVar) {
        this.f13169a = zzchzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdcx
    public final void zza(zzdco zzdcoVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzdcx
    public final void zza(zzdco zzdcoVar, String str, Throwable th) {
        if (((Boolean) zzve.zzoy().zzd(zzzn.zzcqf)).booleanValue() && zzdco.RENDERER == zzdcoVar && this.f13169a.zzalz() != 0) {
            this.f13169a.zzer(zzq.zzkx().elapsedRealtime() - this.f13169a.zzalz());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdcx
    public final void zzb(zzdco zzdcoVar, String str) {
        if (((Boolean) zzve.zzoy().zzd(zzzn.zzcqf)).booleanValue() && zzdco.RENDERER == zzdcoVar) {
            this.f13169a.zzfe(zzq.zzkx().elapsedRealtime());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdcx
    public final void zzc(zzdco zzdcoVar, String str) {
        if (((Boolean) zzve.zzoy().zzd(zzzn.zzcqf)).booleanValue() && zzdco.RENDERER == zzdcoVar && this.f13169a.zzalz() != 0) {
            this.f13169a.zzer(zzq.zzkx().elapsedRealtime() - this.f13169a.zzalz());
        }
    }
}

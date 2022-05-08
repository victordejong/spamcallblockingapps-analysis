package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcdf.class */
public final class zzcdf implements zzdcx {

    /* renamed from: a */
    private Map<zzdco, zzcdh> f12965a;

    /* renamed from: b */
    private zzsm f12966b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcdf(zzsm zzsmVar, Map<zzdco, zzcdh> map) {
        this.f12965a = map;
        this.f12966b = zzsmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdcx
    public final void zza(zzdco zzdcoVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzdcx
    public final void zza(zzdco zzdcoVar, String str, Throwable th) {
        if (this.f12965a.containsKey(zzdcoVar)) {
            this.f12966b.zza(this.f12965a.get(zzdcoVar).zzfsl);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdcx
    public final void zzb(zzdco zzdcoVar, String str) {
        if (this.f12965a.containsKey(zzdcoVar)) {
            this.f12966b.zza(this.f12965a.get(zzdcoVar).zzfsj);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdcx
    public final void zzc(zzdco zzdcoVar, String str) {
        if (this.f12965a.containsKey(zzdcoVar)) {
            this.f12966b.zza(this.f12965a.get(zzdcoVar).zzfsk);
        }
    }
}

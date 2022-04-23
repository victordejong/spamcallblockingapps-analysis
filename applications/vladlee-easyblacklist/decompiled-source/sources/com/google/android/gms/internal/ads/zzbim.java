package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbim.class */
public final class zzbim implements zzdgf<zzczt, zzczt> {

    /* renamed from: a */
    private Map<String, zzbil> f11919a;

    public zzbim(Map<String, zzbil> map) {
        this.f11919a = map;
    }

    @Override // com.google.android.gms.internal.ads.zzdgf
    public final /* synthetic */ zzdhe<zzczt> zzf(zzczt zzcztVar) {
        zzczt zzcztVar2 = zzcztVar;
        for (zzczq zzczqVar : zzcztVar2.zzgmi.zzgmg) {
            if (this.f11919a.containsKey(zzczqVar.name)) {
                this.f11919a.get(zzczqVar.name).zzk(zzczqVar.zzgmd);
            }
        }
        return zzdgs.zzaj(zzcztVar2);
    }
}

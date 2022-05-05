package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbmj.class */
public final class zzbmj {
    public final List<? extends zzdhe<? extends zzbmd>> zzffu;

    public zzbmj(zzbmd zzbmdVar) {
        this.zzffu = Collections.singletonList(zzdgs.zzaj(zzbmdVar));
    }

    public zzbmj(List<? extends zzdhe<? extends zzbmd>> list) {
        this.zzffu = list;
    }

    public static zzcio<zzbmj> zza(zzcio<? extends zzbmd> zzcioVar) {
        return new zzcin(zzcioVar, C2031lg.f10174a);
    }

    public static zzcio<zzbmj> zza(zzckr<? extends zzbmd> zzckrVar) {
        return new zzcin(zzckrVar, C2032lh.f10175a);
    }
}

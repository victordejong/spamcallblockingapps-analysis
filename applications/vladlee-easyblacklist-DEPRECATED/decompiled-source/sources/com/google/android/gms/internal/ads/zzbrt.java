package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbrt.class */
public final class zzbrt implements zzdxg<Set<zzbsu<zzty>>> {

    /* renamed from: a */
    private final zzbrm f12302a;

    private zzbrt(zzbrm zzbrmVar) {
        this.f12302a = zzbrmVar;
    }

    public static zzbrt zzk(zzbrm zzbrmVar) {
        return new zzbrt(zzbrmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (Set) zzdxm.zza(this.f12302a.zzahs(), "Cannot return null from a non-@Nullable @Provides method");
    }
}

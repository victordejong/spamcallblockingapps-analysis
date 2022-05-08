package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbry.class */
public final class zzbry implements zzdxg<Set<zzbsu<zzbpe>>> {

    /* renamed from: a */
    private final zzbrm f12307a;

    private zzbry(zzbrm zzbrmVar) {
        this.f12307a = zzbrmVar;
    }

    public static zzbry zzo(zzbrm zzbrmVar) {
        return new zzbry(zzbrmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (Set) zzdxm.zza(this.f12307a.zzaht(), "Cannot return null from a non-@Nullable @Provides method");
    }
}

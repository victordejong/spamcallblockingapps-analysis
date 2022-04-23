package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbrq.class */
public final class zzbrq implements zzdxg<zzbou> {

    /* renamed from: a */
    private final zzbrm f12298a;

    /* renamed from: b */
    private final zzdxp<Set<zzbsu<zzbow>>> f12299b;

    private zzbrq(zzbrm zzbrmVar, zzdxp<Set<zzbsu<zzbow>>> zzdxpVar) {
        this.f12298a = zzbrmVar;
        this.f12299b = zzdxpVar;
    }

    public static zzbrq zza(zzbrm zzbrmVar, zzdxp<Set<zzbsu<zzbow>>> zzdxpVar) {
        return new zzbrq(zzbrmVar, zzdxpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzbou) zzdxm.zza(this.f12298a.zzc(this.f12299b.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}

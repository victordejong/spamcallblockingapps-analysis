package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbuc.class */
public final class zzbuc implements zzdxg<Set<zzbsu<zzbov>>> {

    /* renamed from: a */
    private final zzbtv f12399a;

    /* renamed from: b */
    private final zzdxp<zzbva> f12400b;

    private zzbuc(zzbtv zzbtvVar, zzdxp<zzbva> zzdxpVar) {
        this.f12399a = zzbtvVar;
        this.f12400b = zzdxpVar;
    }

    public static zzbuc zza(zzbtv zzbtvVar, zzdxp<zzbva> zzdxpVar) {
        return new zzbuc(zzbtvVar, zzdxpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (Set) zzdxm.zza(this.f12399a.zza(this.f12400b.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}

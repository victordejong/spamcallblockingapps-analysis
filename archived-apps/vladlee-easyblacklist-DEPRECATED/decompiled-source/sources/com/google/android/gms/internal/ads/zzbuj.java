package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbuj.class */
public final class zzbuj implements zzdxg<zzbsu<zzbrb>> {

    /* renamed from: a */
    private final zzbtv f12413a;

    /* renamed from: b */
    private final zzdxp<Executor> f12414b;

    private zzbuj(zzbtv zzbtvVar, zzdxp<Executor> zzdxpVar) {
        this.f12413a = zzbtvVar;
        this.f12414b = zzdxpVar;
    }

    public static zzbuj zzd(zzbtv zzbtvVar, zzdxp<Executor> zzdxpVar) {
        return new zzbuj(zzbtvVar, zzdxpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzbsu) zzdxm.zza(this.f12413a.zzb(this.f12414b.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}

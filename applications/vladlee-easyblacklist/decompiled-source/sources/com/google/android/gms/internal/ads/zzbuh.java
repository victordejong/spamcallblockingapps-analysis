package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbuh.class */
public final class zzbuh implements zzdxg<zzbsu<zzbov>> {

    /* renamed from: a */
    private final zzbtv f12410a;

    /* renamed from: b */
    private final zzdxp<zzbve> f12411b;

    /* renamed from: c */
    private final zzdxp<Executor> f12412c;

    private zzbuh(zzbtv zzbtvVar, zzdxp<zzbve> zzdxpVar, zzdxp<Executor> zzdxpVar2) {
        this.f12410a = zzbtvVar;
        this.f12411b = zzdxpVar;
        this.f12412c = zzdxpVar2;
    }

    public static zzbuh zzb(zzbtv zzbtvVar, zzdxp<zzbve> zzdxpVar, zzdxp<Executor> zzdxpVar2) {
        return new zzbuh(zzbtvVar, zzdxpVar, zzdxpVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzbsu) zzdxm.zza(new zzbsu(this.f12411b.get(), this.f12412c.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}

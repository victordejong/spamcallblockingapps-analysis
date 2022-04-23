package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcfp.class */
public final class zzcfp implements zzdxg<zzbsu<zzbqx>> {

    /* renamed from: a */
    private final zzdxp<C2207ru> f13090a;

    /* renamed from: b */
    private final zzdxp<Executor> f13091b;

    private zzcfp(zzdxp<C2207ru> zzdxpVar, zzdxp<Executor> zzdxpVar2) {
        this.f13090a = zzdxpVar;
        this.f13091b = zzdxpVar2;
    }

    public static zzcfp zzac(zzdxp<C2207ru> zzdxpVar, zzdxp<Executor> zzdxpVar2) {
        return new zzcfp(zzdxpVar, zzdxpVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzbsu) zzdxm.zza(new zzbsu(this.f13090a.get(), this.f13091b.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}

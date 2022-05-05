package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcdo.class */
public final class zzcdo implements zzdxg<zzbsu<zzbow>> {

    /* renamed from: a */
    private final zzdxp<zzcdj> f12981a;

    /* renamed from: b */
    private final zzdxp<Executor> f12982b;

    private zzcdo(zzdxp<zzcdj> zzdxpVar, zzdxp<Executor> zzdxpVar2) {
        this.f12981a = zzdxpVar;
        this.f12982b = zzdxpVar2;
    }

    public static zzcdo zzy(zzdxp<zzcdj> zzdxpVar, zzdxp<Executor> zzdxpVar2) {
        return new zzcdo(zzdxpVar, zzdxpVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzbsu) zzdxm.zza(new zzbsu(this.f12981a.get(), this.f12982b.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}

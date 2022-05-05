package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcdl.class */
public final class zzcdl implements zzdxg<zzbsu<zzbqx>> {

    /* renamed from: a */
    private final zzdxp<zzcdj> f12975a;

    /* renamed from: b */
    private final zzdxp<Executor> f12976b;

    private zzcdl(zzdxp<zzcdj> zzdxpVar, zzdxp<Executor> zzdxpVar2) {
        this.f12975a = zzdxpVar;
        this.f12976b = zzdxpVar2;
    }

    public static zzcdl zzv(zzdxp<zzcdj> zzdxpVar, zzdxp<Executor> zzdxpVar2) {
        return new zzcdl(zzdxpVar, zzdxpVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzbsu) zzdxm.zza(new zzbsu(this.f12975a.get(), this.f12976b.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}

package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcdq.class */
public final class zzcdq implements zzdxg<zzbsu<zzdcx>> {

    /* renamed from: a */
    private final zzdxp<zzcdu> f12984a;

    /* renamed from: b */
    private final zzdxp<Executor> f12985b;

    private zzcdq(zzdxp<zzcdu> zzdxpVar, zzdxp<Executor> zzdxpVar2) {
        this.f12984a = zzdxpVar;
        this.f12985b = zzdxpVar2;
    }

    public static zzcdq zzz(zzdxp<zzcdu> zzdxpVar, zzdxp<Executor> zzdxpVar2) {
        return new zzcdq(zzdxpVar, zzdxpVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzbsu) zzdxm.zza(new zzbsu(this.f12984a.get(), this.f12985b.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}

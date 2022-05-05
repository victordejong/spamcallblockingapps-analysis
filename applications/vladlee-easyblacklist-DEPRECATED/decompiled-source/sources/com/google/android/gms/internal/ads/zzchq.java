package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzchq.class */
public final class zzchq implements zzdxg<zzbsu<zzbow>> {

    /* renamed from: a */
    private final zzdxp<zzchx> f13148a;

    /* renamed from: b */
    private final zzdxp<Executor> f13149b;

    private zzchq(zzdxp<zzchx> zzdxpVar, zzdxp<Executor> zzdxpVar2) {
        this.f13148a = zzdxpVar;
        this.f13149b = zzdxpVar2;
    }

    public static zzchq zzah(zzdxp<zzchx> zzdxpVar, zzdxp<Executor> zzdxpVar2) {
        return new zzchq(zzdxpVar, zzdxpVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzbsu) zzdxm.zza(new zzbsu(this.f13148a.get(), this.f13149b.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}

package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzchp.class */
public final class zzchp implements zzdxg<zzbsu<zzbqb>> {

    /* renamed from: a */
    private final zzdxp<zzchx> f13146a;

    /* renamed from: b */
    private final zzdxp<Executor> f13147b;

    private zzchp(zzdxp<zzchx> zzdxpVar, zzdxp<Executor> zzdxpVar2) {
        this.f13146a = zzdxpVar;
        this.f13147b = zzdxpVar2;
    }

    public static zzchp zzag(zzdxp<zzchx> zzdxpVar, zzdxp<Executor> zzdxpVar2) {
        return new zzchp(zzdxpVar, zzdxpVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzbsu) zzdxm.zza(new zzbsu(this.f13146a.get(), this.f13147b.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}

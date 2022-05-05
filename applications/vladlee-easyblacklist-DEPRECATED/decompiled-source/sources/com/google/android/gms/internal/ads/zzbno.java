package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbno.class */
public final class zzbno implements zzdxg<zzbsu<zzbov>> {

    /* renamed from: a */
    private final zzdxp<zzbiw> f12190a;

    /* renamed from: b */
    private final zzdxp<Executor> f12191b;

    private zzbno(zzdxp<zzbiw> zzdxpVar, zzdxp<Executor> zzdxpVar2) {
        this.f12190a = zzdxpVar;
        this.f12191b = zzdxpVar2;
    }

    public static zzbno zzf(zzdxp<zzbiw> zzdxpVar, zzdxp<Executor> zzdxpVar2) {
        return new zzbno(zzdxpVar, zzdxpVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzbsu) zzdxm.zza(new zzbsu(this.f12190a.get(), this.f12191b.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}

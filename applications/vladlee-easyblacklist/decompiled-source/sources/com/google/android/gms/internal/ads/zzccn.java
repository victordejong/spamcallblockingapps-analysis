package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzccn.class */
public final class zzccn implements zzdxg<zzbsu<zzbri>> {

    /* renamed from: a */
    private final zzdxp<zzccw> f12939a;

    /* renamed from: b */
    private final zzdxp<Executor> f12940b;

    private zzccn(zzdxp<zzccw> zzdxpVar, zzdxp<Executor> zzdxpVar2) {
        this.f12939a = zzdxpVar;
        this.f12940b = zzdxpVar2;
    }

    public static zzccn zzo(zzdxp<zzccw> zzdxpVar, zzdxp<Executor> zzdxpVar2) {
        return new zzccn(zzdxpVar, zzdxpVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzbsu) zzdxm.zza(new zzbsu(this.f12939a.get(), this.f12940b.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}

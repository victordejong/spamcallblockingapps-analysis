package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzchs.class */
public final class zzchs implements zzdxg<zzbsu<zzdcx>> {

    /* renamed from: a */
    private final zzdxp<zzcib> f13150a;

    /* renamed from: b */
    private final zzdxp<Executor> f13151b;

    private zzchs(zzdxp<zzcib> zzdxpVar, zzdxp<Executor> zzdxpVar2) {
        this.f13150a = zzdxpVar;
        this.f13151b = zzdxpVar2;
    }

    public static zzchs zzai(zzdxp<zzcib> zzdxpVar, zzdxp<Executor> zzdxpVar2) {
        return new zzchs(zzdxpVar, zzdxpVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzbsu) zzdxm.zza(new zzbsu(this.f13150a.get(), this.f13151b.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}

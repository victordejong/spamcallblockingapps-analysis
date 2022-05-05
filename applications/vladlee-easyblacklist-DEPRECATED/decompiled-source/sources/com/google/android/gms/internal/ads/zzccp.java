package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzccp.class */
public final class zzccp implements zzdxg<zzbsu<zzbqx>> {

    /* renamed from: a */
    private final zzdxp<zzccw> f12943a;

    /* renamed from: b */
    private final zzdxp<Executor> f12944b;

    private zzccp(zzdxp<zzccw> zzdxpVar, zzdxp<Executor> zzdxpVar2) {
        this.f12943a = zzdxpVar;
        this.f12944b = zzdxpVar2;
    }

    public static zzccp zzq(zzdxp<zzccw> zzdxpVar, zzdxp<Executor> zzdxpVar2) {
        return new zzccp(zzdxpVar, zzdxpVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzbsu) zzdxm.zza(new zzbsu(this.f12943a.get(), this.f12944b.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}

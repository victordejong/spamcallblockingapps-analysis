package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcco.class */
public final class zzcco implements zzdxg<zzbsu<zzbpe>> {

    /* renamed from: a */
    private final zzdxp<zzccw> f12941a;

    /* renamed from: b */
    private final zzdxp<Executor> f12942b;

    private zzcco(zzdxp<zzccw> zzdxpVar, zzdxp<Executor> zzdxpVar2) {
        this.f12941a = zzdxpVar;
        this.f12942b = zzdxpVar2;
    }

    public static zzcco zzp(zzdxp<zzccw> zzdxpVar, zzdxp<Executor> zzdxpVar2) {
        return new zzcco(zzdxpVar, zzdxpVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzbsu) zzdxm.zza(new zzbsu(this.f12941a.get(), this.f12942b.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}

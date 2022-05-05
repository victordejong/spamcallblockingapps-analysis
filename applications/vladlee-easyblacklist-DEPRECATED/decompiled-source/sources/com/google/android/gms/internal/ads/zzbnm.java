package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbnm.class */
public final class zzbnm implements zzdxg<zzbsu<zzbsz>> {

    /* renamed from: a */
    private final zzdxp<zzbtc> f12186a;

    /* renamed from: b */
    private final zzdxp<Executor> f12187b;

    private zzbnm(zzdxp<zzbtc> zzdxpVar, zzdxp<Executor> zzdxpVar2) {
        this.f12186a = zzdxpVar;
        this.f12187b = zzdxpVar2;
    }

    public static zzbnm zzd(zzdxp<zzbtc> zzdxpVar, zzdxp<Executor> zzdxpVar2) {
        return new zzbnm(zzdxpVar, zzdxpVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzbsu) zzdxm.zza(new zzbsu(this.f12186a.get(), this.f12187b.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}

package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbjh.class */
public final class zzbjh implements zzdxg<zzbiy> {

    /* renamed from: a */
    private final zzdxp<zzpn> f11967a;

    /* renamed from: b */
    private final zzdxp<zzakh> f11968b;

    /* renamed from: c */
    private final zzdxp<Executor> f11969c;

    private zzbjh(zzdxp<zzpn> zzdxpVar, zzdxp<zzakh> zzdxpVar2, zzdxp<Executor> zzdxpVar3) {
        this.f11967a = zzdxpVar;
        this.f11968b = zzdxpVar2;
        this.f11969c = zzdxpVar3;
    }

    public static zzbjh zza(zzdxp<zzpn> zzdxpVar, zzdxp<zzakh> zzdxpVar2, zzdxp<Executor> zzdxpVar3) {
        return new zzbjh(zzdxpVar, zzdxpVar2, zzdxpVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzbiy) zzdxm.zza(new zzbiy(this.f11967a.get().zzkm(), this.f11968b.get(), this.f11969c.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}

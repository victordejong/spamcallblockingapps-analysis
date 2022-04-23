package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzccm.class */
public final class zzccm implements zzdxg<zzbsu<zzty>> {

    /* renamed from: a */
    private final zzdxp<zzccw> f12937a;

    /* renamed from: b */
    private final zzdxp<Executor> f12938b;

    private zzccm(zzdxp<zzccw> zzdxpVar, zzdxp<Executor> zzdxpVar2) {
        this.f12937a = zzdxpVar;
        this.f12938b = zzdxpVar2;
    }

    public static zzccm zzn(zzdxp<zzccw> zzdxpVar, zzdxp<Executor> zzdxpVar2) {
        return new zzccm(zzdxpVar, zzdxpVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzbsu) zzdxm.zza(new zzbsu(this.f12937a.get(), this.f12938b.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}

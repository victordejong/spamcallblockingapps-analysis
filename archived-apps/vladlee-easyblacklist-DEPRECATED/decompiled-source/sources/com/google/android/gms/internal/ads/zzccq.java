package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzccq.class */
public final class zzccq implements zzdxg<zzbsu<zzbqb>> {

    /* renamed from: a */
    private final zzdxp<zzccw> f12945a;

    /* renamed from: b */
    private final zzdxp<Executor> f12946b;

    private zzccq(zzdxp<zzccw> zzdxpVar, zzdxp<Executor> zzdxpVar2) {
        this.f12945a = zzdxpVar;
        this.f12946b = zzdxpVar2;
    }

    public static zzccq zzr(zzdxp<zzccw> zzdxpVar, zzdxp<Executor> zzdxpVar2) {
        return new zzccq(zzdxpVar, zzdxpVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzbsu) zzdxm.zza(new zzbsu(this.f12945a.get(), this.f12946b.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}

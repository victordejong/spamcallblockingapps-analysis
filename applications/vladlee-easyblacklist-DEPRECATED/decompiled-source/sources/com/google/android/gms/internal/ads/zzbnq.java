package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbnq.class */
public final class zzbnq implements zzdxg<zzbsu<zzbqb>> {

    /* renamed from: a */
    private final zzdxp<zzbiw> f12198a;

    /* renamed from: b */
    private final zzdxp<Executor> f12199b;

    private zzbnq(zzdxp<zzbiw> zzdxpVar, zzdxp<Executor> zzdxpVar2) {
        this.f12198a = zzdxpVar;
        this.f12199b = zzdxpVar2;
    }

    public static zzbsu<zzbqb> zza(zzbiw zzbiwVar, Executor executor) {
        return (zzbsu) zzdxm.zza(new zzbsu(zzbiwVar, executor), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static zzbnq zzg(zzdxp<zzbiw> zzdxpVar, zzdxp<Executor> zzdxpVar2) {
        return new zzbnq(zzdxpVar, zzdxpVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return zza(this.f12198a.get(), this.f12199b.get());
    }
}

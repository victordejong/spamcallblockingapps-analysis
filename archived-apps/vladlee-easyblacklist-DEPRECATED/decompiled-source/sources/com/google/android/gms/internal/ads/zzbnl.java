package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbnl.class */
public final class zzbnl implements zzdxg<zzbsu<zzty>> {

    /* renamed from: a */
    private final zzdxp<zzbiw> f12184a;

    /* renamed from: b */
    private final zzdxp<Executor> f12185b;

    private zzbnl(zzdxp<zzbiw> zzdxpVar, zzdxp<Executor> zzdxpVar2) {
        this.f12184a = zzdxpVar;
        this.f12185b = zzdxpVar2;
    }

    public static zzbnl zzc(zzdxp<zzbiw> zzdxpVar, zzdxp<Executor> zzdxpVar2) {
        return new zzbnl(zzdxpVar, zzdxpVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzbsu) zzdxm.zza(new zzbsu(this.f12184a.get(), this.f12185b.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}

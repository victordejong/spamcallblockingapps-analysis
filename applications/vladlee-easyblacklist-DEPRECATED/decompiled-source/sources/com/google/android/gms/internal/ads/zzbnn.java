package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbnn.class */
public final class zzbnn implements zzdxg<zzbsu<zzbpe>> {

    /* renamed from: a */
    private final zzdxp<zzbiw> f12188a;

    /* renamed from: b */
    private final zzdxp<Executor> f12189b;

    private zzbnn(zzdxp<zzbiw> zzdxpVar, zzdxp<Executor> zzdxpVar2) {
        this.f12188a = zzdxpVar;
        this.f12189b = zzdxpVar2;
    }

    public static zzbnn zze(zzdxp<zzbiw> zzdxpVar, zzdxp<Executor> zzdxpVar2) {
        return new zzbnn(zzdxpVar, zzdxpVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzbsu) zzdxm.zza(new zzbsu(this.f12188a.get(), this.f12189b.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}

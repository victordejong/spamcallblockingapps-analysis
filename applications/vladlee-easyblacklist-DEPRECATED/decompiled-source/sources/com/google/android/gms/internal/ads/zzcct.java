package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcct.class */
public final class zzcct implements zzdxg<Set<zzbsu<zzdcx>>> {

    /* renamed from: a */
    private final zzdxp<Executor> f12949a;

    /* renamed from: b */
    private final zzdxp<zzcdf> f12950b;

    private zzcct(zzdxp<Executor> zzdxpVar, zzdxp<zzcdf> zzdxpVar2) {
        this.f12949a = zzdxpVar;
        this.f12950b = zzdxpVar2;
    }

    public static zzcct zzs(zzdxp<Executor> zzdxpVar, zzdxp<zzcdf> zzdxpVar2) {
        return new zzcct(zzdxpVar, zzdxpVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        Executor executor = this.f12949a.get();
        return (Set) zzdxm.zza(((Boolean) zzve.zzoy().zzd(zzzn.zzcnw)).booleanValue() ? Collections.singleton(new zzbsu(this.f12950b.get(), executor)) : Collections.emptySet(), "Cannot return null from a non-@Nullable @Provides method");
    }
}

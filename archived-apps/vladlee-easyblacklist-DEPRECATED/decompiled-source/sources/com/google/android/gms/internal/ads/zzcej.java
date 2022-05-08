package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcej.class */
public final class zzcej implements zzdxg<Set<zzbsu<zzty>>> {

    /* renamed from: a */
    private final zzcee f13032a;

    /* renamed from: b */
    private final zzdxp<zzceo> f13033b;

    /* renamed from: c */
    private final zzdxp<Executor> f13034c;

    private zzcej(zzcee zzceeVar, zzdxp<zzceo> zzdxpVar, zzdxp<Executor> zzdxpVar2) {
        this.f13032a = zzceeVar;
        this.f13033b = zzdxpVar;
        this.f13034c = zzdxpVar2;
    }

    public static zzcej zze(zzcee zzceeVar, zzdxp<zzceo> zzdxpVar, zzdxp<Executor> zzdxpVar2) {
        return new zzcej(zzceeVar, zzdxpVar, zzdxpVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (Set) zzdxm.zza(zzcee.zzg(this.f13033b.get(), this.f13034c.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}

package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzced.class */
public final class zzced implements zzdxg<Set<zzbsu<zzbov>>> {

    /* renamed from: a */
    private final zzcee f13020a;

    /* renamed from: b */
    private final zzdxp<zzceo> f13021b;

    /* renamed from: c */
    private final zzdxp<Executor> f13022c;

    private zzced(zzcee zzceeVar, zzdxp<zzceo> zzdxpVar, zzdxp<Executor> zzdxpVar2) {
        this.f13020a = zzceeVar;
        this.f13021b = zzdxpVar;
        this.f13022c = zzdxpVar2;
    }

    public static zzced zza(zzcee zzceeVar, zzdxp<zzceo> zzdxpVar, zzdxp<Executor> zzdxpVar2) {
        return new zzced(zzceeVar, zzdxpVar, zzdxpVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (Set) zzdxm.zza(zzcee.zze(this.f13021b.get(), this.f13022c.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}

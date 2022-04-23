package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcem.class */
public final class zzcem implements zzdxg<Set<zzbsu<zzbpe>>> {

    /* renamed from: a */
    private final zzcee f13041a;

    /* renamed from: b */
    private final zzdxp<zzceo> f13042b;

    /* renamed from: c */
    private final zzdxp<Executor> f13043c;

    private zzcem(zzcee zzceeVar, zzdxp<zzceo> zzdxpVar, zzdxp<Executor> zzdxpVar2) {
        this.f13041a = zzceeVar;
        this.f13042b = zzdxpVar;
        this.f13043c = zzdxpVar2;
    }

    public static zzcem zzh(zzcee zzceeVar, zzdxp<zzceo> zzdxpVar, zzdxp<Executor> zzdxpVar2) {
        return new zzcem(zzceeVar, zzdxpVar, zzdxpVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (Set) zzdxm.zza(zzcee.zzf(this.f13042b.get(), this.f13043c.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}

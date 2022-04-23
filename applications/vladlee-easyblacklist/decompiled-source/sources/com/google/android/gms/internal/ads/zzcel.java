package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcel.class */
public final class zzcel implements zzdxg<Set<zzbsu<zzdcx>>> {

    /* renamed from: a */
    private final zzcee f13038a;

    /* renamed from: b */
    private final zzdxp<zzceo> f13039b;

    /* renamed from: c */
    private final zzdxp<Executor> f13040c;

    private zzcel(zzcee zzceeVar, zzdxp<zzceo> zzdxpVar, zzdxp<Executor> zzdxpVar2) {
        this.f13038a = zzceeVar;
        this.f13039b = zzdxpVar;
        this.f13040c = zzdxpVar2;
    }

    public static zzcel zzg(zzcee zzceeVar, zzdxp<zzceo> zzdxpVar, zzdxp<Executor> zzdxpVar2) {
        return new zzcel(zzceeVar, zzdxpVar, zzdxpVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (Set) zzdxm.zza(zzcee.zzh(this.f13039b.get(), this.f13040c.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}

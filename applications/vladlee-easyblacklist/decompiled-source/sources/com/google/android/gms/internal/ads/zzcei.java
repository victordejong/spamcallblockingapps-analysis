package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcei.class */
public final class zzcei implements zzdxg<Set<zzbsu<zzbqb>>> {

    /* renamed from: a */
    private final zzcee f13029a;

    /* renamed from: b */
    private final zzdxp<zzceo> f13030b;

    /* renamed from: c */
    private final zzdxp<Executor> f13031c;

    private zzcei(zzcee zzceeVar, zzdxp<zzceo> zzdxpVar, zzdxp<Executor> zzdxpVar2) {
        this.f13029a = zzceeVar;
        this.f13030b = zzdxpVar;
        this.f13031c = zzdxpVar2;
    }

    public static Set<zzbsu<zzbqb>> zzb(zzcee zzceeVar, zzceo zzceoVar, Executor executor) {
        return (Set) zzdxm.zza(zzcee.zzc(zzceoVar, executor), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static zzcei zzd(zzcee zzceeVar, zzdxp<zzceo> zzdxpVar, zzdxp<Executor> zzdxpVar2) {
        return new zzcei(zzceeVar, zzdxpVar, zzdxpVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return zzb(this.f13029a, this.f13030b.get(), this.f13031c.get());
    }
}

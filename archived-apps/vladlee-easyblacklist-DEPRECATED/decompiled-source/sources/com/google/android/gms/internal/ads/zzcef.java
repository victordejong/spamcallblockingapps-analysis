package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcef.class */
public final class zzcef implements zzdxg<Set<zzbsu<zzbph>>> {

    /* renamed from: a */
    private final zzcee f13023a;

    /* renamed from: b */
    private final zzdxp<zzceo> f13024b;

    /* renamed from: c */
    private final zzdxp<Executor> f13025c;

    private zzcef(zzcee zzceeVar, zzdxp<zzceo> zzdxpVar, zzdxp<Executor> zzdxpVar2) {
        this.f13023a = zzceeVar;
        this.f13024b = zzdxpVar;
        this.f13025c = zzdxpVar2;
    }

    public static zzcef zzb(zzcee zzceeVar, zzdxp<zzceo> zzdxpVar, zzdxp<Executor> zzdxpVar2) {
        return new zzcef(zzceeVar, zzdxpVar, zzdxpVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (Set) zzdxm.zza(zzcee.zza(this.f13024b.get(), this.f13025c.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}

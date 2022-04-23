package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzceg.class */
public final class zzceg implements zzdxg<Set<zzbsu<zzbow>>> {

    /* renamed from: a */
    private final zzcee f13026a;

    /* renamed from: b */
    private final zzdxp<zzceo> f13027b;

    /* renamed from: c */
    private final zzdxp<Executor> f13028c;

    private zzceg(zzcee zzceeVar, zzdxp<zzceo> zzdxpVar, zzdxp<Executor> zzdxpVar2) {
        this.f13026a = zzceeVar;
        this.f13027b = zzdxpVar;
        this.f13028c = zzdxpVar2;
    }

    public static zzceg zzc(zzcee zzceeVar, zzdxp<zzceo> zzdxpVar, zzdxp<Executor> zzdxpVar2) {
        return new zzceg(zzceeVar, zzdxpVar, zzdxpVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (Set) zzdxm.zza(zzcee.zzd(this.f13027b.get(), this.f13028c.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}

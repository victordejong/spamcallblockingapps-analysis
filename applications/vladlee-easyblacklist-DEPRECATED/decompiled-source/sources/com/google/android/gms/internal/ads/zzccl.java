package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzccl.class */
public final class zzccl implements zzdxg<zzbsu<zzbow>> {

    /* renamed from: a */
    private final zzdxp<zzccw> f12935a;

    /* renamed from: b */
    private final zzdxp<Executor> f12936b;

    private zzccl(zzdxp<zzccw> zzdxpVar, zzdxp<Executor> zzdxpVar2) {
        this.f12935a = zzdxpVar;
        this.f12936b = zzdxpVar2;
    }

    public static zzccl zzm(zzdxp<zzccw> zzdxpVar, zzdxp<Executor> zzdxpVar2) {
        return new zzccl(zzdxpVar, zzdxpVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzbsu) zzdxm.zza(new zzbsu(this.f12935a.get(), this.f12936b.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}

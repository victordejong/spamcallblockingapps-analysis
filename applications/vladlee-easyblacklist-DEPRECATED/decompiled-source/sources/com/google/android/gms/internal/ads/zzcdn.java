package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcdn.class */
public final class zzcdn implements zzdxg<zzbsu<zzbqb>> {

    /* renamed from: a */
    private final zzdxp<zzcdj> f12979a;

    /* renamed from: b */
    private final zzdxp<Executor> f12980b;

    private zzcdn(zzdxp<zzcdj> zzdxpVar, zzdxp<Executor> zzdxpVar2) {
        this.f12979a = zzdxpVar;
        this.f12980b = zzdxpVar2;
    }

    public static zzcdn zzx(zzdxp<zzcdj> zzdxpVar, zzdxp<Executor> zzdxpVar2) {
        return new zzcdn(zzdxpVar, zzdxpVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzbsu) zzdxm.zza(new zzbsu(this.f12979a.get(), this.f12980b.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}

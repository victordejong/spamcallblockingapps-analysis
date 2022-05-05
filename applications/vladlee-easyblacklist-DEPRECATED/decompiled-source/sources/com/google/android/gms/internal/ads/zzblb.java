package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzblb.class */
public final class zzblb implements zzdxg<zzbsu<zzps>> {

    /* renamed from: a */
    private final zzbkn f12077a;

    /* renamed from: b */
    private final zzdxp<zzbmc> f12078b;

    /* renamed from: c */
    private final zzdxp<Executor> f12079c;

    public zzblb(zzbkn zzbknVar, zzdxp<zzbmc> zzdxpVar, zzdxp<Executor> zzdxpVar2) {
        this.f12077a = zzbknVar;
        this.f12078b = zzdxpVar;
        this.f12079c = zzdxpVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzbsu) zzdxm.zza(new zzbsu(this.f12078b.get(), this.f12079c.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}

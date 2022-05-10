package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbsb.class */
public final class zzbsb implements zzeoy<zzcab<zzux>> {

    /* renamed from: a */
    public final zzeph<zzbmh> f25432a;

    /* renamed from: b */
    public final zzeph<Executor> f25433b;

    public zzbsb(zzeph<zzbmh> zzephVar, zzeph<Executor> zzephVar2) {
        this.f25432a = zzephVar;
        this.f25433b = zzephVar2;
    }

    /* renamed from: a */
    public static zzbsb m15107a(zzeph<zzbmh> zzephVar, zzeph<Executor> zzephVar2) {
        return new zzbsb(zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcab zzcabVar = new zzcab(this.f25432a.get(), this.f25433b.get());
        zzepe.m12187a(zzcabVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcabVar;
    }
}

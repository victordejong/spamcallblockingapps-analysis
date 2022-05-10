package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzclh.class */
public final class zzclh implements zzeoy<zzcab<zzbws>> {

    /* renamed from: a */
    public final zzeph<zzcln> f26212a;

    /* renamed from: b */
    public final zzeph<Executor> f26213b;

    public zzclh(zzeph<zzcln> zzephVar, zzeph<Executor> zzephVar2) {
        this.f26212a = zzephVar;
        this.f26213b = zzephVar2;
    }

    /* renamed from: a */
    public static zzclh m14087a(zzeph<zzcln> zzephVar, zzeph<Executor> zzephVar2) {
        return new zzclh(zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcab zzcabVar = new zzcab(this.f26212a.get(), this.f26213b.get());
        zzepe.m12187a(zzcabVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcabVar;
    }
}

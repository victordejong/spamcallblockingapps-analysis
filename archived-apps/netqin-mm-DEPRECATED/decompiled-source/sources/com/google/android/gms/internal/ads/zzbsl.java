package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbsl.class */
public final class zzbsl implements zzeoy<zzcab<zzbuh>> {

    /* renamed from: a */
    public final zzeph<zzbwv> f25453a;

    /* renamed from: b */
    public final zzeph<Executor> f25454b;

    public zzbsl(zzeph<zzbwv> zzephVar, zzeph<Executor> zzephVar2) {
        this.f25453a = zzephVar;
        this.f25454b = zzephVar2;
    }

    /* renamed from: a */
    public static zzbsl m15098a(zzeph<zzbwv> zzephVar, zzeph<Executor> zzephVar2) {
        return new zzbsl(zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcab zzcabVar = new zzcab(this.f25453a.get(), this.f25454b.get());
        zzepe.m12187a(zzcabVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcabVar;
    }
}

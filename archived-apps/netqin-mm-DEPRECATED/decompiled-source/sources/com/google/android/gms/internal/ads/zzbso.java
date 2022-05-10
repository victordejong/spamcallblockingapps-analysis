package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbso.class */
public final class zzbso implements zzeoy<zzcab<zzbul>> {

    /* renamed from: a */
    public final zzeph<zzcmi> f25459a;

    /* renamed from: b */
    public final zzeph<Executor> f25460b;

    public zzbso(zzeph<zzcmi> zzephVar, zzeph<Executor> zzephVar2) {
        this.f25459a = zzephVar;
        this.f25460b = zzephVar2;
    }

    /* renamed from: a */
    public static zzbso m15095a(zzeph<zzcmi> zzephVar, zzeph<Executor> zzephVar2) {
        return new zzbso(zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcab zzcabVar = new zzcab(this.f25459a.get(), this.f25460b.get());
        zzepe.m12187a(zzcabVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcabVar;
    }
}

package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcbt.class */
public final class zzcbt implements zzeoy<zzcab<zzbuh>> {

    /* renamed from: a */
    public final zzeph<zzccs> f25687a;

    /* renamed from: b */
    public final zzeph<Executor> f25688b;

    public zzcbt(zzcbf zzcbfVar, zzeph<zzccs> zzephVar, zzeph<Executor> zzephVar2) {
        this.f25687a = zzephVar;
        this.f25688b = zzephVar2;
    }

    /* renamed from: a */
    public static zzcbt m14828a(zzcbf zzcbfVar, zzeph<zzccs> zzephVar, zzeph<Executor> zzephVar2) {
        return new zzcbt(zzcbfVar, zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcab zzcabVar = new zzcab(this.f25687a.get(), this.f25688b.get());
        zzepe.m12187a(zzcabVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcabVar;
    }
}

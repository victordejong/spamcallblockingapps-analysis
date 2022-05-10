package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbsn.class */
public final class zzbsn implements zzeoy<zzcab<zzbuv>> {

    /* renamed from: a */
    public final zzeph<zzbwv> f25457a;

    /* renamed from: b */
    public final zzeph<Executor> f25458b;

    public zzbsn(zzeph<zzbwv> zzephVar, zzeph<Executor> zzephVar2) {
        this.f25457a = zzephVar;
        this.f25458b = zzephVar2;
    }

    /* renamed from: a */
    public static zzbsn m15096a(zzeph<zzbwv> zzephVar, zzeph<Executor> zzephVar2) {
        return new zzbsn(zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcab zzcabVar = new zzcab(this.f25457a.get(), this.f25458b.get());
        zzepe.m12187a(zzcabVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcabVar;
    }
}

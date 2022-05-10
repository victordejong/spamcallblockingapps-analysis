package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbsd.class */
public final class zzbsd implements zzeoy<zzcab<zzbuv>> {

    /* renamed from: a */
    public final zzeph<zzbmh> f25436a;

    /* renamed from: b */
    public final zzeph<Executor> f25437b;

    public zzbsd(zzeph<zzbmh> zzephVar, zzeph<Executor> zzephVar2) {
        this.f25436a = zzephVar;
        this.f25437b = zzephVar2;
    }

    /* renamed from: a */
    public static zzbsd m15105a(zzeph<zzbmh> zzephVar, zzeph<Executor> zzephVar2) {
        return new zzbsd(zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcab zzcabVar = new zzcab(this.f25436a.get(), this.f25437b.get());
        zzepe.m12187a(zzcabVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcabVar;
    }
}

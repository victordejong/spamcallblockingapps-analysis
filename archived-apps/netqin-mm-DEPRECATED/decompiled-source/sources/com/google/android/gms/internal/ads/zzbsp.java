package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbsp.class */
public final class zzbsp implements zzeoy<zzcab<zzbwb>> {

    /* renamed from: a */
    public final zzeph<zzbwv> f25461a;

    /* renamed from: b */
    public final zzeph<Executor> f25462b;

    public zzbsp(zzeph<zzbwv> zzephVar, zzeph<Executor> zzephVar2) {
        this.f25461a = zzephVar;
        this.f25462b = zzephVar2;
    }

    /* renamed from: a */
    public static zzbsp m15094a(zzeph<zzbwv> zzephVar, zzeph<Executor> zzephVar2) {
        return new zzbsp(zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcab zzcabVar = new zzcab(this.f25461a.get(), this.f25462b.get());
        zzepe.m12187a(zzcabVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcabVar;
    }
}

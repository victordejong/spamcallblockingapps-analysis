package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbrm.class */
public final class zzbrm implements zzeoy<zzcab<zzbwb>> {

    /* renamed from: a */
    public final zzeph<zzbwg> f25419a;

    /* renamed from: b */
    public final zzeph<Executor> f25420b;

    public zzbrm(zzeph<zzbwg> zzephVar, zzeph<Executor> zzephVar2) {
        this.f25419a = zzephVar;
        this.f25420b = zzephVar2;
    }

    /* renamed from: a */
    public static zzbrm m15118a(zzeph<zzbwg> zzephVar, zzeph<Executor> zzephVar2) {
        return new zzbrm(zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcab zzcabVar = new zzcab(this.f25419a.get(), this.f25420b.get());
        zzepe.m12187a(zzcabVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcabVar;
    }
}

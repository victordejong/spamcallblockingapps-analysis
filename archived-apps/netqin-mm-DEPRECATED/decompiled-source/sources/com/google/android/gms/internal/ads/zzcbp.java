package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcbp.class */
public final class zzcbp implements zzeoy<zzcab<zzaia>> {

    /* renamed from: a */
    public final zzeph<zzcje> f25681a;

    public zzcbp(zzcbf zzcbfVar, zzeph<zzcje> zzephVar) {
        this.f25681a = zzephVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcab zzcabVar = new zzcab(this.f25681a.get(), zzbbz.f24769f);
        zzepe.m12187a(zzcabVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcabVar;
    }
}

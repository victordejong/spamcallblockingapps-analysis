package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzckn.class */
public final class zzckn implements zzeoy<zzcab<zzbuy>> {

    /* renamed from: a */
    public final zzeph<zzckm> f26186a;

    public zzckn(zzcko zzckoVar, zzeph<zzckm> zzephVar) {
        this.f26186a = zzephVar;
    }

    /* renamed from: a */
    public static zzckn m14111a(zzcko zzckoVar, zzeph<zzckm> zzephVar) {
        return new zzckn(zzckoVar, zzephVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcab zzcabVar = new zzcab(this.f26186a.get(), zzbbz.f24768e);
        zzepe.m12187a(zzcabVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcabVar;
    }
}

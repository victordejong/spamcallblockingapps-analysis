package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbtc.class */
public final class zzbtc implements zzeoy<zzcab<zzbws>> {

    /* renamed from: a */
    public final zzeph<zzbsx> f25486a;

    public zzbtc(zzbsz zzbszVar, zzeph<zzbsx> zzephVar) {
        this.f25486a = zzephVar;
    }

    /* renamed from: a */
    public static zzbtc m15084a(zzbsz zzbszVar, zzeph<zzbsx> zzephVar) {
        return new zzbtc(zzbszVar, zzephVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcab zzcabVar = new zzcab(this.f25486a.get(), zzbbz.f24769f);
        zzepe.m12187a(zzcabVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcabVar;
    }
}

package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbrt.class */
public final class zzbrt implements zzeoy<zzcab<zzbuh>> {

    /* renamed from: a */
    public final zzeph<zzbsa> f25421a;

    public zzbrt(zzbrr zzbrrVar, zzeph<zzbsa> zzephVar) {
        this.f25421a = zzephVar;
    }

    /* renamed from: a */
    public static zzbrt m15116a(zzbrr zzbrrVar, zzeph<zzbsa> zzephVar) {
        return new zzbrt(zzbrrVar, zzephVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcab zzcabVar = new zzcab(this.f25421a.get(), zzbbz.f24769f);
        zzepe.m12187a(zzcabVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcabVar;
    }
}

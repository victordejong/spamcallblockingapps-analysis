package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbru.class */
public final class zzbru implements zzeoy<zzcab<zzux>> {

    /* renamed from: a */
    public final zzeph<zzbsa> f25422a;

    public zzbru(zzbrr zzbrrVar, zzeph<zzbsa> zzephVar) {
        this.f25422a = zzephVar;
    }

    /* renamed from: a */
    public static zzbru m15115a(zzbrr zzbrrVar, zzeph<zzbsa> zzephVar) {
        return new zzbru(zzbrrVar, zzephVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcab zzcabVar = new zzcab(this.f25422a.get(), zzbbz.f24769f);
        zzepe.m12187a(zzcabVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcabVar;
    }
}

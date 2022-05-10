package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbrv.class */
public final class zzbrv implements zzeoy<zzcab<zzbvs>> {

    /* renamed from: a */
    public final zzeph<zzbsa> f25423a;

    public zzbrv(zzbrr zzbrrVar, zzeph<zzbsa> zzephVar) {
        this.f25423a = zzephVar;
    }

    /* renamed from: a */
    public static zzbrv m15114a(zzbrr zzbrrVar, zzeph<zzbsa> zzephVar) {
        return new zzbrv(zzbrrVar, zzephVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcab zzcabVar = new zzcab(this.f25423a.get(), zzbbz.f24769f);
        zzepe.m12187a(zzcabVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcabVar;
    }
}

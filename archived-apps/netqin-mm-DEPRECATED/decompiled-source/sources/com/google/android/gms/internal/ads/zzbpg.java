package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbpg.class */
public final class zzbpg implements zzeoy<zzcab<zzbvs>> {

    /* renamed from: a */
    public final zzbot f25319a;

    /* renamed from: b */
    public final zzeph<zzbqd> f25320b;

    public zzbpg(zzbot zzbotVar, zzeph<zzbqd> zzephVar) {
        this.f25319a = zzbotVar;
        this.f25320b = zzephVar;
    }

    /* renamed from: a */
    public static zzcab<zzbvs> m15215a(zzbot zzbotVar, zzbqd zzbqdVar) {
        zzcab<zzbvs> zzcabVar = new zzcab<>(zzbqdVar, zzbbz.f24768e);
        zzepe.m12187a(zzcabVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcabVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return m15215a(this.f25319a, this.f25320b.get());
    }
}

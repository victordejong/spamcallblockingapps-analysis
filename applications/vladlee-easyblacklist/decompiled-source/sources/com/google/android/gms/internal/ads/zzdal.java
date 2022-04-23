package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdal.class */
public final class zzdal implements zzdxg<zzbsu<zzbow>> {

    /* renamed from: a */
    private final zzdai f14114a;

    /* renamed from: b */
    private final zzdxp<zzdak> f14115b;

    private zzdal(zzdai zzdaiVar, zzdxp<zzdak> zzdxpVar) {
        this.f14114a = zzdaiVar;
        this.f14115b = zzdxpVar;
    }

    public static zzdal zza(zzdai zzdaiVar, zzdxp<zzdak> zzdxpVar) {
        return new zzdal(zzdaiVar, zzdxpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzbsu) zzdxm.zza(new zzbsu(this.f14115b.get(), zzazd.zzdwj), "Cannot return null from a non-@Nullable @Provides method");
    }
}

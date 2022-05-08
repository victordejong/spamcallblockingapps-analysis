package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbne.class */
public final class zzbne implements zzdxg<zzbsu<zzty>> {

    /* renamed from: a */
    private final zzbnb f12171a;

    /* renamed from: b */
    private final zzdxp<zzbnk> f12172b;

    private zzbne(zzbnb zzbnbVar, zzdxp<zzbnk> zzdxpVar) {
        this.f12171a = zzbnbVar;
        this.f12172b = zzdxpVar;
    }

    public static zzbne zzb(zzbnb zzbnbVar, zzdxp<zzbnk> zzdxpVar) {
        return new zzbne(zzbnbVar, zzdxpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzbsu) zzdxm.zza(new zzbsu(this.f12172b.get(), zzazd.zzdwj), "Cannot return null from a non-@Nullable @Provides method");
    }
}

package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbla.class */
public final class zzbla implements zzdxg<zzbsu<zzbqb>> {

    /* renamed from: a */
    private final zzbkn f12075a;

    /* renamed from: b */
    private final zzdxp<zzblw> f12076b;

    public zzbla(zzbkn zzbknVar, zzdxp<zzblw> zzdxpVar) {
        this.f12075a = zzbknVar;
        this.f12076b = zzdxpVar;
    }

    public static zzbsu<zzbqb> zza(zzbkn zzbknVar, zzblw zzblwVar) {
        return (zzbsu) zzdxm.zza(new zzbsu(zzblwVar, zzazd.zzdwi), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return zza(this.f12075a, this.f12076b.get());
    }
}

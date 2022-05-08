package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbng.class */
public final class zzbng implements zzdxg<zzbsu<zzbpe>> {

    /* renamed from: a */
    private final zzbnb f12175a;

    /* renamed from: b */
    private final zzdxp<zzbnk> f12176b;

    private zzbng(zzbnb zzbnbVar, zzdxp<zzbnk> zzdxpVar) {
        this.f12175a = zzbnbVar;
        this.f12176b = zzdxpVar;
    }

    public static zzbng zzd(zzbnb zzbnbVar, zzdxp<zzbnk> zzdxpVar) {
        return new zzbng(zzbnbVar, zzdxpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzbsu) zzdxm.zza(new zzbsu(this.f12176b.get(), zzazd.zzdwj), "Cannot return null from a non-@Nullable @Provides method");
    }
}

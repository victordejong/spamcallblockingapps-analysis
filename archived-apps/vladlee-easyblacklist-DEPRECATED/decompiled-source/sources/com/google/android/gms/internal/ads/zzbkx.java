package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbkx.class */
public final class zzbkx implements zzdxg<zzbsu<zzbpe>> {

    /* renamed from: a */
    private final zzbkn f12069a;

    /* renamed from: b */
    private final zzdxp<zzblw> f12070b;

    public zzbkx(zzbkn zzbknVar, zzdxp<zzblw> zzdxpVar) {
        this.f12069a = zzbknVar;
        this.f12070b = zzdxpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzbsu) zzdxm.zza(new zzbsu(this.f12070b.get(), zzazd.zzdwi), "Cannot return null from a non-@Nullable @Provides method");
    }
}

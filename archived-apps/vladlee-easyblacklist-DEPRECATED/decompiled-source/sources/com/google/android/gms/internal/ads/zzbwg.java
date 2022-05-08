package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbwg.class */
public final class zzbwg implements zzdxg<zzbsu<zzbpe>> {

    /* renamed from: a */
    private final zzbvy f12536a;

    /* renamed from: b */
    private final zzdxp<zzbyc> f12537b;

    public zzbwg(zzbvy zzbvyVar, zzdxp<zzbyc> zzdxpVar) {
        this.f12536a = zzbvyVar;
        this.f12537b = zzdxpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzbsu) zzdxm.zza(new zzbsu(this.f12537b.get(), zzazd.zzdwj), "Cannot return null from a non-@Nullable @Provides method");
    }
}

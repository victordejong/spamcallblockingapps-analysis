package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcae.class */
public final class zzcae implements zzdxg<zzcab> {

    /* renamed from: a */
    private final zzdxp<String> f12804a;

    /* renamed from: b */
    private final zzdxp<zzbwk> f12805b;

    /* renamed from: c */
    private final zzdxp<zzbws> f12806c;

    private zzcae(zzdxp<String> zzdxpVar, zzdxp<zzbwk> zzdxpVar2, zzdxp<zzbws> zzdxpVar3) {
        this.f12804a = zzdxpVar;
        this.f12805b = zzdxpVar2;
        this.f12806c = zzdxpVar3;
    }

    public static zzcae zzj(zzdxp<String> zzdxpVar, zzdxp<zzbwk> zzdxpVar2, zzdxp<zzbws> zzdxpVar3) {
        return new zzcae(zzdxpVar, zzdxpVar2, zzdxpVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcab(this.f12804a.get(), this.f12805b.get(), this.f12806c.get());
    }
}

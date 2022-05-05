package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcac.class */
public final class zzcac implements zzdxg<zzbzz> {

    /* renamed from: a */
    private final zzdxp<String> f12797a;

    /* renamed from: b */
    private final zzdxp<zzbwk> f12798b;

    /* renamed from: c */
    private final zzdxp<zzbws> f12799c;

    private zzcac(zzdxp<String> zzdxpVar, zzdxp<zzbwk> zzdxpVar2, zzdxp<zzbws> zzdxpVar3) {
        this.f12797a = zzdxpVar;
        this.f12798b = zzdxpVar2;
        this.f12799c = zzdxpVar3;
    }

    public static zzcac zzi(zzdxp<String> zzdxpVar, zzdxp<zzbwk> zzdxpVar2, zzdxp<zzbws> zzdxpVar3) {
        return new zzcac(zzdxpVar, zzdxpVar2, zzdxpVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzbzz(this.f12797a.get(), this.f12798b.get(), this.f12799c.get());
    }
}

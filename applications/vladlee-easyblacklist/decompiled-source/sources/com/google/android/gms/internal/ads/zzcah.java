package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcah.class */
public final class zzcah implements zzdxg<zzcai> {

    /* renamed from: a */
    private final zzdxp<String> f12811a;

    /* renamed from: b */
    private final zzdxp<zzbwk> f12812b;

    /* renamed from: c */
    private final zzdxp<zzbws> f12813c;

    private zzcah(zzdxp<String> zzdxpVar, zzdxp<zzbwk> zzdxpVar2, zzdxp<zzbws> zzdxpVar3) {
        this.f12811a = zzdxpVar;
        this.f12812b = zzdxpVar2;
        this.f12813c = zzdxpVar3;
    }

    public static zzcah zzk(zzdxp<String> zzdxpVar, zzdxp<zzbwk> zzdxpVar2, zzdxp<zzbws> zzdxpVar3) {
        return new zzcah(zzdxpVar, zzdxpVar2, zzdxpVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcai(this.f12811a.get(), this.f12812b.get(), this.f12813c.get());
    }
}

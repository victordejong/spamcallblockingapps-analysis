package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcaa.class */
public final class zzcaa implements zzdxg<zzbzv> {

    /* renamed from: a */
    private final zzdxp<zzbwk> f12792a;

    /* renamed from: b */
    private final zzdxp<zzbws> f12793b;

    private zzcaa(zzdxp<zzbwk> zzdxpVar, zzdxp<zzbws> zzdxpVar2) {
        this.f12792a = zzdxpVar;
        this.f12793b = zzdxpVar2;
    }

    public static zzcaa zzl(zzdxp<zzbwk> zzdxpVar, zzdxp<zzbws> zzdxpVar2) {
        return new zzcaa(zzdxpVar, zzdxpVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzbzv(this.f12792a.get(), this.f12793b.get());
    }
}

package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcen.class */
public final class zzcen implements zzdxg<zzceo> {

    /* renamed from: a */
    private final zzdxp<zzcec> f13044a;

    /* renamed from: b */
    private final zzdxp<zzbfx> f13045b;

    private zzcen(zzdxp<zzcec> zzdxpVar, zzdxp<zzbfx> zzdxpVar2) {
        this.f13044a = zzdxpVar;
        this.f13045b = zzdxpVar2;
    }

    public static zzcen zzaa(zzdxp<zzcec> zzdxpVar, zzdxp<zzbfx> zzdxpVar2) {
        return new zzcen(zzdxpVar, zzdxpVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzceo(this.f13044a.get(), this.f13045b.get());
    }
}

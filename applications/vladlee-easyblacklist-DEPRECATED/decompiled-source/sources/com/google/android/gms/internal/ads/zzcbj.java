package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcbj.class */
public final class zzcbj implements zzdxg<zzbsu<zzbov>> {

    /* renamed from: a */
    private final zzdxp<zzbsl> f12869a;

    public zzcbj(zzdxp<zzbsl> zzdxpVar) {
        this.f12869a = zzdxpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzbsu) zzdxm.zza(new zzbsu(this.f12869a.get(), zzazd.zzdwj), "Cannot return null from a non-@Nullable @Provides method");
    }
}

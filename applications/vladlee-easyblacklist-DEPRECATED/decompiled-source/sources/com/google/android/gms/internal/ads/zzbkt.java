package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbkt.class */
public final class zzbkt implements zzdxg<zzbme> {

    /* renamed from: a */
    private final zzbkn f12060a;

    public zzbkt(zzbkn zzbknVar) {
        this.f12060a = zzbknVar;
    }

    public static zzbme zzb(zzbkn zzbknVar) {
        return (zzbme) zzdxm.zza(zzbknVar.zzagh(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return zzb(this.f12060a);
    }
}

package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcch.class */
public final class zzcch implements zzdxg<zzbsu<zzbph>> {

    /* renamed from: a */
    private final zzcci f12928a;

    /* renamed from: b */
    private final zzdxp<zzccg> f12929b;

    private zzcch(zzcci zzcciVar, zzdxp<zzccg> zzdxpVar) {
        this.f12928a = zzcciVar;
        this.f12929b = zzdxpVar;
    }

    public static zzcch zza(zzcci zzcciVar, zzdxp<zzccg> zzdxpVar) {
        return new zzcch(zzcciVar, zzdxpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzbsu) zzdxm.zza(new zzbsu(this.f12929b.get(), zzazd.zzdwi), "Cannot return null from a non-@Nullable @Provides method");
    }
}

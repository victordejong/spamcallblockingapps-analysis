package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbid.class */
public final class zzbid implements zzdxg<zzsf> {

    /* renamed from: a */
    private static final zzbid f11912a = new zzbid();

    public static zzbid zzafb() {
        return f11912a;
    }

    public static zzsf zzafc() {
        return (zzsf) zzdxm.zza(new zzsf(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return zzafc();
    }
}

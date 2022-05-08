package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbxf.class */
public final class zzbxf implements zzdxg<zzbws> {

    /* renamed from: a */
    private final zzbxe f12626a;

    private zzbxf(zzbxe zzbxeVar) {
        this.f12626a = zzbxeVar;
    }

    public static zzbxf zza(zzbxe zzbxeVar) {
        return new zzbxf(zzbxeVar);
    }

    public static zzbws zzb(zzbxe zzbxeVar) {
        return (zzbws) zzdxm.zza(zzbxeVar.zzajx(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return zzb(this.f12626a);
    }
}

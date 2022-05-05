package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbmv.class */
public final class zzbmv implements zzdxg<String> {

    /* renamed from: a */
    private final zzbmt f12153a;

    private zzbmv(zzbmt zzbmtVar) {
        this.f12153a = zzbmtVar;
    }

    public static zzbmv zza(zzbmt zzbmtVar) {
        return new zzbmv(zzbmtVar);
    }

    public static String zzb(zzbmt zzbmtVar) {
        return (String) zzdxm.zza(zzbmtVar.zzagy(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return zzb(this.f12153a);
    }
}

package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbmw.class */
public final class zzbmw implements zzdxg<zzczl> {

    /* renamed from: a */
    private final zzbmt f12154a;

    private zzbmw(zzbmt zzbmtVar) {
        this.f12154a = zzbmtVar;
    }

    public static zzbmw zzc(zzbmt zzbmtVar) {
        return new zzbmw(zzbmtVar);
    }

    public static zzczl zzd(zzbmt zzbmtVar) {
        return (zzczl) zzdxm.zza(zzbmtVar.zzagx(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return zzd(this.f12154a);
    }
}

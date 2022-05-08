package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbmy.class */
public final class zzbmy implements zzdxg<zzczt> {

    /* renamed from: a */
    private final zzbmt f12157a;

    private zzbmy(zzbmt zzbmtVar) {
        this.f12157a = zzbmtVar;
    }

    public static zzbmy zze(zzbmt zzbmtVar) {
        return new zzbmy(zzbmtVar);
    }

    public static zzczt zzf(zzbmt zzbmtVar) {
        return (zzczt) zzdxm.zza(zzbmtVar.zzagw(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return zzf(this.f12157a);
    }
}

package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbvj.class */
public final class zzbvj implements zzdxg<zzbwz> {

    /* renamed from: a */
    private final zzbvi f12465a;

    private zzbvj(zzbvi zzbviVar) {
        this.f12465a = zzbviVar;
    }

    public static zzbvj zzc(zzbvi zzbviVar) {
        return new zzbvj(zzbviVar);
    }

    public static zzbwz zzd(zzbvi zzbviVar) {
        return (zzbwz) zzdxm.zza(zzbviVar.zzaij(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return zzd(this.f12465a);
    }
}

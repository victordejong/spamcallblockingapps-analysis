package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbvk.class */
public final class zzbvk implements zzdxg<zzbvi> {

    /* renamed from: a */
    private final zzbvi f12466a;

    private zzbvk(zzbvi zzbviVar) {
        this.f12466a = zzbviVar;
    }

    public static zzbvk zze(zzbvi zzbviVar) {
        return new zzbvk(zzbviVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        zzbvi zzbviVar = this.f12466a;
        if (zzbviVar != null) {
            return (zzbvi) zzdxm.zza(zzbviVar, "Cannot return null from a non-@Nullable @Provides method");
        }
        throw null;
    }
}

package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbse.class */
public final class zzbse implements zzdxg<zzbrm> {

    /* renamed from: a */
    private final zzbrm f12358a;

    private zzbse(zzbrm zzbrmVar) {
        this.f12358a = zzbrmVar;
    }

    public static zzbse zzv(zzbrm zzbrmVar) {
        return new zzbse(zzbrmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        zzbrm zzbrmVar = this.f12358a;
        if (zzbrmVar != null) {
            return (zzbrm) zzdxm.zza(zzbrmVar, "Cannot return null from a non-@Nullable @Provides method");
        }
        throw null;
    }
}

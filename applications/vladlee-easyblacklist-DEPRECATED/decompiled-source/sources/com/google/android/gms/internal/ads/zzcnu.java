package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcnu.class */
public final class zzcnu implements zzdxg<zzcns> {

    /* renamed from: a */
    private final zzcns f13424a;

    private zzcnu(zzcns zzcnsVar) {
        this.f13424a = zzcnsVar;
    }

    public static zzcnu zzd(zzcns zzcnsVar) {
        return new zzcnu(zzcnsVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        zzcns zzcnsVar = this.f13424a;
        if (zzcnsVar != null) {
            return (zzcns) zzdxm.zza(zzcnsVar, "Cannot return null from a non-@Nullable @Provides method");
        }
        throw null;
    }
}

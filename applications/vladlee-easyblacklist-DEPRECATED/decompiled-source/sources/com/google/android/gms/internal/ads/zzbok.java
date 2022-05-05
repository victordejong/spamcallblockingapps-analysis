package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbok.class */
public final class zzbok implements zzdxg<zzczu> {

    /* renamed from: a */
    private final zzbod f12237a;

    private zzbok(zzbod zzbodVar) {
        this.f12237a = zzbodVar;
    }

    public static zzbok zzi(zzbod zzbodVar) {
        return new zzbok(zzbodVar);
    }

    public static zzczu zzj(zzbod zzbodVar) {
        return (zzczu) zzdxm.zza(zzbodVar.m4007b(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return zzj(this.f12237a);
    }
}

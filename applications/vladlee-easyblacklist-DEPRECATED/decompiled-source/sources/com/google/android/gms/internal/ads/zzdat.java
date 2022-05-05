package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdat.class */
public final class zzdat implements zzdxg<zzavu> {

    /* renamed from: a */
    private final zzdaq f14128a;

    /* renamed from: b */
    private final zzdxp<zzdao> f14129b;

    private zzdat(zzdaq zzdaqVar, zzdxp<zzdao> zzdxpVar) {
        this.f14128a = zzdaqVar;
        this.f14129b = zzdxpVar;
    }

    public static zzavu zza(zzdaq zzdaqVar, zzdao zzdaoVar) {
        return (zzavu) zzdxm.zza(zzdaoVar.zzdrk, "Cannot return null from a non-@Nullable @Provides method");
    }

    public static zzdat zza(zzdaq zzdaqVar, zzdxp<zzdao> zzdxpVar) {
        return new zzdat(zzdaqVar, zzdxpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return zza(this.f14128a, this.f14129b.get());
    }
}

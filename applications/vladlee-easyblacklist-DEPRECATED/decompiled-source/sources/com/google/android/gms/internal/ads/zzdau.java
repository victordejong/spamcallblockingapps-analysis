package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdau.class */
public final class zzdau implements zzdxg<zzavp> {

    /* renamed from: a */
    private final zzdaq f14130a;

    /* renamed from: b */
    private final zzdxp<zzdao> f14131b;

    private zzdau(zzdaq zzdaqVar, zzdxp<zzdao> zzdxpVar) {
        this.f14130a = zzdaqVar;
        this.f14131b = zzdxpVar;
    }

    public static zzdau zzb(zzdaq zzdaqVar, zzdxp<zzdao> zzdxpVar) {
        return new zzdau(zzdaqVar, zzdxpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzavp) zzdxm.zza(this.f14131b.get().zzdpz, "Cannot return null from a non-@Nullable @Provides method");
    }
}

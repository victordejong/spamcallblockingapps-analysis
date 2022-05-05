package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdas.class */
public final class zzdas implements zzdxg<zzdao> {

    /* renamed from: a */
    private final zzdaq f14125a;

    /* renamed from: b */
    private final zzdxp<zzdam> f14126b;

    /* renamed from: c */
    private final zzdxp<String> f14127c;

    private zzdas(zzdaq zzdaqVar, zzdxp<zzdam> zzdxpVar, zzdxp<String> zzdxpVar2) {
        this.f14125a = zzdaqVar;
        this.f14126b = zzdxpVar;
        this.f14127c = zzdxpVar2;
    }

    public static zzdas zza(zzdaq zzdaqVar, zzdxp<zzdam> zzdxpVar, zzdxp<String> zzdxpVar2) {
        return new zzdas(zzdaqVar, zzdxpVar, zzdxpVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzdao) zzdxm.zza(this.f14126b.get().zzgl(this.f14127c.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}

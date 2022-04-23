package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdav.class */
public final class zzdav implements zzdxg<Context> {

    /* renamed from: a */
    private final zzdaq f14132a;

    /* renamed from: b */
    private final zzdxp<zzdao> f14133b;

    private zzdav(zzdaq zzdaqVar, zzdxp<zzdao> zzdxpVar) {
        this.f14132a = zzdaqVar;
        this.f14133b = zzdxpVar;
    }

    public static Context zzb(zzdaq zzdaqVar, zzdao zzdaoVar) {
        return (Context) zzdxm.zza(zzdaoVar.zzyv, "Cannot return null from a non-@Nullable @Provides method");
    }

    public static zzdav zzc(zzdaq zzdaqVar, zzdxp<zzdao> zzdxpVar) {
        return new zzdav(zzdaqVar, zzdxpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return zzb(this.f14132a, this.f14133b.get());
    }
}

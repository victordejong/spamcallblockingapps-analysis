package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbod;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbon.class */
public final class zzbon implements zzdxg<zzbod.zza> {

    /* renamed from: a */
    private final zzbod f12241a;

    private zzbon(zzbod zzbodVar) {
        this.f12241a = zzbodVar;
    }

    public static zzbon zzl(zzbod zzbodVar) {
        return new zzbon(zzbodVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzbod.zza) zzdxm.zza(this.f12241a.m4009a(), "Cannot return null from a non-@Nullable @Provides method");
    }
}

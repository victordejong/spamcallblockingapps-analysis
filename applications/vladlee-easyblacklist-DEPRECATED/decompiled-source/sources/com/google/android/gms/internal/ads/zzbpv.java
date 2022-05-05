package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbpv.class */
public final class zzbpv implements zzdxg<zzbpm> {

    /* renamed from: a */
    private final zzdxp<Set<zzbsu<zzbov>>> f12254a;

    private zzbpv(zzdxp<Set<zzbsu<zzbov>>> zzdxpVar) {
        this.f12254a = zzdxpVar;
    }

    public static zzbpv zzj(zzdxp<Set<zzbsu<zzbov>>> zzdxpVar) {
        return new zzbpv(zzdxpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzbpm(this.f12254a.get());
    }
}

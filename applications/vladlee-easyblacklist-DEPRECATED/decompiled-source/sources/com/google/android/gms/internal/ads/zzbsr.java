package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbsr.class */
public final class zzbsr implements zzdxg<zzbsq> {

    /* renamed from: a */
    private final zzdxp<Set<zzbsu<zzbsn>>> f12366a;

    private zzbsr(zzdxp<Set<zzbsu<zzbsn>>> zzdxpVar) {
        this.f12366a = zzdxpVar;
    }

    public static zzbsr zzr(zzdxp<Set<zzbsu<zzbsn>>> zzdxpVar) {
        return new zzbsr(zzdxpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzbsq(this.f12366a.get());
    }
}

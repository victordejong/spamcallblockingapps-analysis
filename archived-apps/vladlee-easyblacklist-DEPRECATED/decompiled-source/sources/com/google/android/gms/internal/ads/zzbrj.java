package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbrj.class */
public final class zzbrj implements zzdxg<zzbrf> {

    /* renamed from: a */
    private final zzdxp<Set<zzbsu<zzbri>>> f12273a;

    private zzbrj(zzdxp<Set<zzbsu<zzbri>>> zzdxpVar) {
        this.f12273a = zzdxpVar;
    }

    public static zzbrj zzq(zzdxp<Set<zzbsu<zzbri>>> zzdxpVar) {
        return new zzbrj(zzdxpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzbrf(this.f12273a.get());
    }
}

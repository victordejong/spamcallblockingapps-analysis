package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbpf.class */
public final class zzbpf implements zzdxg<zzbpd> {

    /* renamed from: a */
    private final zzdxp<Set<zzbsu<zzbpe>>> f12252a;

    private zzbpf(zzdxp<Set<zzbsu<zzbpe>>> zzdxpVar) {
        this.f12252a = zzdxpVar;
    }

    public static zzbpf zzh(zzdxp<Set<zzbsu<zzbpe>>> zzdxpVar) {
        return new zzbpf(zzdxpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzbpd(this.f12252a.get());
    }
}

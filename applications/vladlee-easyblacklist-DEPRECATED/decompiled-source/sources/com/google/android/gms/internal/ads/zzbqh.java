package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbqh.class */
public final class zzbqh implements zzdxg<zzbqf> {

    /* renamed from: a */
    private final zzdxp<Set<zzbsu<zzbqg>>> f12263a;

    private zzbqh(zzdxp<Set<zzbsu<zzbqg>>> zzdxpVar) {
        this.f12263a = zzdxpVar;
    }

    public static zzbqh zzm(zzdxp<Set<zzbsu<zzbqg>>> zzdxpVar) {
        return new zzbqh(zzdxpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzbqf(this.f12263a.get());
    }
}

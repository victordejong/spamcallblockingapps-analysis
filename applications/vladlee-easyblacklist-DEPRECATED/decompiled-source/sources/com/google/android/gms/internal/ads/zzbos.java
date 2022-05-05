package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbos.class */
public final class zzbos implements zzdxg<zzboq> {

    /* renamed from: a */
    private final zzdxp<Set<zzbsu<zzty>>> f12249a;

    private zzbos(zzdxp<Set<zzbsu<zzty>>> zzdxpVar) {
        this.f12249a = zzdxpVar;
    }

    public static zzbos zzg(zzdxp<Set<zzbsu<zzty>>> zzdxpVar) {
        return new zzbos(zzdxpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzboq(this.f12249a.get());
    }
}

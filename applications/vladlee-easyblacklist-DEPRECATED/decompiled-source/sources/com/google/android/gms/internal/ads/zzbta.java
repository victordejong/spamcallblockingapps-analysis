package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbta.class */
public final class zzbta implements zzdxg<zzbsy> {

    /* renamed from: a */
    private final zzdxp<Set<zzbsu<zzbsz>>> f12373a;

    private zzbta(zzdxp<Set<zzbsu<zzbsz>>> zzdxpVar) {
        this.f12373a = zzdxpVar;
    }

    public static zzbta zzs(zzdxp<Set<zzbsu<zzbsz>>> zzdxpVar) {
        return new zzbta(zzdxpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzbsy(this.f12373a.get());
    }
}

package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcdk.class */
public final class zzcdk implements zzdxg<zzcdf> {

    /* renamed from: a */
    private final zzdxp<zzsm> f12973a;

    /* renamed from: b */
    private final zzdxp<Map<zzdco, zzcdh>> f12974b;

    private zzcdk(zzdxp<zzsm> zzdxpVar, zzdxp<Map<zzdco, zzcdh>> zzdxpVar2) {
        this.f12973a = zzdxpVar;
        this.f12974b = zzdxpVar2;
    }

    public static zzcdk zzu(zzdxp<zzsm> zzdxpVar, zzdxp<Map<zzdco, zzcdh>> zzdxpVar2) {
        return new zzcdk(zzdxpVar, zzdxpVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcdf(this.f12973a.get(), this.f12974b.get());
    }
}

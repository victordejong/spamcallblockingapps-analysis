package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbmk.class */
public final class zzbmk<AdT> implements zzdxg<zzbmh<AdT>> {

    /* renamed from: a */
    private final zzdxp<Map<String, zzcio<AdT>>> f12145a;

    private zzbmk(zzdxp<Map<String, zzcio<AdT>>> zzdxpVar) {
        this.f12145a = zzdxpVar;
    }

    public static <AdT> zzbmk<AdT> zzd(zzdxp<Map<String, zzcio<AdT>>> zzdxpVar) {
        return new zzbmk<>(zzdxpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzbmh(this.f12145a.get());
    }
}

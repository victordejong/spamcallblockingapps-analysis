package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbmh.class */
public final class zzbmh<AdT> implements zzbmi<AdT> {

    /* renamed from: a */
    private final Map<String, zzcio<AdT>> f12144a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbmh(Map<String, zzcio<AdT>> map) {
        this.f12144a = map;
    }

    @Override // com.google.android.gms.internal.ads.zzbmi
    public final zzcio<AdT> zzd(int i, String str) {
        return this.f12144a.get(str);
    }
}

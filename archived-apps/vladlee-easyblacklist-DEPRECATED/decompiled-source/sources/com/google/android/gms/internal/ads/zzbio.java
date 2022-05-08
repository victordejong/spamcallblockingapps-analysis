package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbio.class */
public final class zzbio implements zzbil {

    /* renamed from: a */
    private zzavu f11921a;

    public zzbio(zzavu zzavuVar) {
        this.f11921a = zzavuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbil
    public final void zzk(Map<String, String> map) {
        this.f11921a.zzao(Boolean.parseBoolean(map.get("content_url_opted_out")));
    }
}

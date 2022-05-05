package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbiq.class */
public final class zzbiq implements zzbil {

    /* renamed from: a */
    private zzavu f11923a;

    public zzbiq(zzavu zzavuVar) {
        this.f11923a = zzavuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbil
    public final void zzk(Map<String, String> map) {
        this.f11923a.zzap(Boolean.parseBoolean(map.get("content_vertical_opted_out")));
    }
}

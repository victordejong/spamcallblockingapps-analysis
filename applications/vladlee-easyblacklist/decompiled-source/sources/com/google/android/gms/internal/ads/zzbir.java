package com.google.android.gms.internal.ads;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbir.class */
public final class zzbir implements zzbil {

    /* renamed from: a */
    private final zzavu f11924a;

    public zzbir(zzavu zzavuVar) {
        this.f11924a = zzavuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbil
    public final void zzk(Map<String, String> map) {
        String str = map.get("key");
        String str2 = map.get(AppMeasurementSdk.ConditionalUserProperty.VALUE);
        if ("auto_collect_location".equals(str)) {
            this.f11924a.zzaq(Boolean.parseBoolean(str2));
        }
    }
}

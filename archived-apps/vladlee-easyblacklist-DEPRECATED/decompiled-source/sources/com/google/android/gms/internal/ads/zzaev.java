package com.google.android.gms.internal.ads;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaev.class */
public final class zzaev implements zzafn<Object> {

    /* renamed from: a */
    private final zzaey f10888a;

    public zzaev(zzaey zzaeyVar) {
        this.f10888a = zzaeyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzafn
    public final void zza(Object obj, Map<String, String> map) {
        String str = map.get(AppMeasurementSdk.ConditionalUserProperty.NAME);
        if (str == null) {
            zzavs.zzez("App event with no name parameter.");
        } else {
            this.f10888a.onAppEvent(str, map.get("info"));
        }
    }
}

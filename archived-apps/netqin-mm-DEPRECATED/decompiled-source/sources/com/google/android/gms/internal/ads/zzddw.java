package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzddw.class */
public final class zzddw implements zzdgu<Bundle> {

    /* renamed from: a */
    public final Location f27190a;

    public zzddw(Location location) {
        this.f27190a = location;
    }

    @Override // com.google.android.gms.internal.ads.zzdgu
    /* renamed from: a */
    public final /* synthetic */ void mo13578a(Bundle bundle) {
        Bundle bundle2 = bundle;
        if (this.f27190a != null) {
            Bundle bundle3 = new Bundle();
            float accuracy = this.f27190a.getAccuracy();
            long time = this.f27190a.getTime();
            long latitude = (long) (this.f27190a.getLatitude() * 1.0E7d);
            bundle3.putFloat("radius", accuracy * 1000.0f);
            bundle3.putLong("lat", latitude);
            bundle3.putLong("long", (long) (this.f27190a.getLongitude() * 1.0E7d));
            bundle3.putLong("time", time * 1000);
            bundle2.putBundle("uule", bundle3);
        }
    }
}

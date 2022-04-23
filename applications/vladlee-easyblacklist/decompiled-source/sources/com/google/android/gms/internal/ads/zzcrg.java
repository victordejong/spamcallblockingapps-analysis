package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcrg.class */
public final class zzcrg implements zzcty<Bundle> {

    /* renamed from: a */
    private final double f13779a;

    /* renamed from: b */
    private final boolean f13780b;

    public zzcrg(double d, boolean z) {
        this.f13779a = d;
        this.f13780b = z;
    }

    @Override // com.google.android.gms.internal.ads.zzcty
    public final /* synthetic */ void zzr(Bundle bundle) {
        Bundle bundle2 = bundle;
        Bundle zza = zzdaa.zza(bundle2, "device");
        bundle2.putBundle("device", zza);
        Bundle zza2 = zzdaa.zza(zza, "battery");
        zza.putBundle("battery", zza2);
        zza2.putBoolean("is_charging", this.f13780b);
        zza2.putDouble("battery_level", this.f13779a);
    }
}

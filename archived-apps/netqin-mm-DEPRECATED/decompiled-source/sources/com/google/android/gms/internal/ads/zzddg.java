package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzddg.class */
public final class zzddg implements zzdgu<Bundle> {

    /* renamed from: a */
    public final double f27163a;

    /* renamed from: b */
    public final boolean f27164b;

    public zzddg(double d, boolean z) {
        this.f27163a = d;
        this.f27164b = z;
    }

    @Override // com.google.android.gms.internal.ads.zzdgu
    /* renamed from: a */
    public final /* synthetic */ void mo13578a(Bundle bundle) {
        Bundle bundle2 = bundle;
        Bundle a = zzdot.m13397a(bundle2, "device");
        bundle2.putBundle("device", a);
        Bundle a2 = zzdot.m13397a(a, "battery");
        a.putBundle("battery", a2);
        a2.putBoolean("is_charging", this.f27164b);
        a2.putDouble("battery_level", this.f27163a);
    }
}

package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzder.class */
public final class zzder implements zzdgu<Bundle> {

    /* renamed from: a */
    public final Bundle f27215a;

    public zzder(Bundle bundle) {
        this.f27215a = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzdgu
    /* renamed from: a */
    public final /* synthetic */ void mo13578a(Bundle bundle) {
        Bundle bundle2 = bundle;
        Bundle a = zzdot.m13397a(bundle2, "device");
        a.putBundle("android_mem_info", this.f27215a);
        bundle2.putBundle("device", a);
    }
}

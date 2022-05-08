package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcsc.class */
public final class zzcsc implements zzcty<Bundle> {

    /* renamed from: a */
    private final Bundle f13808a;

    public zzcsc(Bundle bundle) {
        this.f13808a = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzcty
    public final /* synthetic */ void zzr(Bundle bundle) {
        Bundle bundle2 = bundle;
        Bundle zza = zzdaa.zza(bundle2, "device");
        zza.putBundle("android_mem_info", this.f13808a);
        bundle2.putBundle("device", zza);
    }
}

package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdpi.class */
public final class zzdpi implements zzeoy<Clock> {
    public zzdpi(zzdpf zzdpfVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        Clock d = DefaultClock.m17089d();
        zzepe.m12187a(d, "Cannot return null from a non-@Nullable @Provides method");
        return d;
    }
}

package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdaj.class */
public final class zzdaj implements zzdxg<Clock> {

    /* renamed from: a */
    private final zzdag f14110a;

    public zzdaj(zzdag zzdagVar) {
        this.f14110a = zzdagVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (Clock) zzdxm.zza(DefaultClock.getInstance(), "Cannot return null from a non-@Nullable @Provides method");
    }
}

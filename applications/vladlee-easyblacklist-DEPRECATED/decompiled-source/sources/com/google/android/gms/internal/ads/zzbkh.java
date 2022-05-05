package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbkh.class */
public final class zzbkh implements zzdxg<zzbqp> {

    /* renamed from: a */
    private final zzdxp<ScheduledExecutorService> f12040a;

    /* renamed from: b */
    private final zzdxp<Clock> f12041b;

    public zzbkh(zzdxp<ScheduledExecutorService> zzdxpVar, zzdxp<Clock> zzdxpVar2) {
        this.f12040a = zzdxpVar;
        this.f12041b = zzdxpVar2;
    }

    public static zzbqp zza(ScheduledExecutorService scheduledExecutorService, Clock clock) {
        return (zzbqp) zzdxm.zza(new zzbqp(scheduledExecutorService, clock), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return zza(this.f12040a.get(), this.f12041b.get());
    }
}

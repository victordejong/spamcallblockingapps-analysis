package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdbw.class */
public final class zzdbw implements zzdxg<ScheduledExecutorService> {

    /* renamed from: a */
    private final zzdxp<ThreadFactory> f14161a;

    public zzdbw(zzdxp<ThreadFactory> zzdxpVar) {
        this.f14161a = zzdxpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (ScheduledExecutorService) zzdxm.zza(new ScheduledThreadPoolExecutor(1, this.f14161a.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}

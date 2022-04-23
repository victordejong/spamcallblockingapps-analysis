package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdhg.class */
public final class zzdhg {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static Executor m3544a(Executor executor, zzdfs<?> zzdfsVar) {
        zzdei.checkNotNull(executor);
        zzdei.checkNotNull(zzdfsVar);
        return executor == acj.INSTANCE ? executor : new act(executor, zzdfsVar);
    }

    public static zzdhd zza(ExecutorService executorService) {
        return executorService instanceof zzdhd ? (zzdhd) executorService : executorService instanceof ScheduledExecutorService ? new acx((ScheduledExecutorService) executorService) : new acu(executorService);
    }

    public static Executor zzarw() {
        return acj.INSTANCE;
    }
}

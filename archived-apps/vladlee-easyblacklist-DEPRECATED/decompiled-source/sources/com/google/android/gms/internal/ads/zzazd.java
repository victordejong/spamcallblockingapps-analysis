package com.google.android.gms.internal.ads;

import com.google.android.gms.common.api.Api;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzazd.class */
public final class zzazd {
    public static final zzdhd zzdwf;
    public static final zzdhd zzdwg;
    public static final zzdhd zzdwe = m4193a(new ThreadPoolExecutor(2, (int) Api.BaseClientBuilder.API_PRIORITY_OTHER, 10, TimeUnit.SECONDS, new SynchronousQueue(), m4194a("Default")));
    public static final ScheduledExecutorService zzdwh = new ScheduledThreadPoolExecutor(3, m4194a("Schedule"));
    public static final zzdhd zzdwi = m4193a(new ExecutorC1891gb());
    public static final zzdhd zzdwj = m4193a(zzdhg.zzarw());

    static {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(5, 5, 10L, TimeUnit.SECONDS, new LinkedBlockingQueue(), m4194a("Loader"));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        zzdwf = m4193a(threadPoolExecutor);
        ThreadPoolExecutor threadPoolExecutor2 = new ThreadPoolExecutor(1, 1, 10L, TimeUnit.SECONDS, new LinkedBlockingQueue(), m4194a("Activeview"));
        threadPoolExecutor2.allowCoreThreadTimeOut(true);
        zzdwg = m4193a(threadPoolExecutor2);
    }

    /* renamed from: a */
    private static zzdhd m4193a(Executor executor) {
        return new C1890ga(executor, (byte) 0);
    }

    /* renamed from: a */
    private static ThreadFactory m4194a(String str) {
        return new ThreadFactoryC1888fz(str);
    }
}

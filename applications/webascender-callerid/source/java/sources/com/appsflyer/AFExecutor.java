package com.appsflyer;

import android.net.TrafficStats;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/appsflyer/AFExecutor.class */
public class AFExecutor {

    /* renamed from: ǃ */
    private static AFExecutor f2851;

    /* renamed from: ı */
    final ThreadFactory f2852 = new ThreadFactory() { // from class: com.appsflyer.AFExecutor.1
        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(final Runnable runnable) {
            return new Thread(new Runnable() { // from class: com.appsflyer.AFExecutor.1.2
                @Override // java.lang.Runnable
                public final void run() {
                    TrafficStats.setThreadStatsTag("AppsFlyer".hashCode());
                    runnable.run();
                }
            });
        }
    };

    /* renamed from: ɩ */
    ScheduledExecutorService f2853;

    /* renamed from: Ι */
    Executor f2854;

    /* renamed from: ι */
    ScheduledExecutorService f2855;

    private AFExecutor() {
    }

    public static AFExecutor getInstance() {
        if (f2851 == null) {
            f2851 = new AFExecutor();
        }
        return f2851;
    }

    /* renamed from: ı */
    static void m4148(ExecutorService executorService) {
        try {
            try {
                AFLogger.afRDLog("shut downing executor ...");
                executorService.shutdown();
                executorService.awaitTermination(10L, TimeUnit.SECONDS);
                if (!executorService.isTerminated()) {
                    AFLogger.afRDLog("killing non-finished tasks");
                }
                executorService.shutdownNow();
            } catch (InterruptedException e) {
                AFLogger.afRDLog("InterruptedException!!!");
                if (!executorService.isTerminated()) {
                    AFLogger.afRDLog("killing non-finished tasks");
                }
                executorService.shutdownNow();
            }
        } catch (Throwable th) {
            if (!executorService.isTerminated()) {
                AFLogger.afRDLog("killing non-finished tasks");
            }
            executorService.shutdownNow();
            throw th;
        }
    }

    public Executor getThreadPoolExecutor() {
        Executor executor = this.f2854;
        if (executor == null || ((executor instanceof ThreadPoolExecutor) && (((ThreadPoolExecutor) executor).isShutdown() || ((ThreadPoolExecutor) this.f2854).isTerminated() || ((ThreadPoolExecutor) this.f2854).isTerminating()))) {
            this.f2854 = Executors.newFixedThreadPool(2, this.f2852);
        }
        return this.f2854;
    }

    /* renamed from: Ι */
    public final ScheduledThreadPoolExecutor m4147() {
        ScheduledExecutorService scheduledExecutorService = this.f2853;
        if (scheduledExecutorService == null || scheduledExecutorService.isShutdown() || this.f2853.isTerminated()) {
            this.f2853 = Executors.newScheduledThreadPool(2, this.f2852);
        }
        return (ScheduledThreadPoolExecutor) this.f2853;
    }
}

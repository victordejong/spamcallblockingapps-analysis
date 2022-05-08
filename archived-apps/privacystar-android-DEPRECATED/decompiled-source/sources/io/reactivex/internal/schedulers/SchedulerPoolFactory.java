package io.reactivex.internal.schedulers;

import io.reactivex.plugins.RxJavaPlugins;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/schedulers/SchedulerPoolFactory.class */
public final class SchedulerPoolFactory {
    public static final boolean PURGE_ENABLED;
    static final String PURGE_ENABLED_KEY = "rx2.purge-enabled";
    public static final int PURGE_PERIOD_SECONDS;
    static final String PURGE_PERIOD_SECONDS_KEY = "rx2.purge-period-seconds";
    static final AtomicReference<ScheduledExecutorService> PURGE_THREAD = new AtomicReference<>();
    static final Map<ScheduledThreadPoolExecutor, Object> POOLS = new ConcurrentHashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/schedulers/SchedulerPoolFactory$ScheduledTask.class */
    public static final class ScheduledTask implements Runnable {
        ScheduledTask() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Iterator it = new ArrayList(SchedulerPoolFactory.POOLS.keySet()).iterator();
                while (it.hasNext()) {
                    ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = (ScheduledThreadPoolExecutor) it.next();
                    if (scheduledThreadPoolExecutor.isShutdown()) {
                        SchedulerPoolFactory.POOLS.remove(scheduledThreadPoolExecutor);
                    } else {
                        scheduledThreadPoolExecutor.purge();
                    }
                }
            } catch (Throwable th) {
                RxJavaPlugins.onError(th);
            }
        }
    }

    static {
        Properties properties = System.getProperties();
        boolean z = properties.containsKey(PURGE_ENABLED_KEY) ? Boolean.getBoolean(PURGE_ENABLED_KEY) : true;
        int i = 1;
        if (z) {
            i = 1;
            if (properties.containsKey(PURGE_PERIOD_SECONDS_KEY)) {
                i = Integer.getInteger(PURGE_PERIOD_SECONDS_KEY, 1).intValue();
            }
        }
        PURGE_ENABLED = z;
        PURGE_PERIOD_SECONDS = i;
        start();
    }

    private SchedulerPoolFactory() {
        throw new IllegalStateException("No instances!");
    }

    public static ScheduledExecutorService create(ThreadFactory threadFactory) {
        ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(1, threadFactory);
        if (PURGE_ENABLED && (newScheduledThreadPool instanceof ScheduledThreadPoolExecutor)) {
            POOLS.put((ScheduledThreadPoolExecutor) newScheduledThreadPool, newScheduledThreadPool);
        }
        return newScheduledThreadPool;
    }

    public static void shutdown() {
        ScheduledExecutorService scheduledExecutorService = PURGE_THREAD.get();
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdownNow();
        }
        POOLS.clear();
    }

    public static void start() {
        if (PURGE_ENABLED) {
            while (true) {
                ScheduledExecutorService scheduledExecutorService = PURGE_THREAD.get();
                if (scheduledExecutorService == null || scheduledExecutorService.isShutdown()) {
                    ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(1, new RxThreadFactory("RxSchedulerPurge"));
                    if (PURGE_THREAD.compareAndSet(scheduledExecutorService, newScheduledThreadPool)) {
                        newScheduledThreadPool.scheduleAtFixedRate(new ScheduledTask(), PURGE_PERIOD_SECONDS, PURGE_PERIOD_SECONDS, TimeUnit.SECONDS);
                        return;
                    }
                    newScheduledThreadPool.shutdownNow();
                } else {
                    return;
                }
            }
        }
    }
}

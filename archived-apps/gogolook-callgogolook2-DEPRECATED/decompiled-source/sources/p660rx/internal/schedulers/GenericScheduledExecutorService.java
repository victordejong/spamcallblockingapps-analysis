package p660rx.internal.schedulers;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: rx.internal.schedulers.GenericScheduledExecutorService */
/* loaded from: classes3-dex2jar.jar:rx/internal/schedulers/GenericScheduledExecutorService.class */
public final class GenericScheduledExecutorService implements SchedulerLifecycle {
    public static int roundRobin;
    public final AtomicReference<ScheduledExecutorService[]> executor = new AtomicReference<>(NONE);
    public static final ScheduledExecutorService[] NONE = new ScheduledExecutorService[0];
    public static final ScheduledExecutorService SHUTDOWN = Executors.newScheduledThreadPool(0);
    public static final GenericScheduledExecutorService INSTANCE = new GenericScheduledExecutorService();

    static {
        SHUTDOWN.shutdown();
    }

    public GenericScheduledExecutorService() {
        start();
    }

    public static ScheduledExecutorService getInstance() {
        ScheduledExecutorService[] scheduledExecutorServiceArr = INSTANCE.executor.get();
        if (scheduledExecutorServiceArr == NONE) {
            return SHUTDOWN;
        }
        int i = roundRobin + 1;
        int i2 = i;
        if (i >= scheduledExecutorServiceArr.length) {
            i2 = 0;
        }
        roundRobin = i2;
        return scheduledExecutorServiceArr[i2];
    }

    @Override // p660rx.internal.schedulers.SchedulerLifecycle
    public void shutdown() {
        ScheduledExecutorService[] scheduledExecutorServiceArr;
        ScheduledExecutorService[] scheduledExecutorServiceArr2;
        do {
            scheduledExecutorServiceArr = this.executor.get();
            scheduledExecutorServiceArr2 = NONE;
            if (scheduledExecutorServiceArr == scheduledExecutorServiceArr2) {
                return;
            }
        } while (!this.executor.compareAndSet(scheduledExecutorServiceArr, scheduledExecutorServiceArr2));
        for (ScheduledExecutorService scheduledExecutorService : scheduledExecutorServiceArr) {
            NewThreadWorker.deregisterExecutor(scheduledExecutorService);
            scheduledExecutorService.shutdownNow();
        }
    }

    public void start() {
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        int i = availableProcessors;
        if (availableProcessors > 4) {
            i = availableProcessors / 2;
        }
        int i2 = i;
        if (i > 8) {
            i2 = 8;
        }
        ScheduledExecutorService[] scheduledExecutorServiceArr = new ScheduledExecutorService[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            scheduledExecutorServiceArr[i3] = GenericScheduledExecutorServiceFactory.create();
        }
        if (this.executor.compareAndSet(NONE, scheduledExecutorServiceArr)) {
            for (ScheduledExecutorService scheduledExecutorService : scheduledExecutorServiceArr) {
                if (!NewThreadWorker.tryEnableCancelPolicy(scheduledExecutorService) && (scheduledExecutorService instanceof ScheduledThreadPoolExecutor)) {
                    NewThreadWorker.registerExecutor((ScheduledThreadPoolExecutor) scheduledExecutorService);
                }
            }
            return;
        }
        for (ScheduledExecutorService scheduledExecutorService2 : scheduledExecutorServiceArr) {
            scheduledExecutorService2.shutdownNow();
        }
    }
}

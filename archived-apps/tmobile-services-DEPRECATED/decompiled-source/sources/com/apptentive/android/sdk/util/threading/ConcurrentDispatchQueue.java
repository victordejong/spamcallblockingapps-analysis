package com.apptentive.android.sdk.util.threading;

import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/util/threading/ConcurrentDispatchQueue.class */
public class ConcurrentDispatchQueue extends DispatchQueue implements ThreadFactory {
    private static final int NUMBER_OF_CORES = Runtime.getRuntime().availableProcessors();
    private final AtomicInteger threadNumber = new AtomicInteger(1);
    private final ScheduledThreadPoolExecutor threadPoolExecutor;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ConcurrentDispatchQueue(String str) {
        super(str);
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(NUMBER_OF_CORES, this);
        this.threadPoolExecutor = scheduledThreadPoolExecutor;
        scheduledThreadPoolExecutor.setMaximumPoolSize(NUMBER_OF_CORES);
    }

    @Override // com.apptentive.android.sdk.util.threading.DispatchQueue
    protected void dispatch(DispatchTask dispatchTask, long j) {
        if (j > 0) {
            this.threadPoolExecutor.schedule(dispatchTask, j, TimeUnit.MILLISECONDS);
        } else {
            this.threadPoolExecutor.execute(dispatchTask);
        }
    }

    @Override // com.apptentive.android.sdk.util.threading.DispatchQueue
    public boolean isCurrent() {
        return false;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        return new Thread(runnable, getName() + " (thread-" + this.threadNumber.getAndIncrement() + ")");
    }
}

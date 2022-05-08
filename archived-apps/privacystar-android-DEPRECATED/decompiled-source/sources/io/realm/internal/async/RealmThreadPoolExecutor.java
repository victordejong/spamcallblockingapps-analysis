package io.realm.internal.async;

import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.io.File;
import java.io.FileFilter;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/async/RealmThreadPoolExecutor.class */
public class RealmThreadPoolExecutor extends ThreadPoolExecutor {
    private static final int CORE_POOL_SIZE = calculateCorePoolSize();
    private static final int QUEUE_SIZE = 100;
    private static final String SYS_CPU_DIR = "/sys/devices/system/cpu/";
    private boolean isPaused;
    private ReentrantLock pauseLock = new ReentrantLock();
    private Condition unpaused = this.pauseLock.newCondition();

    private RealmThreadPoolExecutor(int i, int i2) {
        super(i, i2, 0L, TimeUnit.MILLISECONDS, new ArrayBlockingQueue(100));
    }

    @SuppressFBWarnings({"DMI_HARDCODED_ABSOLUTE_FILENAME"})
    private static int calculateCorePoolSize() {
        int countFilesInDir = countFilesInDir(SYS_CPU_DIR, "cpu[0-9]+");
        int i = countFilesInDir;
        if (countFilesInDir <= 0) {
            i = Runtime.getRuntime().availableProcessors();
        }
        int i2 = 1;
        if (i > 0) {
            i2 = 1 + (i * 2);
        }
        return i2;
    }

    private static int countFilesInDir(String str, String str2) {
        final Pattern compile = Pattern.compile(str2);
        try {
            File[] listFiles = new File(str).listFiles(new FileFilter() { // from class: io.realm.internal.async.RealmThreadPoolExecutor.1
                @Override // java.io.FileFilter
                public boolean accept(File file) {
                    return compile.matcher(file.getName()).matches();
                }
            });
            return listFiles == null ? 0 : listFiles.length;
        } catch (SecurityException e) {
            return 0;
        }
    }

    public static RealmThreadPoolExecutor newDefaultExecutor() {
        return new RealmThreadPoolExecutor(CORE_POOL_SIZE, CORE_POOL_SIZE);
    }

    public static RealmThreadPoolExecutor newSingleThreadExecutor() {
        return new RealmThreadPoolExecutor(1, 1);
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    protected void beforeExecute(Thread thread, Runnable runnable) {
        super.beforeExecute(thread, runnable);
        this.pauseLock.lock();
        while (this.isPaused) {
            try {
                try {
                    this.unpaused.await();
                } catch (InterruptedException e) {
                    thread.interrupt();
                }
            } finally {
                this.pauseLock.unlock();
            }
        }
    }

    public void pause() {
        this.pauseLock.lock();
        try {
            this.isPaused = true;
        } finally {
            this.pauseLock.unlock();
        }
    }

    public void resume() {
        this.pauseLock.lock();
        try {
            this.isPaused = false;
            this.unpaused.signalAll();
        } finally {
            this.pauseLock.unlock();
        }
    }

    public Future<?> submitTransaction(Runnable runnable) {
        return super.submit(new BgPriorityRunnable(runnable));
    }
}

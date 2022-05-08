package androidx.work.impl.utils;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import java.util.ArrayDeque;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/SerialExecutor.class */
public class SerialExecutor implements Executor {
    public volatile Runnable mActive;
    public final Executor mExecutor;
    public final ArrayDeque<Task> mTasks = new ArrayDeque<>();
    public final Object mLock = new Object();

    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/SerialExecutor$Task.class */
    public static class Task implements Runnable {
        public final Runnable mRunnable;
        public final SerialExecutor mSerialExecutor;

        public Task(@NonNull SerialExecutor serialExecutor, @NonNull Runnable runnable) {
            this.mSerialExecutor = serialExecutor;
            this.mRunnable = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.mRunnable.run();
            } finally {
                this.mSerialExecutor.scheduleNext();
            }
        }
    }

    public SerialExecutor(@NonNull Executor executor) {
        this.mExecutor = executor;
    }

    @Override // java.util.concurrent.Executor
    public void execute(@NonNull Runnable runnable) {
        synchronized (this.mLock) {
            this.mTasks.add(new Task(this, runnable));
            if (this.mActive == null) {
                scheduleNext();
            }
        }
    }

    @NonNull
    @VisibleForTesting
    public Executor getDelegatedExecutor() {
        return this.mExecutor;
    }

    public boolean hasPendingTasks() {
        boolean z;
        synchronized (this.mLock) {
            z = !this.mTasks.isEmpty();
        }
        return z;
    }

    public void scheduleNext() {
        synchronized (this.mLock) {
            Task poll = this.mTasks.poll();
            this.mActive = poll;
            if (poll != null) {
                this.mExecutor.execute(this.mActive);
            }
        }
    }
}

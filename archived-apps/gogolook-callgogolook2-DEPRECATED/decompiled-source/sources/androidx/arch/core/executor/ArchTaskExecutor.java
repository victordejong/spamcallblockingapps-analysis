package androidx.arch.core.executor;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.util.concurrent.Executor;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes-dex2jar.jar:androidx/arch/core/executor/ArchTaskExecutor.class */
public class ArchTaskExecutor extends TaskExecutor {
    public static volatile ArchTaskExecutor sInstance;
    @NonNull
    public TaskExecutor mDefaultTaskExecutor = new DefaultTaskExecutor();
    @NonNull
    public TaskExecutor mDelegate = this.mDefaultTaskExecutor;
    @NonNull
    public static final Executor sMainThreadExecutor = new Executor() { // from class: androidx.arch.core.executor.ArchTaskExecutor.1
        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            ArchTaskExecutor.getInstance().postToMainThread(runnable);
        }
    };
    @NonNull
    public static final Executor sIOThreadExecutor = new Executor() { // from class: androidx.arch.core.executor.ArchTaskExecutor.2
        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            ArchTaskExecutor.getInstance().executeOnDiskIO(runnable);
        }
    };

    @NonNull
    public static Executor getIOThreadExecutor() {
        return sIOThreadExecutor;
    }

    @NonNull
    public static ArchTaskExecutor getInstance() {
        if (sInstance != null) {
            return sInstance;
        }
        synchronized (ArchTaskExecutor.class) {
            try {
                if (sInstance == null) {
                    sInstance = new ArchTaskExecutor();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return sInstance;
    }

    @NonNull
    public static Executor getMainThreadExecutor() {
        return sMainThreadExecutor;
    }

    @Override // androidx.arch.core.executor.TaskExecutor
    public void executeOnDiskIO(Runnable runnable) {
        this.mDelegate.executeOnDiskIO(runnable);
    }

    @Override // androidx.arch.core.executor.TaskExecutor
    public boolean isMainThread() {
        return this.mDelegate.isMainThread();
    }

    @Override // androidx.arch.core.executor.TaskExecutor
    public void postToMainThread(Runnable runnable) {
        this.mDelegate.postToMainThread(runnable);
    }

    public void setDelegate(@Nullable TaskExecutor taskExecutor) {
        TaskExecutor taskExecutor2 = taskExecutor;
        if (taskExecutor == null) {
            taskExecutor2 = this.mDefaultTaskExecutor;
        }
        this.mDelegate = taskExecutor2;
    }
}

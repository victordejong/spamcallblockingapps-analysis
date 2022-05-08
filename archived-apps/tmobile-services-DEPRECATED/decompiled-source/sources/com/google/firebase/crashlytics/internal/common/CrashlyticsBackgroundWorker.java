package com.google.firebase.crashlytics.internal.common;

import androidx.annotation.NonNull;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/common/CrashlyticsBackgroundWorker.class */
public class CrashlyticsBackgroundWorker {
    private final ExecutorService executorService;
    private Task<Void> tail = Tasks.m10820e(null);
    private final Object tailLock = new Object();
    private ThreadLocal<Boolean> isExecutorThread = new ThreadLocal<>();

    public CrashlyticsBackgroundWorker(ExecutorService executorService) {
        this.executorService = executorService;
        executorService.submit(new Runnable() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsBackgroundWorker.1
            @Override // java.lang.Runnable
            public void run() {
                CrashlyticsBackgroundWorker.this.isExecutorThread.set(Boolean.TRUE);
            }
        });
    }

    private <T> Task<Void> ignoreResult(Task<T> task) {
        return task.mo10789g(this.executorService, (Continuation<T, Void>) new Continuation<T, Void>() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsBackgroundWorker.4
            @Override // com.google.android.gms.tasks.Continuation
            public Void then(@NonNull Task<T> task2) throws Exception {
                return null;
            }
        });
    }

    private boolean isRunningOnThread() {
        return Boolean.TRUE.equals(this.isExecutorThread.get());
    }

    private <T> Continuation<Void, T> newContinuation(final Callable<T> callable) {
        return new Continuation<Void, T>() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsBackgroundWorker.3
            /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.Object] */
            @Override // com.google.android.gms.tasks.Continuation
            public T then(@NonNull Task<Void> task) throws Exception {
                return callable.call();
            }
        };
    }

    public void checkRunningOnThread() {
        if (!isRunningOnThread()) {
            throw new IllegalStateException("Not running on background worker thread as intended.");
        }
    }

    public Executor getExecutor() {
        return this.executorService;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Task<Void> submit(final Runnable runnable) {
        return submit(new Callable<Void>() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsBackgroundWorker.2
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                runnable.run();
                return null;
            }
        });
    }

    public <T> Task<T> submit(Callable<T> callable) {
        Task<T> g;
        synchronized (this.tailLock) {
            g = this.tail.mo10789g(this.executorService, newContinuation(callable));
            this.tail = ignoreResult(g);
        }
        return g;
    }

    public <T> Task<T> submitTask(Callable<Task<T>> callable) {
        Task<T> h;
        synchronized (this.tailLock) {
            h = this.tail.mo10788h(this.executorService, newContinuation(callable));
            this.tail = ignoreResult(h);
        }
        return h;
    }
}

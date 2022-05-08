package com.crashlytics.android.core;

import android.os.Looper;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import p000a.p001a.p002a.p003a.C0137d;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/CrashlyticsBackgroundWorker.class */
class CrashlyticsBackgroundWorker {
    private final ExecutorService executorService;

    public CrashlyticsBackgroundWorker(ExecutorService executorService) {
        this.executorService = executorService;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Future<?> submit(final Runnable runnable) {
        try {
            return this.executorService.submit(new Runnable() { // from class: com.crashlytics.android.core.CrashlyticsBackgroundWorker.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        runnable.run();
                    } catch (Exception e) {
                        C0137d.m10155c().mo10130c(CrashlyticsCore.TAG, "Failed to execute task.", e);
                    }
                }
            });
        } catch (RejectedExecutionException e) {
            C0137d.m10155c().mo10135a(CrashlyticsCore.TAG, "Executor is shut down because we're handling a fatal crash.");
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public <T> Future<T> submit(final Callable<T> callable) {
        try {
            return this.executorService.submit(new Callable<T>() { // from class: com.crashlytics.android.core.CrashlyticsBackgroundWorker.2
                /* JADX WARN: Type inference failed for: r0v4, types: [T, java.lang.Object] */
                @Override // java.util.concurrent.Callable
                public T call() {
                    try {
                        return callable.call();
                    } catch (Exception e) {
                        C0137d.m10155c().mo10130c(CrashlyticsCore.TAG, "Failed to execute task.", e);
                        return null;
                    }
                }
            });
        } catch (RejectedExecutionException e) {
            C0137d.m10155c().mo10135a(CrashlyticsCore.TAG, "Executor is shut down because we're handling a fatal crash.");
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public <T> T submitAndWait(Callable<T> callable) {
        try {
            return Looper.getMainLooper() == Looper.myLooper() ? this.executorService.submit(callable).get(4L, TimeUnit.SECONDS) : this.executorService.submit(callable).get();
        } catch (RejectedExecutionException e) {
            C0137d.m10155c().mo10135a(CrashlyticsCore.TAG, "Executor is shut down because we're handling a fatal crash.");
            return null;
        } catch (Exception e2) {
            C0137d.m10155c().mo10130c(CrashlyticsCore.TAG, "Failed to execute task.", e2);
            return null;
        }
    }
}

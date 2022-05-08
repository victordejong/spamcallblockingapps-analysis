package com.google.android.datatransport.runtime;

import com.google.android.datatransport.runtime.logging.Logging;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/SafeLoggingExecutor.class */
class SafeLoggingExecutor implements Executor {

    /* renamed from: f */
    private final Executor f6640f;

    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/SafeLoggingExecutor$SafeLoggingRunnable.class */
    static class SafeLoggingRunnable implements Runnable {

        /* renamed from: f */
        private final Runnable f6641f;

        SafeLoggingRunnable(Runnable runnable) {
            this.f6641f = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f6641f.run();
            } catch (Exception e) {
                Logging.m15374c("Executor", "Background execution failure.", e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SafeLoggingExecutor(Executor executor) {
        this.f6640f = executor;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.f6640f.execute(new SafeLoggingRunnable(runnable));
    }
}

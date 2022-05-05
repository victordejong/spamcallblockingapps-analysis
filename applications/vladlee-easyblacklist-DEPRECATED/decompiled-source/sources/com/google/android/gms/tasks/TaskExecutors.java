package com.google.android.gms.tasks;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/TaskExecutors.class */
public final class TaskExecutors {
    public static final Executor MAIN_THREAD = new ExecutorC2884a();

    /* renamed from: a */
    static final Executor f17369a = new ExecutorC2907u();

    /* renamed from: com.google.android.gms.tasks.TaskExecutors$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/TaskExecutors$a.class */
    private static final class ExecutorC2884a implements Executor {

        /* renamed from: a */
        private final Handler f17370a = new Handler(Looper.getMainLooper());

        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            this.f17370a.post(runnable);
        }
    }

    private TaskExecutors() {
    }
}

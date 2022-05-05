package com.google.android.gms.tasks;

import java.util.concurrent.Executor;
/* renamed from: com.google.android.gms.tasks.u */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/u.class */
final class ExecutorC2907u implements Executor {
    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}

package com.google.android.gms.cloudmessaging;

import java.util.concurrent.Executor;
/* renamed from: com.google.android.gms.cloudmessaging.c0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/cloudmessaging/c0.class */
final /* synthetic */ class ExecutorC0785c0 implements Executor {

    /* renamed from: f */
    static final Executor f3273f = new ExecutorC0785c0();

    private ExecutorC0785c0() {
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}

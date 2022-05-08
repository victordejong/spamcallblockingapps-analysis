package com.google.firebase.analytics.connector;

import java.util.concurrent.Executor;
/* renamed from: com.google.firebase.analytics.connector.d */
/* loaded from: classes-dex2jar.jar:com/google/firebase/analytics/connector/d.class */
final /* synthetic */ class ExecutorC3143d implements Executor {

    /* renamed from: a */
    static final Executor f18966a = new ExecutorC3143d();

    private ExecutorC3143d() {
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}

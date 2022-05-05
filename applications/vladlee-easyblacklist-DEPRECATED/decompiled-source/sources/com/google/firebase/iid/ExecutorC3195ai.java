package com.google.firebase.iid;

import java.util.concurrent.Executor;
/* renamed from: com.google.firebase.iid.ai */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/ai.class */
final /* synthetic */ class ExecutorC3195ai implements Executor {

    /* renamed from: a */
    static final Executor f19076a = new ExecutorC3195ai();

    private ExecutorC3195ai() {
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}

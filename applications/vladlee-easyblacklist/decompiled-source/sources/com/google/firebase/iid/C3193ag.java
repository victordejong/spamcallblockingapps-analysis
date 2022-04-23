package com.google.firebase.iid;

import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: com.google.firebase.iid.ag */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/ag.class */
final class C3193ag {

    /* renamed from: a */
    private static final Executor f19069a = ExecutorC3195ai.f19076a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static final /* synthetic */ Thread m525a(Runnable runnable) {
        return new Thread(runnable, "firebase-iid-executor");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static Executor m526a() {
        return f19069a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static Executor m524b() {
        return new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), ThreadFactoryC3196aj.f19077a);
    }
}

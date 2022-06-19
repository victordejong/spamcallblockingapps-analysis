package com.google.android.gms.internal.measurement;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.measurement.q */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/q.class */
public final class ThreadFactoryC1374q implements ThreadFactory {

    /* renamed from: f */
    private final ThreadFactory f3950f = Executors.defaultThreadFactory();

    public ThreadFactoryC1374q(C1323h0 c1323h0) {
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread newThread = this.f3950f.newThread(runnable);
        newThread.setName("ScionFrontendApi");
        return newThread;
    }
}

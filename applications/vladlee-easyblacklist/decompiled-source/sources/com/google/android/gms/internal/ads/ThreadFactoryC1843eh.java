package com.google.android.gms.internal.ads;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.google.android.gms.internal.ads.eh */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/eh.class */
final class ThreadFactoryC1843eh implements ThreadFactory {

    /* renamed from: a */
    private final AtomicInteger f8420a = new AtomicInteger(1);

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        int andIncrement = this.f8420a.getAndIncrement();
        StringBuilder sb = new StringBuilder(42);
        sb.append("AdWorker(SCION_TASK_EXECUTOR) #");
        sb.append(andIncrement);
        return new Thread(runnable, sb.toString());
    }
}

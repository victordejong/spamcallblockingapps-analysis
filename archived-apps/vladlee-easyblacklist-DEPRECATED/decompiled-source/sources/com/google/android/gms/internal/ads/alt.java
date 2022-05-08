package com.google.android.gms.internal.ads;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/alt.class */
final class alt implements ThreadFactory {

    /* renamed from: a */
    private final ThreadFactory f7582a = Executors.defaultThreadFactory();

    /* renamed from: b */
    private final AtomicInteger f7583b = new AtomicInteger(1);

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread newThread = this.f7582a.newThread(runnable);
        int andIncrement = this.f7583b.getAndIncrement();
        StringBuilder sb = new StringBuilder(16);
        sb.append("gads-");
        sb.append(andIncrement);
        newThread.setName(sb.toString());
        return newThread;
    }
}

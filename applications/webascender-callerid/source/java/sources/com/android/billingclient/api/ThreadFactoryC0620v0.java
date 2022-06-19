package com.android.billingclient.api;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.android.billingclient.api.v0 */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/v0.class */
final class ThreadFactoryC0620v0 implements ThreadFactory {

    /* renamed from: f */
    private final ThreadFactory f2796f = Executors.defaultThreadFactory();

    /* renamed from: g */
    private final AtomicInteger f2797g = new AtomicInteger(1);

    ThreadFactoryC0620v0(d dVar) {
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread newThread = this.f2796f.newThread(runnable);
        int andIncrement = this.f2797g.getAndIncrement();
        StringBuilder sb = new StringBuilder(30);
        sb.append("PlayBillingLibrary-");
        sb.append(andIncrement);
        newThread.setName(sb.toString());
        return newThread;
    }
}

package com.google.android.gms.common.util.concurrent;

import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/concurrent/NamedThreadFactory.class */
public class NamedThreadFactory implements ThreadFactory {

    /* renamed from: a */
    private final String f7000a;

    /* renamed from: b */
    private final int f7001b;

    /* renamed from: c */
    private final ThreadFactory f7002c;

    public NamedThreadFactory(String str) {
        this(str, (byte) 0);
    }

    private NamedThreadFactory(String str, byte b) {
        this.f7002c = Executors.defaultThreadFactory();
        this.f7000a = (String) Preconditions.checkNotNull(str, "Name must not be null");
        this.f7001b = 0;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread newThread = this.f7002c.newThread(new RunnableC1689a(runnable));
        newThread.setName(this.f7000a);
        return newThread;
    }
}

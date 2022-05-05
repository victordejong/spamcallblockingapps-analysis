package com.google.android.gms.common.util.concurrent;

import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/concurrent/NumberedThreadFactory.class */
public class NumberedThreadFactory implements ThreadFactory {

    /* renamed from: a */
    private final String f7003a;

    /* renamed from: b */
    private final int f7004b;

    /* renamed from: c */
    private final AtomicInteger f7005c;

    /* renamed from: d */
    private final ThreadFactory f7006d;

    public NumberedThreadFactory(String str) {
        this(str, (byte) 0);
    }

    private NumberedThreadFactory(String str, byte b) {
        this.f7005c = new AtomicInteger();
        this.f7006d = Executors.defaultThreadFactory();
        this.f7003a = (String) Preconditions.checkNotNull(str, "Name must not be null");
        this.f7004b = 0;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread newThread = this.f7006d.newThread(new RunnableC1689a(runnable));
        String str = this.f7003a;
        int andIncrement = this.f7005c.getAndIncrement();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 13);
        sb.append(str);
        sb.append("[");
        sb.append(andIncrement);
        sb.append("]");
        newThread.setName(sb.toString());
        return newThread;
    }
}

package com.google.android.gms.common.util.p027r;

import com.google.android.gms.common.internal.C0931r;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.google.android.gms.common.util.r.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/r/b.class */
public class ThreadFactoryC0977b implements ThreadFactory {

    /* renamed from: f */
    private final String f3607f;

    /* renamed from: g */
    private final AtomicInteger f3608g;

    /* renamed from: h */
    private final ThreadFactory f3609h;

    public ThreadFactoryC0977b(String str) {
        this(str, 0);
    }

    private ThreadFactoryC0977b(String str, int i) {
        this.f3608g = new AtomicInteger();
        this.f3609h = Executors.defaultThreadFactory();
        C0931r.m3307l(str, "Name must not be null");
        this.f3607f = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread newThread = this.f3609h.newThread(new RunnableC0978c(runnable, 0));
        String str = this.f3607f;
        int andIncrement = this.f3608g.getAndIncrement();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 13);
        sb.append(str);
        sb.append("[");
        sb.append(andIncrement);
        sb.append("]");
        newThread.setName(sb.toString());
        return newThread;
    }
}

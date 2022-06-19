package com.google.android.gms.common.util.p027r;

import com.google.android.gms.common.internal.C0931r;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
/* renamed from: com.google.android.gms.common.util.r.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/r/a.class */
public class ThreadFactoryC0976a implements ThreadFactory {

    /* renamed from: f */
    private final String f3605f;

    /* renamed from: g */
    private final ThreadFactory f3606g;

    public ThreadFactoryC0976a(String str) {
        this(str, 0);
    }

    private ThreadFactoryC0976a(String str, int i) {
        this.f3606g = Executors.defaultThreadFactory();
        C0931r.m3307l(str, "Name must not be null");
        this.f3605f = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread newThread = this.f3606g.newThread(new RunnableC0978c(runnable, 0));
        newThread.setName(this.f3605f);
        return newThread;
    }
}

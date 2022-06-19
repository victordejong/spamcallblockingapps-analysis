package p067i.p068a.p082d.p084d;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: i.a.d.d.c */
/* loaded from: classes2-dex2jar.jar:i/a/d/d/c.class */
public final class ThreadFactoryC2088c implements ThreadFactory {

    /* renamed from: f */
    private final String f5686f;

    /* renamed from: g */
    private final AtomicInteger f5687g = new AtomicInteger();

    public ThreadFactoryC2088c(String str) {
        this.f5686f = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread newThread = Executors.defaultThreadFactory().newThread(runnable);
        try {
            newThread.setDaemon(true);
            newThread.setName(this.f5686f + "-" + this.f5687g.incrementAndGet());
        } catch (SecurityException e) {
        }
        return newThread;
    }
}

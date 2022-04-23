package p037i.p038a.p052d.p054d;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: i.a.d.d.c */
/* loaded from: classes2-dex2jar.jar:i/a/d/d/c.class */
public final class ThreadFactoryC0420c implements ThreadFactory {

    /* renamed from: f */
    private final String f1007f;

    /* renamed from: g */
    private final AtomicInteger f1008g = new AtomicInteger();

    public ThreadFactoryC0420c(String str) {
        this.f1007f = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread newThread = Executors.defaultThreadFactory().newThread(runnable);
        try {
            newThread.setDaemon(true);
            newThread.setName(this.f1007f + "-" + this.f1008g.incrementAndGet());
        } catch (SecurityException e) {
        }
        return newThread;
    }
}

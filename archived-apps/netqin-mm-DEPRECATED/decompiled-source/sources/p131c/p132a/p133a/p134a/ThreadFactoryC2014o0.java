package p131c.p132a.p133a.p134a;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: c.a.a.a.o0 */
/* loaded from: classes-dex2jar.jar:c/a/a/a/o0.class */
public final class ThreadFactoryC2014o0 implements ThreadFactory {

    /* renamed from: a */
    public final ThreadFactory f7873a = Executors.defaultThreadFactory();

    /* renamed from: b */
    public final AtomicInteger f7874b = new AtomicInteger(1);

    public ThreadFactoryC2014o0(C1987d dVar) {
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread newThread = this.f7873a.newThread(runnable);
        int andIncrement = this.f7874b.getAndIncrement();
        StringBuilder sb = new StringBuilder(30);
        sb.append("PlayBillingLibrary-");
        sb.append(andIncrement);
        newThread.setName(sb.toString());
        return newThread;
    }
}

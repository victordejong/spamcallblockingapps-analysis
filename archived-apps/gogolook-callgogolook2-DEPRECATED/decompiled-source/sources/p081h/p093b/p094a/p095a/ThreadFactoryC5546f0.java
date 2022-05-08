package p081h.p093b.p094a.p095a;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: h.b.a.a.f0 */
/* loaded from: classes-dex2jar.jar:h/b/a/a/f0.class */
public final class ThreadFactoryC5546f0 implements ThreadFactory {

    /* renamed from: a */
    public final ThreadFactory f13854a = Executors.defaultThreadFactory();

    /* renamed from: b */
    public final AtomicInteger f13855b = new AtomicInteger(1);

    public ThreadFactoryC5546f0(C5534b bVar) {
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread newThread = this.f13854a.newThread(runnable);
        int andIncrement = this.f13855b.getAndIncrement();
        StringBuilder sb = new StringBuilder(30);
        sb.append("PlayBillingLibrary-");
        sb.append(andIncrement);
        newThread.setName(sb.toString());
        return newThread;
    }
}

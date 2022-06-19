package p193e.p194a.p852i.p908w;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.i.w.g */
/* loaded from: classes3-dex2jar.jar:e/a/i/w/g.class */
public class ThreadFactoryC15249g implements ThreadFactory {

    /* renamed from: a */
    public final AtomicInteger f43419a = new AtomicInteger(1);

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        StringBuilder m8728C = C22128a.m8728C("AdManager-Worker-");
        m8728C.append(this.f43419a.getAndIncrement());
        Thread thread = new Thread(runnable, m8728C.toString());
        thread.setDaemon(true);
        thread.setPriority(5);
        return thread;
    }
}

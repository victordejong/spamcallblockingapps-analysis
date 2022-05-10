package p131c.p161d.p170b.p224d.p252g.p253a;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: c.d.b.d.g.a.gb0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/gb0.class */
public final class gb0 implements ThreadFactory {

    /* renamed from: a */
    public final ThreadFactory f13150a = Executors.defaultThreadFactory();

    /* renamed from: b */
    public final AtomicInteger f13151b = new AtomicInteger(1);

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread newThread = this.f13150a.newThread(runnable);
        int andIncrement = this.f13151b.getAndIncrement();
        StringBuilder sb = new StringBuilder(16);
        sb.append("gads-");
        sb.append(andIncrement);
        newThread.setName(sb.toString());
        return newThread;
    }
}

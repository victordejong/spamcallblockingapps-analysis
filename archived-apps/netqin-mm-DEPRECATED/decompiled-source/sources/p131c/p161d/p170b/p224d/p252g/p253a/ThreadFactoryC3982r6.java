package p131c.p161d.p170b.p224d.p252g.p253a;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: c.d.b.d.g.a.r6 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/r6.class */
public final class ThreadFactoryC3982r6 implements ThreadFactory {

    /* renamed from: a */
    public final AtomicInteger f14874a = new AtomicInteger(1);

    /* renamed from: b */
    public final /* synthetic */ String f14875b;

    public ThreadFactoryC3982r6(String str) {
        this.f14875b = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        String str = this.f14875b;
        int andIncrement = this.f14874a.getAndIncrement();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 23);
        sb.append("AdWorker(");
        sb.append(str);
        sb.append(") #");
        sb.append(andIncrement);
        return new Thread(runnable, sb.toString());
    }
}

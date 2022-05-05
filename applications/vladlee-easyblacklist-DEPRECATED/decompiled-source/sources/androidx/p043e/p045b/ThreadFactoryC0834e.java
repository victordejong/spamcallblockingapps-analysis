package androidx.p043e.p045b;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: androidx.e.b.e */
/* loaded from: classes-dex2jar.jar:androidx/e/b/e.class */
final class ThreadFactoryC0834e implements ThreadFactory {

    /* renamed from: a */
    private final AtomicInteger f3427a = new AtomicInteger(1);

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return new Thread(runnable, "ModernAsyncTask #" + this.f3427a.getAndIncrement());
    }
}

package p000a.p001a.p002a.p003a.p004a.p007c;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: a.a.a.a.a.c.b */
/* loaded from: classes-dex2jar.jar:a/a/a/a/a/c/b.class */
final class ThreadFactoryC0058b implements ThreadFactory {

    /* renamed from: a */
    private final AtomicInteger f133a = new AtomicInteger(1);

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return new Thread(runnable, "AsyncTask #" + this.f133a.getAndIncrement());
    }
}

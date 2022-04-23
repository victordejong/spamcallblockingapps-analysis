package androidx.p016a.p017a.p018a;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.a.a.a.e */
/* loaded from: classes-dex2jar.jar:androidx/a/a/a/e.class */
public final class ThreadFactoryC0229e implements ThreadFactory {

    /* renamed from: a */
    final /* synthetic */ C0228d f502a;

    /* renamed from: b */
    private final AtomicInteger f503b = new AtomicInteger(0);

    /* JADX INFO: Access modifiers changed from: package-private */
    public ThreadFactoryC0229e(C0228d dVar) {
        this.f502a = dVar;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread thread = new Thread(runnable);
        thread.setName(String.format("arch_disk_io_%d", Integer.valueOf(this.f503b.getAndIncrement())));
        return thread;
    }
}

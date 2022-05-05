package p000a.p001a.p002a.p003a.p004a.p006b;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: a.a.a.a.a.b.r */
/* loaded from: classes-dex2jar.jar:a/a/a/a/a/b/r.class */
public final class ThreadFactoryC0037r implements ThreadFactory {

    /* renamed from: a */
    final /* synthetic */ String f68a;

    /* renamed from: b */
    final /* synthetic */ AtomicLong f69b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ThreadFactoryC0037r(String str, AtomicLong atomicLong) {
        this.f68a = str;
        this.f69b = atomicLong;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread newThread = Executors.defaultThreadFactory().newThread(new C0038s(this, runnable));
        newThread.setName(this.f68a + this.f69b.getAndIncrement());
        return newThread;
    }
}

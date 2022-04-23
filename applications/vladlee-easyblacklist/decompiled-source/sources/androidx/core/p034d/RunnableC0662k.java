package androidx.core.p034d;

import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
/* renamed from: androidx.core.d.k */
/* loaded from: classes-dex2jar.jar:androidx/core/d/k.class */
final class RunnableC0662k implements Runnable {

    /* renamed from: a */
    final /* synthetic */ AtomicReference f2953a;

    /* renamed from: b */
    final /* synthetic */ Callable f2954b;

    /* renamed from: c */
    final /* synthetic */ ReentrantLock f2955c;

    /* renamed from: d */
    final /* synthetic */ AtomicBoolean f2956d;

    /* renamed from: e */
    final /* synthetic */ Condition f2957e;

    /* renamed from: f */
    final /* synthetic */ C0657g f2958f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC0662k(C0657g gVar, AtomicReference atomicReference, Callable callable, ReentrantLock reentrantLock, AtomicBoolean atomicBoolean, Condition condition) {
        this.f2958f = gVar;
        this.f2953a = atomicReference;
        this.f2954b = callable;
        this.f2955c = reentrantLock;
        this.f2956d = atomicBoolean;
        this.f2957e = condition;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f2953a.set(this.f2954b.call());
        } catch (Exception e) {
        }
        this.f2955c.lock();
        try {
            this.f2956d.set(false);
            this.f2957e.signal();
        } finally {
            this.f2955c.unlock();
        }
    }
}

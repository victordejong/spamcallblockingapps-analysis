package androidx.core.p034d;

import android.os.Handler;
import android.os.HandlerThread;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import p000a.p001a.p002a.p003a.p004a.p006b.AbstractC0007a;
/* renamed from: androidx.core.d.g */
/* loaded from: classes-dex2jar.jar:androidx/core/d/g.class */
public final class C0657g {

    /* renamed from: b */
    private HandlerThread f2939b;

    /* renamed from: c */
    private Handler f2940c;

    /* renamed from: h */
    private final String f2945h;

    /* renamed from: a */
    private final Object f2938a = new Object();

    /* renamed from: e */
    private Handler.Callback f2942e = new C0659h(this);

    /* renamed from: g */
    private final int f2944g = 10;

    /* renamed from: f */
    private final int f2943f = AbstractC0007a.DEFAULT_TIMEOUT;

    /* renamed from: d */
    private int f2941d = 0;

    /* renamed from: androidx.core.d.g$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/d/g$a.class */
    public interface AbstractC0658a<T> {
        /* renamed from: a */
        void mo8584a(T t);
    }

    public C0657g(String str) {
        this.f2945h = str;
    }

    /* renamed from: b */
    private void m8585b(Runnable runnable) {
        synchronized (this.f2938a) {
            if (this.f2939b == null) {
                this.f2939b = new HandlerThread(this.f2945h, this.f2944g);
                this.f2939b.start();
                this.f2940c = new Handler(this.f2939b.getLooper(), this.f2942e);
                this.f2941d++;
            }
            this.f2940c.removeMessages(0);
            this.f2940c.sendMessage(this.f2940c.obtainMessage(1, runnable));
        }
    }

    /* renamed from: a */
    public final <T> T m8587a(Callable<T> callable, int i) {
        ReentrantLock reentrantLock = new ReentrantLock();
        Condition newCondition = reentrantLock.newCondition();
        AtomicReference atomicReference = new AtomicReference();
        AtomicBoolean atomicBoolean = new AtomicBoolean(true);
        m8585b(new RunnableC0662k(this, atomicReference, callable, reentrantLock, atomicBoolean, newCondition));
        reentrantLock.lock();
        try {
            if (!atomicBoolean.get()) {
                return (T) atomicReference.get();
            }
            long nanos = TimeUnit.MILLISECONDS.toNanos(i);
            do {
                try {
                    nanos = newCondition.awaitNanos(nanos);
                } catch (InterruptedException e) {
                }
                if (!atomicBoolean.get()) {
                    return (T) atomicReference.get();
                }
            } while (nanos > 0);
            throw new InterruptedException("timeout");
        } finally {
            reentrantLock.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m8589a() {
        synchronized (this.f2938a) {
            if (!this.f2940c.hasMessages(1)) {
                this.f2939b.quit();
                this.f2939b = null;
                this.f2940c = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m8588a(Runnable runnable) {
        runnable.run();
        synchronized (this.f2938a) {
            this.f2940c.removeMessages(0);
            this.f2940c.sendMessageDelayed(this.f2940c.obtainMessage(0), this.f2943f);
        }
    }

    /* renamed from: a */
    public final <T> void m8586a(Callable<T> callable, AbstractC0658a<T> aVar) {
        m8585b(new RunnableC0660i(this, callable, new Handler(), aVar));
    }
}

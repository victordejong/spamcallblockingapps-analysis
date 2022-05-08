package io.reactivex.internal.schedulers;

import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableContainer;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicReferenceArray;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/schedulers/ScheduledRunnable.class */
public final class ScheduledRunnable extends AtomicReferenceArray<Object> implements Runnable, Callable<Object>, Disposable {

    /* renamed from: g */
    static final Object f19297g = new Object();

    /* renamed from: h */
    static final Object f19298h = new Object();

    /* renamed from: i */
    static final Object f19299i = new Object();

    /* renamed from: j */
    static final Object f19300j = new Object();
    private static final long serialVersionUID = -6120223772001106981L;

    /* renamed from: f */
    final Runnable f19301f;

    public ScheduledRunnable(Runnable runnable, DisposableContainer disposableContainer) {
        super(3);
        this.f19301f = runnable;
        lazySet(0, disposableContainer);
    }

    /* renamed from: a */
    public void m3514a(Future<?> future) {
        Object obj;
        do {
            obj = get(1);
            if (obj != f19300j) {
                if (obj == f19298h) {
                    future.cancel(false);
                    return;
                } else if (obj == f19299i) {
                    future.cancel(true);
                    return;
                }
            } else {
                return;
            }
        } while (!compareAndSet(1, obj, future));
    }

    @Override // java.util.concurrent.Callable
    public Object call() {
        run();
        return null;
    }

    @Override // io.reactivex.disposables.Disposable
    public void dispose() {
        Object obj;
        Object obj2;
        while (true) {
            Object obj3 = get(1);
            if (obj3 == f19300j || obj3 == f19298h || obj3 == f19299i) {
                break;
            }
            boolean z = get(2) != Thread.currentThread();
            if (compareAndSet(1, obj3, z ? f19299i : f19298h)) {
                if (obj3 != null) {
                    ((Future) obj3).cancel(z);
                }
            }
        }
        do {
            obj = get(0);
            if (obj == f19300j || obj == (obj2 = f19297g) || obj == null) {
                return;
            }
        } while (!compareAndSet(0, obj, obj2));
        ((DisposableContainer) obj).mo4424c(this);
    }

    @Override // io.reactivex.disposables.Disposable
    public boolean isDisposed() {
        boolean z = false;
        Object obj = get(0);
        if (obj == f19297g || obj == f19300j) {
            z = true;
        }
        return z;
    }

    @Override // java.lang.Runnable
    public void run() {
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5;
        boolean compareAndSet;
        lazySet(2, Thread.currentThread());
        try {
            this.f19301f.run();
        } finally {
            try {
                lazySet(2, null);
                obj = get(0);
                if (obj == f19297g) {
                    ((DisposableContainer) obj).mo4424c(this);
                }
                do {
                    obj2 = get(1);
                    if (obj2 == f19298h) {
                        return;
                    }
                    return;
                } while (!compareAndSet(1, obj2, f19300j));
            } catch (Throwable th) {
                do {
                    if (obj3 != obj4) {
                        if (obj3 == obj5) {
                            break;
                        }
                    } else {
                        break;
                    }
                } while (!compareAndSet);
            }
        }
        lazySet(2, null);
        obj = get(0);
        if (!(obj == f19297g || !compareAndSet(0, obj, f19300j) || obj == null)) {
            ((DisposableContainer) obj).mo4424c(this);
        }
        do {
            obj2 = get(1);
            if (obj2 == f19298h || obj2 == f19299i) {
                return;
            }
        } while (!compareAndSet(1, obj2, f19300j));
    }
}

package io.reactivex.internal.schedulers;

import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicReferenceArray;
import p530d.p541c.p543b0.p544a.AbstractC9648a;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/schedulers/ScheduledRunnable.class */
public final class ScheduledRunnable extends AtomicReferenceArray<Object> implements Runnable, Callable<Object>, AbstractC9861b {
    public static final int FUTURE_INDEX = 1;
    public static final int PARENT_INDEX = 0;
    public static final int THREAD_INDEX = 2;
    public static final long serialVersionUID = -6120223772001106981L;
    public final Runnable actual;
    public static final Object PARENT_DISPOSED = new Object();
    public static final Object SYNC_DISPOSED = new Object();
    public static final Object ASYNC_DISPOSED = new Object();
    public static final Object DONE = new Object();

    public ScheduledRunnable(Runnable runnable, AbstractC9648a aVar) {
        super(3);
        this.actual = runnable;
        lazySet(0, aVar);
    }

    @Override // java.util.concurrent.Callable
    public Object call() {
        run();
        return null;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        Object obj;
        Object obj2;
        while (true) {
            Object obj3 = get(1);
            if (obj3 == DONE || obj3 == SYNC_DISPOSED || obj3 == ASYNC_DISPOSED) {
                break;
            }
            boolean z = get(2) != Thread.currentThread();
            if (compareAndSet(1, obj3, z ? ASYNC_DISPOSED : SYNC_DISPOSED)) {
                if (obj3 != null) {
                    ((Future) obj3).cancel(z);
                }
            }
        }
        do {
            obj = get(0);
            if (obj == DONE || obj == (obj2 = PARENT_DISPOSED) || obj == null) {
                return;
            }
        } while (!compareAndSet(0, obj, obj2));
        ((AbstractC9648a) obj).mo1827c(this);
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        boolean z = false;
        Object obj = get(0);
        if (obj == PARENT_DISPOSED || obj == DONE) {
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
            this.actual.run();
        } finally {
            try {
                lazySet(2, null);
                obj = get(0);
                if (obj == PARENT_DISPOSED) {
                    ((AbstractC9648a) obj).mo1827c(this);
                }
                do {
                    obj2 = get(1);
                    if (obj2 == SYNC_DISPOSED) {
                        return;
                    }
                    return;
                } while (!compareAndSet(1, obj2, DONE));
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
        if (!(obj == PARENT_DISPOSED || !compareAndSet(0, obj, DONE) || obj == null)) {
            ((AbstractC9648a) obj).mo1827c(this);
        }
        do {
            obj2 = get(1);
            if (obj2 == SYNC_DISPOSED || obj2 == ASYNC_DISPOSED) {
                return;
            }
        } while (!compareAndSet(1, obj2, DONE));
    }

    public void setFuture(Future<?> future) {
        Object obj;
        do {
            obj = get(1);
            if (obj != DONE) {
                if (obj == SYNC_DISPOSED) {
                    future.cancel(false);
                    return;
                } else if (obj == ASYNC_DISPOSED) {
                    future.cancel(true);
                    return;
                }
            } else {
                return;
            }
        } while (!compareAndSet(1, obj, future));
    }
}

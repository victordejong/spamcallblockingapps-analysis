package com.google.common.util.concurrent;

import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.LockSupport;
/* loaded from: classes2-dex2jar.jar:com/google/common/util/concurrent/InterruptibleTask.class */
public abstract class InterruptibleTask<T> extends AtomicReference<Runnable> implements Runnable {
    public static final int MAX_BUSY_WAIT_SPINS = 1000;
    public static final Runnable DONE = new RunnableC7770b();
    public static final Runnable INTERRUPTING = new RunnableC7770b();
    public static final Runnable PARKED = new RunnableC7770b();

    /* renamed from: com.google.common.util.concurrent.InterruptibleTask$b */
    /* loaded from: classes2-dex2jar.jar:com/google/common/util/concurrent/InterruptibleTask$b.class */
    public static final class RunnableC7770b implements Runnable {
        public RunnableC7770b() {
        }

        @Override // java.lang.Runnable
        public void run() {
        }
    }

    public abstract void afterRanInterruptibly(T t, Throwable th);

    public final void interruptTask() {
        Runnable runnable = get();
        if ((runnable instanceof Thread) && compareAndSet(runnable, INTERRUPTING)) {
            try {
                ((Thread) runnable).interrupt();
                if (getAndSet(DONE) == PARKED) {
                    LockSupport.unpark((Thread) runnable);
                }
            } catch (Throwable th) {
                if (getAndSet(DONE) == PARKED) {
                    LockSupport.unpark((Thread) runnable);
                }
                throw th;
            }
        }
    }

    public abstract boolean isDone();

    @Override // java.lang.Runnable
    public final void run() {
        T runInterruptibly;
        Thread currentThread = Thread.currentThread();
        if (compareAndSet(null, currentThread)) {
            boolean z = !isDone();
            if (z) {
                try {
                    runInterruptibly = runInterruptibly();
                } catch (Throwable th) {
                    if (!compareAndSet(currentThread, DONE)) {
                        Runnable runnable = get();
                        boolean z2 = false;
                        int i = 0;
                        while (true) {
                            if (runnable != INTERRUPTING && runnable != PARKED) {
                                break;
                            }
                            int i2 = i + 1;
                            if (i2 > 1000) {
                                Runnable runnable2 = PARKED;
                                if (runnable != runnable2) {
                                    z2 = z2;
                                    if (!compareAndSet(INTERRUPTING, runnable2)) {
                                    }
                                }
                                z2 = Thread.interrupted() || z2;
                                LockSupport.park(this);
                            } else {
                                Thread.yield();
                                z2 = z2;
                            }
                            runnable = get();
                            i = i2;
                        }
                        if (z2) {
                            currentThread.interrupt();
                        }
                    }
                    if (z) {
                        afterRanInterruptibly(null, th);
                        return;
                    }
                    return;
                }
            } else {
                runInterruptibly = null;
            }
            if (!compareAndSet(currentThread, DONE)) {
                Runnable runnable3 = get();
                boolean z3 = false;
                int i3 = 0;
                while (true) {
                    if (runnable3 != INTERRUPTING && runnable3 != PARKED) {
                        break;
                    }
                    int i4 = i3 + 1;
                    if (i4 > 1000) {
                        Runnable runnable4 = PARKED;
                        if (runnable3 != runnable4) {
                            z3 = z3;
                            if (!compareAndSet(INTERRUPTING, runnable4)) {
                            }
                        }
                        z3 = Thread.interrupted() || z3;
                        LockSupport.park(this);
                    } else {
                        Thread.yield();
                        z3 = z3;
                    }
                    runnable3 = get();
                    i3 = i4;
                }
                if (z3) {
                    currentThread.interrupt();
                }
            }
            if (z) {
                afterRanInterruptibly(runInterruptibly, null);
            }
        }
    }

    public abstract T runInterruptibly() throws Exception;

    public abstract String toPendingString();

    @Override // java.util.concurrent.atomic.AtomicReference
    public final String toString() {
        String str;
        Runnable runnable = get();
        if (runnable == DONE) {
            str = "running=[DONE]";
        } else if (runnable == INTERRUPTING) {
            str = "running=[INTERRUPTED]";
        } else if (runnable instanceof Thread) {
            str = "running=[RUNNING ON " + ((Thread) runnable).getName() + "]";
        } else {
            str = "running=[NOT STARTED YET]";
        }
        return str + ", " + toPendingString();
    }
}

package io.reactivex.internal.schedulers;

import java.util.concurrent.atomic.AtomicBoolean;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/schedulers/ExecutorScheduler$ExecutorWorker$BooleanRunnable.class */
public final class ExecutorScheduler$ExecutorWorker$BooleanRunnable extends AtomicBoolean implements Runnable, AbstractC9861b {
    public static final long serialVersionUID = -2421395018820541164L;
    public final Runnable actual;

    public ExecutorScheduler$ExecutorWorker$BooleanRunnable(Runnable runnable) {
        this.actual = runnable;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        lazySet(true);
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return get();
    }

    @Override // java.lang.Runnable
    public void run() {
        if (!get()) {
            try {
                this.actual.run();
            } finally {
                lazySet(true);
            }
        }
    }
}

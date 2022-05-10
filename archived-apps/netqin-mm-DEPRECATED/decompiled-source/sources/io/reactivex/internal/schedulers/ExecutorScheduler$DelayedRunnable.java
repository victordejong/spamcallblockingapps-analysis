package io.reactivex.internal.schedulers;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.functions.Functions;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/schedulers/ExecutorScheduler$DelayedRunnable.class */
public final class ExecutorScheduler$DelayedRunnable extends AtomicReference<Runnable> implements Runnable, AbstractC9861b {
    public static final long serialVersionUID = -4101336210206799084L;
    public final SequentialDisposable timed = new SequentialDisposable();
    public final SequentialDisposable direct = new SequentialDisposable();

    public ExecutorScheduler$DelayedRunnable(Runnable runnable) {
        super(runnable);
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        if (getAndSet(null) != null) {
            this.timed.dispose();
            this.direct.dispose();
        }
    }

    public Runnable getWrappedRunnable() {
        Runnable runnable = get();
        if (runnable == null) {
            runnable = Functions.f38320b;
        }
        return runnable;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return get() == null;
    }

    @Override // java.lang.Runnable
    public void run() {
        Runnable runnable = get();
        if (runnable != null) {
            try {
                runnable.run();
            } finally {
                lazySet(false);
                this.timed.lazySet(DisposableHelper.DISPOSED);
                this.direct.lazySet(DisposableHelper.DISPOSED);
            }
        }
    }
}

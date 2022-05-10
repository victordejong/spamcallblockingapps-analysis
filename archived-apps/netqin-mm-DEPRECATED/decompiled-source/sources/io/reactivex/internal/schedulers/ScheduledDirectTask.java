package io.reactivex.internal.schedulers;

import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/schedulers/ScheduledDirectTask.class */
public final class ScheduledDirectTask extends AbstractDirectTask implements Callable<Void> {
    public static final long serialVersionUID = 1811839108042568751L;

    public ScheduledDirectTask(Runnable runnable) {
        super(runnable);
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.util.concurrent.Callable
    public Void call() throws Exception {
        this.runner = Thread.currentThread();
        try {
            this.runnable.run();
            lazySet(AbstractDirectTask.FINISHED);
            this.runner = null;
            return null;
        } catch (Throwable th) {
            lazySet(AbstractDirectTask.FINISHED);
            this.runner = null;
            throw th;
        }
    }

    @Override // io.reactivex.internal.schedulers.AbstractDirectTask
    public /* bridge */ /* synthetic */ Runnable getWrappedRunnable() {
        return super.getWrappedRunnable();
    }
}

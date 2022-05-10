package io.reactivex.disposables;

import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/disposables/FutureDisposable.class */
public final class FutureDisposable extends AtomicReference<Future<?>> implements AbstractC9861b {
    public static final long serialVersionUID = 6545242830671168775L;
    public final boolean allowInterrupt;

    public FutureDisposable(Future<?> future, boolean z) {
        super(future);
        this.allowInterrupt = z;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        Future<?> andSet = getAndSet(null);
        if (andSet != null) {
            andSet.cancel(this.allowInterrupt);
        }
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        Future<?> future = get();
        return future == null || future.isDone();
    }
}

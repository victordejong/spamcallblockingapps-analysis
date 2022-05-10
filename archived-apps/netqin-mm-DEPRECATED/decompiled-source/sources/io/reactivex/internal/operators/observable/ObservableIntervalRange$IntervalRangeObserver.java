package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableIntervalRange$IntervalRangeObserver.class */
public final class ObservableIntervalRange$IntervalRangeObserver extends AtomicReference<AbstractC9861b> implements AbstractC9861b, Runnable {
    public static final long serialVersionUID = 1891866368734007884L;
    public final AbstractC9844r<? super Long> actual;
    public long count;
    public final long end;

    public ObservableIntervalRange$IntervalRangeObserver(AbstractC9844r<? super Long> rVar, long j, long j2) {
        this.actual = rVar;
        this.count = j;
        this.end = j2;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return get() == DisposableHelper.DISPOSED;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (!isDisposed()) {
            long j = this.count;
            this.actual.onNext(Long.valueOf(j));
            if (j == this.end) {
                DisposableHelper.dispose(this);
                this.actual.onComplete();
                return;
            }
            this.count = j + 1;
        }
    }

    public void setResource(AbstractC9861b bVar) {
        DisposableHelper.setOnce(this, bVar);
    }
}

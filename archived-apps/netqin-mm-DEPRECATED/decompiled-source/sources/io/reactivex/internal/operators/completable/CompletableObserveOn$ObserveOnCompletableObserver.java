package io.reactivex.internal.operators.completable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9647b;
import p530d.p541c.AbstractC9845s;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableObserveOn$ObserveOnCompletableObserver.class */
public final class CompletableObserveOn$ObserveOnCompletableObserver extends AtomicReference<AbstractC9861b> implements AbstractC9647b, AbstractC9861b, Runnable {
    public static final long serialVersionUID = 8571289934935992137L;
    public final AbstractC9647b actual;
    public Throwable error;
    public final AbstractC9845s scheduler;

    public CompletableObserveOn$ObserveOnCompletableObserver(AbstractC9647b bVar, AbstractC9845s sVar) {
        this.actual = bVar;
        this.scheduler = sVar;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(get());
    }

    @Override // p530d.p541c.AbstractC9647b
    public void onComplete() {
        DisposableHelper.replace(this, this.scheduler.mo1854a(this));
    }

    @Override // p530d.p541c.AbstractC9647b
    public void onError(Throwable th) {
        this.error = th;
        DisposableHelper.replace(this, this.scheduler.mo1854a(this));
    }

    @Override // p530d.p541c.AbstractC9647b
    public void onSubscribe(AbstractC9861b bVar) {
        if (DisposableHelper.setOnce(this, bVar)) {
            this.actual.onSubscribe(this);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        Throwable th = this.error;
        if (th != null) {
            this.error = null;
            this.actual.onError(th);
            return;
        }
        this.actual.onComplete();
    }
}

package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9836k;
import p530d.p541c.AbstractC9845s;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeDelay$DelayMaybeObserver.class */
public final class MaybeDelay$DelayMaybeObserver<T> extends AtomicReference<AbstractC9861b> implements AbstractC9836k<T>, AbstractC9861b, Runnable {
    public static final long serialVersionUID = 5566860102500855068L;
    public final AbstractC9836k<? super T> actual;
    public final long delay;
    public Throwable error;
    public final AbstractC9845s scheduler;
    public final TimeUnit unit;
    public T value;

    public MaybeDelay$DelayMaybeObserver(AbstractC9836k<? super T> kVar, long j, TimeUnit timeUnit, AbstractC9845s sVar) {
        this.actual = kVar;
        this.delay = j;
        this.unit = timeUnit;
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

    @Override // p530d.p541c.AbstractC9836k
    public void onComplete() {
        schedule();
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onError(Throwable th) {
        this.error = th;
        schedule();
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onSubscribe(AbstractC9861b bVar) {
        if (DisposableHelper.setOnce(this, bVar)) {
            this.actual.onSubscribe(this);
        }
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onSuccess(T t) {
        this.value = t;
        schedule();
    }

    @Override // java.lang.Runnable
    public void run() {
        Throwable th = this.error;
        if (th != null) {
            this.actual.onError(th);
            return;
        }
        T t = this.value;
        if (t != null) {
            this.actual.onSuccess(t);
        } else {
            this.actual.onComplete();
        }
    }

    public void schedule() {
        DisposableHelper.replace(this, this.scheduler.mo1833a(this, this.delay, this.unit));
    }
}

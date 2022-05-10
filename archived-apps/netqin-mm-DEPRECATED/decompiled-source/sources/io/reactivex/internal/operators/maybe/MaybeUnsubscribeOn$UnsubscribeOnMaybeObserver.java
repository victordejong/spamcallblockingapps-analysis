package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9836k;
import p530d.p541c.AbstractC9845s;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeUnsubscribeOn$UnsubscribeOnMaybeObserver.class */
public final class MaybeUnsubscribeOn$UnsubscribeOnMaybeObserver<T> extends AtomicReference<AbstractC9861b> implements AbstractC9836k<T>, AbstractC9861b, Runnable {
    public static final long serialVersionUID = 3256698449646456986L;
    public final AbstractC9836k<? super T> actual;

    /* renamed from: ds */
    public AbstractC9861b f38480ds;
    public final AbstractC9845s scheduler;

    public MaybeUnsubscribeOn$UnsubscribeOnMaybeObserver(AbstractC9836k<? super T> kVar, AbstractC9845s sVar) {
        this.actual = kVar;
        this.scheduler = sVar;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        AbstractC9861b andSet = getAndSet(DisposableHelper.DISPOSED);
        if (andSet != DisposableHelper.DISPOSED) {
            this.f38480ds = andSet;
            this.scheduler.mo1854a(this);
        }
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(get());
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onComplete() {
        this.actual.onComplete();
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onError(Throwable th) {
        this.actual.onError(th);
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onSubscribe(AbstractC9861b bVar) {
        if (DisposableHelper.setOnce(this, bVar)) {
            this.actual.onSubscribe(this);
        }
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onSuccess(T t) {
        this.actual.onSuccess(t);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f38480ds.dispose();
    }
}

package io.reactivex.internal.operators.single;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9845s;
import p530d.p541c.AbstractC9851u;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleUnsubscribeOn$UnsubscribeOnSingleObserver.class */
public final class SingleUnsubscribeOn$UnsubscribeOnSingleObserver<T> extends AtomicReference<AbstractC9861b> implements AbstractC9851u<T>, AbstractC9861b, Runnable {
    public static final long serialVersionUID = 3256698449646456986L;
    public final AbstractC9851u<? super T> actual;

    /* renamed from: ds */
    public AbstractC9861b f38559ds;
    public final AbstractC9845s scheduler;

    public SingleUnsubscribeOn$UnsubscribeOnSingleObserver(AbstractC9851u<? super T> uVar, AbstractC9845s sVar) {
        this.actual = uVar;
        this.scheduler = sVar;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        AbstractC9861b andSet = getAndSet(DisposableHelper.DISPOSED);
        if (andSet != DisposableHelper.DISPOSED) {
            this.f38559ds = andSet;
            this.scheduler.mo1854a(this);
        }
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(get());
    }

    @Override // p530d.p541c.AbstractC9851u
    public void onError(Throwable th) {
        this.actual.onError(th);
    }

    @Override // p530d.p541c.AbstractC9851u
    public void onSubscribe(AbstractC9861b bVar) {
        if (DisposableHelper.setOnce(this, bVar)) {
            this.actual.onSubscribe(this);
        }
    }

    @Override // p530d.p541c.AbstractC9851u
    public void onSuccess(T t) {
        this.actual.onSuccess(t);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f38559ds.dispose();
    }
}

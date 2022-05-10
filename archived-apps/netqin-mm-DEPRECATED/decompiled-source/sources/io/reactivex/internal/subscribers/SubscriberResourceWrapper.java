package io.reactivex.internal.subscribers;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.p568x.AbstractC9861b;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/subscribers/SubscriberResourceWrapper.class */
public final class SubscriberResourceWrapper<T> extends AtomicReference<AbstractC9861b> implements AbstractC9829h<T>, AbstractC9861b, AbstractC10434d {
    public static final long serialVersionUID = -8612022020200669122L;
    public final AbstractC10433c<? super T> actual;
    public final AtomicReference<AbstractC10434d> subscription = new AtomicReference<>();

    public SubscriberResourceWrapper(AbstractC10433c<? super T> cVar) {
        this.actual = cVar;
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
        dispose();
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        SubscriptionHelper.cancel(this.subscription);
        DisposableHelper.dispose(this);
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return this.subscription.get() == SubscriptionHelper.CANCELLED;
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        DisposableHelper.dispose(this);
        this.actual.onComplete();
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        DisposableHelper.dispose(this);
        this.actual.onError(th);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        this.actual.onNext(t);
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        if (SubscriptionHelper.setOnce(this.subscription, dVar)) {
            this.actual.onSubscribe(this);
        }
    }

    @Override // p611j.p612a.AbstractC10434d
    public void request(long j) {
        if (SubscriptionHelper.validate(j)) {
            this.subscription.get().request(j);
        }
    }

    public void setResource(AbstractC9861b bVar) {
        DisposableHelper.set(this, bVar);
    }
}

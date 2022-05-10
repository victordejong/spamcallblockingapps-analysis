package io.reactivex.internal.operators.maybe;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.AbstractC9836k;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeDelayOtherPublisher$OtherSubscriber.class */
public final class MaybeDelayOtherPublisher$OtherSubscriber<T> extends AtomicReference<AbstractC10434d> implements AbstractC9829h<Object> {
    public static final long serialVersionUID = -1215060610805418006L;
    public final AbstractC9836k<? super T> actual;
    public Throwable error;
    public T value;

    public MaybeDelayOtherPublisher$OtherSubscriber(AbstractC9836k<? super T> kVar) {
        this.actual = kVar;
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
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

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        Throwable th2 = this.error;
        if (th2 == null) {
            this.actual.onError(th);
        } else {
            this.actual.onError(new CompositeException(th2, th));
        }
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(Object obj) {
        AbstractC10434d dVar = get();
        SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
        if (dVar != subscriptionHelper) {
            lazySet(subscriptionHelper);
            dVar.cancel();
            onComplete();
        }
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        SubscriptionHelper.setOnce(this, dVar, Long.MAX_VALUE);
    }
}

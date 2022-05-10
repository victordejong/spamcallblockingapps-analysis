package io.reactivex.internal.subscribers;

import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import p530d.p541c.AbstractC9829h;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/subscribers/DeferredScalarSubscriber.class */
public abstract class DeferredScalarSubscriber<T, R> extends DeferredScalarSubscription<R> implements AbstractC9829h<T> {
    public static final long serialVersionUID = 2984505488220891551L;
    public boolean hasValue;

    /* renamed from: s */
    public AbstractC10434d f38567s;

    public DeferredScalarSubscriber(AbstractC10433c<? super R> cVar) {
        super(cVar);
    }

    @Override // io.reactivex.internal.subscriptions.DeferredScalarSubscription, p611j.p612a.AbstractC10434d
    public void cancel() {
        super.cancel();
        this.f38567s.cancel();
    }

    public void onComplete() {
        if (this.hasValue) {
            complete(this.value);
        } else {
            this.actual.onComplete();
        }
    }

    public void onError(Throwable th) {
        this.value = null;
        this.actual.onError(th);
    }

    public void onSubscribe(AbstractC10434d dVar) {
        if (SubscriptionHelper.validate(this.f38567s, dVar)) {
            this.f38567s = dVar;
            this.actual.onSubscribe(this);
            dVar.request(Long.MAX_VALUE);
        }
    }
}

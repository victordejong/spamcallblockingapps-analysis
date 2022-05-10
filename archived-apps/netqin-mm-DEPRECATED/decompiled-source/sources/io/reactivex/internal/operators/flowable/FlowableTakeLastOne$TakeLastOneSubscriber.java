package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import p530d.p541c.AbstractC9829h;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableTakeLastOne$TakeLastOneSubscriber.class */
public final class FlowableTakeLastOne$TakeLastOneSubscriber<T> extends DeferredScalarSubscription<T> implements AbstractC9829h<T> {
    public static final long serialVersionUID = -5467847744262967226L;

    /* renamed from: s */
    public AbstractC10434d f38432s;

    public FlowableTakeLastOne$TakeLastOneSubscriber(AbstractC10433c<? super T> cVar) {
        super(cVar);
    }

    @Override // io.reactivex.internal.subscriptions.DeferredScalarSubscription, p611j.p612a.AbstractC10434d
    public void cancel() {
        super.cancel();
        this.f38432s.cancel();
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        T t = this.value;
        if (t != null) {
            complete(t);
        } else {
            this.actual.onComplete();
        }
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        this.value = null;
        this.actual.onError(th);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        this.value = t;
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        if (SubscriptionHelper.validate(this.f38432s, dVar)) {
            this.f38432s = dVar;
            this.actual.onSubscribe(this);
            dVar.request(Long.MAX_VALUE);
        }
    }
}

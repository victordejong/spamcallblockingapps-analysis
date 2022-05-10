package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.p542a0.AbstractC9639b;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p569y.C9863a;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableCollect$CollectSubscriber.class */
public final class FlowableCollect$CollectSubscriber<T, U> extends DeferredScalarSubscription<U> implements AbstractC9829h<T> {
    public static final long serialVersionUID = -3589550218733891694L;
    public final AbstractC9639b<? super U, ? super T> collector;
    public boolean done;

    /* renamed from: s */
    public AbstractC10434d f38341s;

    /* renamed from: u */
    public final U f38342u;

    public FlowableCollect$CollectSubscriber(AbstractC10433c<? super U> cVar, U u, AbstractC9639b<? super U, ? super T> bVar) {
        super(cVar);
        this.collector = bVar;
        this.f38342u = u;
    }

    @Override // io.reactivex.internal.subscriptions.DeferredScalarSubscription, p611j.p612a.AbstractC10434d
    public void cancel() {
        super.cancel();
        this.f38341s.cancel();
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        if (!this.done) {
            this.done = true;
            complete(this.f38342u);
        }
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        if (this.done) {
            C9815a.m1923b(th);
            return;
        }
        this.done = true;
        this.actual.onError(th);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        if (!this.done) {
            try {
                this.collector.m2102a((U) this.f38342u, t);
            } catch (Throwable th) {
                C9863a.m1822b(th);
                this.f38341s.cancel();
                onError(th);
            }
        }
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        if (SubscriptionHelper.validate(this.f38341s, dVar)) {
            this.f38341s = dVar;
            this.actual.onSubscribe(this);
            dVar.request(Long.MAX_VALUE);
        }
    }
}

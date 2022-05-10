package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.p542a0.AbstractC9640c;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p569y.C9863a;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableReduce$ReduceSubscriber.class */
public final class FlowableReduce$ReduceSubscriber<T> extends DeferredScalarSubscription<T> implements AbstractC9829h<T> {
    public static final long serialVersionUID = -4663883003264602070L;
    public final AbstractC9640c<T, T, T> reducer;

    /* renamed from: s */
    public AbstractC10434d f38411s;

    public FlowableReduce$ReduceSubscriber(AbstractC10433c<? super T> cVar, AbstractC9640c<T, T, T> cVar2) {
        super(cVar);
        this.reducer = cVar2;
    }

    @Override // io.reactivex.internal.subscriptions.DeferredScalarSubscription, p611j.p612a.AbstractC10434d
    public void cancel() {
        super.cancel();
        this.f38411s.cancel();
        this.f38411s = SubscriptionHelper.CANCELLED;
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        AbstractC10434d dVar = this.f38411s;
        SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
        if (dVar != subscriptionHelper) {
            this.f38411s = subscriptionHelper;
            T t = this.value;
            if (t != null) {
                complete(t);
            } else {
                this.actual.onComplete();
            }
        }
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        AbstractC10434d dVar = this.f38411s;
        SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
        if (dVar == subscriptionHelper) {
            C9815a.m1923b(th);
            return;
        }
        this.f38411s = subscriptionHelper;
        this.actual.onError(th);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        if (this.f38411s != SubscriptionHelper.CANCELLED) {
            T t2 = this.value;
            if (t2 == null) {
                this.value = t;
                return;
            }
            try {
                T apply = this.reducer.apply(t2, t);
                C9650a.m2095a((Object) apply, "The reducer returned a null value");
                this.value = apply;
            } catch (Throwable th) {
                C9863a.m1822b(th);
                this.f38411s.cancel();
                onError(th);
            }
        }
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        if (SubscriptionHelper.validate(this.f38411s, dVar)) {
            this.f38411s = dVar;
            this.actual.onSubscribe(this);
            dVar.request(Long.MAX_VALUE);
        }
    }
}

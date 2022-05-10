package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.p542a0.AbstractC9646i;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p569y.C9863a;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableAll$AllSubscriber.class */
public final class FlowableAll$AllSubscriber<T> extends DeferredScalarSubscription<Boolean> implements AbstractC9829h<T> {
    public static final long serialVersionUID = -3521127104134758517L;
    public boolean done;
    public final AbstractC9646i<? super T> predicate;

    /* renamed from: s */
    public AbstractC10434d f38337s;

    public FlowableAll$AllSubscriber(AbstractC10433c<? super Boolean> cVar, AbstractC9646i<? super T> iVar) {
        super(cVar);
        this.predicate = iVar;
    }

    @Override // io.reactivex.internal.subscriptions.DeferredScalarSubscription, p611j.p612a.AbstractC10434d
    public void cancel() {
        super.cancel();
        this.f38337s.cancel();
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        if (!this.done) {
            this.done = true;
            complete(true);
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
                if (!this.predicate.test(t)) {
                    this.done = true;
                    this.f38337s.cancel();
                    complete(false);
                }
            } catch (Throwable th) {
                C9863a.m1822b(th);
                this.f38337s.cancel();
                onError(th);
            }
        }
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        if (SubscriptionHelper.validate(this.f38337s, dVar)) {
            this.f38337s = dVar;
            this.actual.onSubscribe(this);
            dVar.request(Long.MAX_VALUE);
        }
    }
}

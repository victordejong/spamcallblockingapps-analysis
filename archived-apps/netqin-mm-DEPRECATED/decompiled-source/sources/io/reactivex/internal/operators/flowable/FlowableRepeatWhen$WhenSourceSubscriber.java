package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionArbiter;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.p561f0.AbstractC9817a;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableRepeatWhen$WhenSourceSubscriber.class */
public abstract class FlowableRepeatWhen$WhenSourceSubscriber<T, U> extends SubscriptionArbiter implements AbstractC9829h<T> {
    public static final long serialVersionUID = -5604623027276966720L;
    public final AbstractC10433c<? super T> actual;
    public final AbstractC9817a<U> processor;
    public long produced;
    public final AbstractC10434d receiver;

    public FlowableRepeatWhen$WhenSourceSubscriber(AbstractC10433c<? super T> cVar, AbstractC9817a<U> aVar, AbstractC10434d dVar) {
        this.actual = cVar;
        this.processor = aVar;
        this.receiver = dVar;
    }

    public final void again(U u) {
        long j = this.produced;
        if (j != 0) {
            this.produced = 0L;
            produced(j);
        }
        this.receiver.request(1L);
        this.processor.onNext(u);
    }

    @Override // io.reactivex.internal.subscriptions.SubscriptionArbiter, p611j.p612a.AbstractC10434d
    public final void cancel() {
        super.cancel();
        this.receiver.cancel();
    }

    @Override // p611j.p612a.AbstractC10433c
    public final void onNext(T t) {
        this.produced++;
        this.actual.onNext(t);
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public final void onSubscribe(AbstractC10434d dVar) {
        setSubscription(dVar);
    }
}

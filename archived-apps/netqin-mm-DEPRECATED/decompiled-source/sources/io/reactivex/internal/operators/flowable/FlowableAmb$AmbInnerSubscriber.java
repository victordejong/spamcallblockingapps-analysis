package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.p543b0.p548e.p550b.C9678b;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableAmb$AmbInnerSubscriber.class */
public final class FlowableAmb$AmbInnerSubscriber<T> extends AtomicReference<AbstractC10434d> implements AbstractC9829h<T>, AbstractC10434d {
    public static final long serialVersionUID = -1185974347409665484L;
    public final AbstractC10433c<? super T> actual;
    public final int index;
    public final AtomicLong missedRequested = new AtomicLong();
    public final C9678b<T> parent;
    public boolean won;

    public FlowableAmb$AmbInnerSubscriber(C9678b<T> bVar, int i, AbstractC10433c<? super T> cVar) {
        this.parent = bVar;
        this.index = i;
        this.actual = cVar;
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
        SubscriptionHelper.cancel(this);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        if (this.won) {
            this.actual.onComplete();
        } else {
            this.parent.m2087a(this.index);
            throw null;
        }
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        if (this.won) {
            this.actual.onError(th);
        } else {
            this.parent.m2087a(this.index);
            throw null;
        }
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        if (this.won) {
            this.actual.onNext(t);
        } else {
            this.parent.m2087a(this.index);
            throw null;
        }
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        SubscriptionHelper.deferredSetOnce(this, this.missedRequested, dVar);
    }

    @Override // p611j.p612a.AbstractC10434d
    public void request(long j) {
        SubscriptionHelper.deferredRequest(this, this.missedRequested, j);
    }
}

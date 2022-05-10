package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicBoolean;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.AbstractC9845s;
import p530d.p541c.p560e0.C9815a;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableUnsubscribeOn$UnsubscribeSubscriber.class */
public final class FlowableUnsubscribeOn$UnsubscribeSubscriber<T> extends AtomicBoolean implements AbstractC9829h<T>, AbstractC10434d {
    public static final long serialVersionUID = 1015244841293359600L;
    public final AbstractC10433c<? super T> actual;

    /* renamed from: s */
    public AbstractC10434d f38438s;
    public final AbstractC9845s scheduler;

    /* renamed from: io.reactivex.internal.operators.flowable.FlowableUnsubscribeOn$UnsubscribeSubscriber$a */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableUnsubscribeOn$UnsubscribeSubscriber$a.class */
    public final class RunnableC10409a implements Runnable {
        public RunnableC10409a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            FlowableUnsubscribeOn$UnsubscribeSubscriber.this.f38438s.cancel();
        }
    }

    public FlowableUnsubscribeOn$UnsubscribeSubscriber(AbstractC10433c<? super T> cVar, AbstractC9845s sVar) {
        this.actual = cVar;
        this.scheduler = sVar;
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
        if (compareAndSet(false, true)) {
            this.scheduler.mo1854a(new RunnableC10409a());
        }
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        if (!get()) {
            this.actual.onComplete();
        }
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        if (get()) {
            C9815a.m1923b(th);
        } else {
            this.actual.onError(th);
        }
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        if (!get()) {
            this.actual.onNext(t);
        }
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        if (SubscriptionHelper.validate(this.f38438s, dVar)) {
            this.f38438s = dVar;
            this.actual.onSubscribe(this);
        }
    }

    @Override // p611j.p612a.AbstractC10434d
    public void request(long j) {
        this.f38438s.request(j);
    }
}

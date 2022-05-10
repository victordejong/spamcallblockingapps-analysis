package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.AbstractC9845s;
import p530d.p541c.p543b0.p557i.C9800b;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableThrottleFirstTimed$DebounceTimedSubscriber.class */
public final class FlowableThrottleFirstTimed$DebounceTimedSubscriber<T> extends AtomicLong implements AbstractC9829h<T>, AbstractC10434d, Runnable {
    public static final long serialVersionUID = -9102637559663639004L;
    public final AbstractC10433c<? super T> actual;
    public boolean done;
    public volatile boolean gate;

    /* renamed from: s */
    public AbstractC10434d f38435s;
    public final long timeout;
    public final SequentialDisposable timer = new SequentialDisposable();
    public final TimeUnit unit;
    public final AbstractC9845s.AbstractC9848c worker;

    public FlowableThrottleFirstTimed$DebounceTimedSubscriber(AbstractC10433c<? super T> cVar, long j, TimeUnit timeUnit, AbstractC9845s.AbstractC9848c cVar2) {
        this.actual = cVar;
        this.timeout = j;
        this.unit = timeUnit;
        this.worker = cVar2;
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
        this.f38435s.cancel();
        this.worker.dispose();
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        if (!this.done) {
            this.done = true;
            this.actual.onComplete();
            this.worker.dispose();
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
        this.worker.dispose();
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        if (!this.done && !this.gate) {
            this.gate = true;
            if (get() != 0) {
                this.actual.onNext(t);
                C9800b.m2009c(this, 1L);
                AbstractC9861b bVar = this.timer.get();
                if (bVar != null) {
                    bVar.dispose();
                }
                this.timer.replace(this.worker.mo1832a(this, this.timeout, this.unit));
                return;
            }
            this.done = true;
            cancel();
            this.actual.onError(new MissingBackpressureException("Could not deliver value due to lack of requests"));
        }
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        if (SubscriptionHelper.validate(this.f38435s, dVar)) {
            this.f38435s = dVar;
            this.actual.onSubscribe(this);
            dVar.request(Long.MAX_VALUE);
        }
    }

    @Override // p611j.p612a.AbstractC10434d
    public void request(long j) {
        if (SubscriptionHelper.validate(j)) {
            C9800b.m2012a(this, j);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        this.gate = false;
    }
}

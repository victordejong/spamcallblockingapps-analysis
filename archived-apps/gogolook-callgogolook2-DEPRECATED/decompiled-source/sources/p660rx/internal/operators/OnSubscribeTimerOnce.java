package p660rx.internal.operators;

import java.util.concurrent.TimeUnit;
import p660rx.Observable;
import p660rx.Scheduler;
import p660rx.Subscriber;
import p660rx.exceptions.Exceptions;
import p660rx.functions.Action0;
/* renamed from: rx.internal.operators.OnSubscribeTimerOnce */
/* loaded from: classes3-dex2jar.jar:rx/internal/operators/OnSubscribeTimerOnce.class */
public final class OnSubscribeTimerOnce implements Observable.OnSubscribe<Long> {
    public final Scheduler scheduler;
    public final long time;
    public final TimeUnit unit;

    public OnSubscribeTimerOnce(long j, TimeUnit timeUnit, Scheduler scheduler) {
        this.time = j;
        this.unit = timeUnit;
        this.scheduler = scheduler;
    }

    public void call(final Subscriber<? super Long> subscriber) {
        Scheduler.Worker createWorker = this.scheduler.createWorker();
        subscriber.add(createWorker);
        createWorker.schedule(new Action0(this) { // from class: rx.internal.operators.OnSubscribeTimerOnce.1
            @Override // p660rx.functions.Action0
            public void call() {
                try {
                    subscriber.onNext(0L);
                    subscriber.onCompleted();
                } catch (Throwable th) {
                    Exceptions.throwOrReport(th, subscriber);
                }
            }
        }, this.time, this.unit);
    }
}

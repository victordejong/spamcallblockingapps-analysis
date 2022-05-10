package io.reactivex.internal.operators.parallel;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import p530d.p541c.p543b0.p557i.C9800b;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelJoin$JoinSubscriptionBase.class */
public abstract class ParallelJoin$JoinSubscriptionBase<T> extends AtomicInteger implements AbstractC10434d {
    public static final long serialVersionUID = 3100232009247827843L;
    public final AbstractC10433c<? super T> actual;
    public volatile boolean cancelled;
    public final ParallelJoin$JoinInnerSubscriber<T>[] subscribers;
    public final AtomicThrowable errors = new AtomicThrowable();
    public final AtomicLong requested = new AtomicLong();
    public final AtomicInteger done = new AtomicInteger();

    public ParallelJoin$JoinSubscriptionBase(AbstractC10433c<? super T> cVar, int i, int i2) {
        this.actual = cVar;
        ParallelJoin$JoinInnerSubscriber<T>[] parallelJoin$JoinInnerSubscriberArr = new ParallelJoin$JoinInnerSubscriber[i];
        for (int i3 = 0; i3 < i; i3++) {
            parallelJoin$JoinInnerSubscriberArr[i3] = new ParallelJoin$JoinInnerSubscriber<>(this, i2);
        }
        this.subscribers = parallelJoin$JoinInnerSubscriberArr;
        this.done.lazySet(i);
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
        if (!this.cancelled) {
            this.cancelled = true;
            cancelAll();
            if (getAndIncrement() == 0) {
                cleanup();
            }
        }
    }

    public void cancelAll() {
        int i = 0;
        while (true) {
            ParallelJoin$JoinInnerSubscriber<T>[] parallelJoin$JoinInnerSubscriberArr = this.subscribers;
            if (i < parallelJoin$JoinInnerSubscriberArr.length) {
                parallelJoin$JoinInnerSubscriberArr[i].cancel();
                i++;
            } else {
                return;
            }
        }
    }

    public void cleanup() {
        int i = 0;
        while (true) {
            ParallelJoin$JoinInnerSubscriber<T>[] parallelJoin$JoinInnerSubscriberArr = this.subscribers;
            if (i < parallelJoin$JoinInnerSubscriberArr.length) {
                parallelJoin$JoinInnerSubscriberArr[i].queue = null;
                i++;
            } else {
                return;
            }
        }
    }

    public abstract void drain();

    public abstract void onComplete();

    public abstract void onError(Throwable th);

    public abstract void onNext(ParallelJoin$JoinInnerSubscriber<T> parallelJoin$JoinInnerSubscriber, T t);

    @Override // p611j.p612a.AbstractC10434d
    public void request(long j) {
        if (SubscriptionHelper.validate(j)) {
            C9800b.m2012a(this.requested, j);
            drain();
        }
    }
}

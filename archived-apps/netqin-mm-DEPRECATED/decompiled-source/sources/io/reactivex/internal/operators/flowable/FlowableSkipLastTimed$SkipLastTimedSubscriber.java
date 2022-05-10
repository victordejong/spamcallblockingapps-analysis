package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.AbstractC9845s;
import p530d.p541c.p543b0.p554f.C9772a;
import p530d.p541c.p543b0.p557i.C9800b;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableSkipLastTimed$SkipLastTimedSubscriber.class */
public final class FlowableSkipLastTimed$SkipLastTimedSubscriber<T> extends AtomicInteger implements AbstractC9829h<T>, AbstractC10434d {
    public static final long serialVersionUID = -5677354903406201275L;
    public final AbstractC10433c<? super T> actual;
    public volatile boolean cancelled;
    public final boolean delayError;
    public volatile boolean done;
    public Throwable error;
    public final C9772a<Object> queue;
    public final AtomicLong requested = new AtomicLong();

    /* renamed from: s */
    public AbstractC10434d f38425s;
    public final AbstractC9845s scheduler;
    public final long time;
    public final TimeUnit unit;

    public FlowableSkipLastTimed$SkipLastTimedSubscriber(AbstractC10433c<? super T> cVar, long j, TimeUnit timeUnit, AbstractC9845s sVar, int i, boolean z) {
        this.actual = cVar;
        this.time = j;
        this.unit = timeUnit;
        this.scheduler = sVar;
        this.queue = new C9772a<>(i);
        this.delayError = z;
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
        if (!this.cancelled) {
            this.cancelled = true;
            this.f38425s.cancel();
            if (getAndIncrement() == 0) {
                this.queue.clear();
            }
        }
    }

    public boolean checkTerminated(boolean z, boolean z2, AbstractC10433c<? super T> cVar, boolean z3) {
        if (this.cancelled) {
            this.queue.clear();
            return true;
        } else if (!z) {
            return false;
        } else {
            if (!z3) {
                Throwable th = this.error;
                if (th != null) {
                    this.queue.clear();
                    cVar.onError(th);
                    return true;
                } else if (!z2) {
                    return false;
                } else {
                    cVar.onComplete();
                    return true;
                }
            } else if (!z2) {
                return false;
            } else {
                Throwable th2 = this.error;
                if (th2 != null) {
                    cVar.onError(th2);
                    return true;
                }
                cVar.onComplete();
                return true;
            }
        }
    }

    public void drain() {
        int addAndGet;
        if (getAndIncrement() == 0) {
            AbstractC10433c<? super T> cVar = this.actual;
            C9772a<Object> aVar = this.queue;
            boolean z = this.delayError;
            TimeUnit timeUnit = this.unit;
            AbstractC9845s sVar = this.scheduler;
            long j = this.time;
            int i = 1;
            do {
                long j2 = this.requested.get();
                long j3 = 0;
                while (j3 != j2) {
                    boolean z2 = this.done;
                    Long l = (Long) aVar.peek();
                    boolean z3 = l == null;
                    long a = sVar.m1852a(timeUnit);
                    if (!z3 && l.longValue() > a - j) {
                        z3 = true;
                    }
                    if (!checkTerminated(z2, z3, cVar, z)) {
                        if (z3) {
                            break;
                        }
                        aVar.poll();
                        cVar.onNext(aVar.poll());
                        j3++;
                    } else {
                        return;
                    }
                }
                if (j3 != 0) {
                    C9800b.m2009c(this.requested, j3);
                }
                addAndGet = addAndGet(-i);
                i = addAndGet;
            } while (addAndGet != 0);
        }
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        this.done = true;
        drain();
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        this.error = th;
        this.done = true;
        drain();
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        this.queue.m2065a(Long.valueOf(this.scheduler.m1852a(this.unit)), (Long) t);
        drain();
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        if (SubscriptionHelper.validate(this.f38425s, dVar)) {
            this.f38425s = dVar;
            this.actual.onSubscribe(this);
            dVar.request(Long.MAX_VALUE);
        }
    }

    @Override // p611j.p612a.AbstractC10434d
    public void request(long j) {
        if (SubscriptionHelper.validate(j)) {
            C9800b.m2012a(this.requested, j);
            drain();
        }
    }
}

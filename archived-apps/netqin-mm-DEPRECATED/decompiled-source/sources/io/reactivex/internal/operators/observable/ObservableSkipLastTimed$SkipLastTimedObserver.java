package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.AbstractC9845s;
import p530d.p541c.p543b0.p554f.C9772a;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableSkipLastTimed$SkipLastTimedObserver.class */
public final class ObservableSkipLastTimed$SkipLastTimedObserver<T> extends AtomicInteger implements AbstractC9844r<T>, AbstractC9861b {
    public static final long serialVersionUID = -5677354903406201275L;
    public final AbstractC9844r<? super T> actual;
    public volatile boolean cancelled;
    public final boolean delayError;
    public volatile boolean done;
    public Throwable error;
    public final C9772a<Object> queue;

    /* renamed from: s */
    public AbstractC9861b f38524s;
    public final AbstractC9845s scheduler;
    public final long time;
    public final TimeUnit unit;

    public ObservableSkipLastTimed$SkipLastTimedObserver(AbstractC9844r<? super T> rVar, long j, TimeUnit timeUnit, AbstractC9845s sVar, int i, boolean z) {
        this.actual = rVar;
        this.time = j;
        this.unit = timeUnit;
        this.scheduler = sVar;
        this.queue = new C9772a<>(i);
        this.delayError = z;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        if (!this.cancelled) {
            this.cancelled = true;
            this.f38524s.dispose();
            if (getAndIncrement() == 0) {
                this.queue.clear();
            }
        }
    }

    public void drain() {
        if (getAndIncrement() == 0) {
            AbstractC9844r<? super T> rVar = this.actual;
            C9772a<Object> aVar = this.queue;
            boolean z = this.delayError;
            TimeUnit timeUnit = this.unit;
            AbstractC9845s sVar = this.scheduler;
            long j = this.time;
            int i = 1;
            while (!this.cancelled) {
                boolean z2 = this.done;
                Long l = (Long) aVar.peek();
                boolean z3 = l == null;
                long a = sVar.m1852a(timeUnit);
                boolean z4 = z3;
                if (!z3) {
                    z4 = z3;
                    if (l.longValue() > a - j) {
                        z4 = true;
                    }
                }
                if (z2) {
                    if (!z) {
                        Throwable th = this.error;
                        if (th != null) {
                            this.queue.clear();
                            rVar.onError(th);
                            return;
                        } else if (z4) {
                            rVar.onComplete();
                            return;
                        }
                    } else if (z4) {
                        Throwable th2 = this.error;
                        if (th2 != null) {
                            rVar.onError(th2);
                            return;
                        } else {
                            rVar.onComplete();
                            return;
                        }
                    }
                }
                if (z4) {
                    int addAndGet = addAndGet(-i);
                    i = addAndGet;
                    if (addAndGet == 0) {
                        return;
                    }
                } else {
                    aVar.poll();
                    rVar.onNext(aVar.poll());
                }
            }
            this.queue.clear();
        }
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return this.cancelled;
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onComplete() {
        this.done = true;
        drain();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onError(Throwable th) {
        this.error = th;
        this.done = true;
        drain();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onNext(T t) {
        this.queue.m2065a(Long.valueOf(this.scheduler.m1852a(this.unit)), (Long) t);
        drain();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onSubscribe(AbstractC9861b bVar) {
        if (DisposableHelper.validate(this.f38524s, bVar)) {
            this.f38524s = bVar;
            this.actual.onSubscribe(this);
        }
    }
}

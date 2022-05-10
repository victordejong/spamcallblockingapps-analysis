package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.AbstractC9845s;
import p530d.p541c.p543b0.p554f.C9772a;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableTakeLastTimed$TakeLastTimedObserver.class */
public final class ObservableTakeLastTimed$TakeLastTimedObserver<T> extends AtomicBoolean implements AbstractC9844r<T>, AbstractC9861b {
    public static final long serialVersionUID = -5677354903406201275L;
    public final AbstractC9844r<? super T> actual;
    public volatile boolean cancelled;
    public final long count;

    /* renamed from: d */
    public AbstractC9861b f38528d;
    public final boolean delayError;
    public Throwable error;
    public final C9772a<Object> queue;
    public final AbstractC9845s scheduler;
    public final long time;
    public final TimeUnit unit;

    public ObservableTakeLastTimed$TakeLastTimedObserver(AbstractC9844r<? super T> rVar, long j, long j2, TimeUnit timeUnit, AbstractC9845s sVar, int i, boolean z) {
        this.actual = rVar;
        this.count = j;
        this.time = j2;
        this.unit = timeUnit;
        this.scheduler = sVar;
        this.queue = new C9772a<>(i);
        this.delayError = z;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        if (!this.cancelled) {
            this.cancelled = true;
            this.f38528d.dispose();
            if (compareAndSet(false, true)) {
                this.queue.clear();
            }
        }
    }

    public void drain() {
        Throwable th;
        if (compareAndSet(false, true)) {
            AbstractC9844r<? super T> rVar = this.actual;
            C9772a<Object> aVar = this.queue;
            boolean z = this.delayError;
            while (!this.cancelled) {
                if (z || (th = this.error) == null) {
                    Object poll = aVar.poll();
                    if (poll == null) {
                        Throwable th2 = this.error;
                        if (th2 != null) {
                            rVar.onError(th2);
                            return;
                        } else {
                            rVar.onComplete();
                            return;
                        }
                    } else {
                        Object poll2 = aVar.poll();
                        if (((Long) poll).longValue() >= this.scheduler.m1852a(this.unit) - this.time) {
                            rVar.onNext(poll2);
                        }
                    }
                } else {
                    aVar.clear();
                    rVar.onError(th);
                    return;
                }
            }
            aVar.clear();
        }
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return this.cancelled;
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onComplete() {
        drain();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onError(Throwable th) {
        this.error = th;
        drain();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onNext(T t) {
        C9772a<Object> aVar = this.queue;
        long a = this.scheduler.m1852a(this.unit);
        long j = this.time;
        long j2 = this.count;
        boolean z = j2 == Long.MAX_VALUE;
        aVar.m2065a(Long.valueOf(a), (Long) t);
        while (!aVar.isEmpty()) {
            if (((Long) aVar.peek()).longValue() <= a - j || (!z && (aVar.m2051e() >> 1) > j2)) {
                aVar.poll();
                aVar.poll();
            } else {
                return;
            }
        }
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onSubscribe(AbstractC9861b bVar) {
        if (DisposableHelper.validate(this.f38528d, bVar)) {
            this.f38528d = bVar;
            this.actual.onSubscribe(this);
        }
    }
}

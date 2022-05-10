package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.AbstractC9845s;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableThrottleFirstTimed$DebounceTimedObserver.class */
public final class ObservableThrottleFirstTimed$DebounceTimedObserver<T> extends AtomicReference<AbstractC9861b> implements AbstractC9844r<T>, AbstractC9861b, Runnable {
    public static final long serialVersionUID = 786994795061867455L;
    public final AbstractC9844r<? super T> actual;
    public boolean done;
    public volatile boolean gate;

    /* renamed from: s */
    public AbstractC9861b f38530s;
    public final long timeout;
    public final TimeUnit unit;
    public final AbstractC9845s.AbstractC9848c worker;

    public ObservableThrottleFirstTimed$DebounceTimedObserver(AbstractC9844r<? super T> rVar, long j, TimeUnit timeUnit, AbstractC9845s.AbstractC9848c cVar) {
        this.actual = rVar;
        this.timeout = j;
        this.unit = timeUnit;
        this.worker = cVar;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        this.f38530s.dispose();
        this.worker.dispose();
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return this.worker.isDisposed();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onComplete() {
        if (!this.done) {
            this.done = true;
            this.actual.onComplete();
            this.worker.dispose();
        }
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onError(Throwable th) {
        if (this.done) {
            C9815a.m1923b(th);
            return;
        }
        this.done = true;
        this.actual.onError(th);
        this.worker.dispose();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onNext(T t) {
        if (!this.gate && !this.done) {
            this.gate = true;
            this.actual.onNext(t);
            AbstractC9861b bVar = get();
            if (bVar != null) {
                bVar.dispose();
            }
            DisposableHelper.replace(this, this.worker.mo1832a(this, this.timeout, this.unit));
        }
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onSubscribe(AbstractC9861b bVar) {
        if (DisposableHelper.validate(this.f38530s, bVar)) {
            this.f38530s = bVar;
            this.actual.onSubscribe(this);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        this.gate = false;
    }
}

package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.SequentialDisposable;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9843q;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p542a0.AbstractC9645h;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p543b0.p548e.p552d.AbstractC9759t;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver.class */
public final class ObservableTimeout$TimeoutObserver<T> extends AtomicLong implements AbstractC9844r<T>, AbstractC9861b, AbstractC9759t {
    public static final long serialVersionUID = 3764492702657003550L;
    public final AbstractC9844r<? super T> actual;
    public final AbstractC9645h<? super T, ? extends AbstractC9843q<?>> itemTimeoutIndicator;
    public final SequentialDisposable task = new SequentialDisposable();
    public final AtomicReference<AbstractC9861b> upstream = new AtomicReference<>();

    public ObservableTimeout$TimeoutObserver(AbstractC9844r<? super T> rVar, AbstractC9645h<? super T, ? extends AbstractC9843q<?>> hVar) {
        this.actual = rVar;
        this.itemTimeoutIndicator = hVar;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        DisposableHelper.dispose(this.upstream);
        this.task.dispose();
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(this.upstream.get());
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onComplete() {
        if (getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
            this.task.dispose();
            this.actual.onComplete();
        }
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onError(Throwable th) {
        if (getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
            this.task.dispose();
            this.actual.onError(th);
            return;
        }
        C9815a.m1923b(th);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onNext(T t) {
        long j = get();
        if (j != Long.MAX_VALUE) {
            long j2 = 1 + j;
            if (compareAndSet(j, j2)) {
                AbstractC9861b bVar = this.task.get();
                if (bVar != null) {
                    bVar.dispose();
                }
                this.actual.onNext(t);
                try {
                    Object apply = this.itemTimeoutIndicator.apply(t);
                    C9650a.m2095a(apply, "The itemTimeoutIndicator returned a null ObservableSource.");
                    AbstractC9843q qVar = (AbstractC9843q) apply;
                    ObservableTimeout$TimeoutConsumer observableTimeout$TimeoutConsumer = new ObservableTimeout$TimeoutConsumer(j2, this);
                    if (this.task.replace(observableTimeout$TimeoutConsumer)) {
                        qVar.subscribe(observableTimeout$TimeoutConsumer);
                    }
                } catch (Throwable th) {
                    C9863a.m1822b(th);
                    this.upstream.get().dispose();
                    getAndSet(Long.MAX_VALUE);
                    this.actual.onError(th);
                }
            }
        }
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onSubscribe(AbstractC9861b bVar) {
        DisposableHelper.setOnce(this.upstream, bVar);
    }

    @Override // p530d.p541c.p543b0.p548e.p552d.AbstractC9761v
    public void onTimeout(long j) {
        if (compareAndSet(j, Long.MAX_VALUE)) {
            DisposableHelper.dispose(this.upstream);
            this.actual.onError(new TimeoutException());
        }
    }

    @Override // p530d.p541c.p543b0.p548e.p552d.AbstractC9759t
    public void onTimeoutError(long j, Throwable th) {
        if (compareAndSet(j, Long.MAX_VALUE)) {
            DisposableHelper.dispose(this.upstream);
            this.actual.onError(th);
            return;
        }
        C9815a.m1923b(th);
    }

    public void startFirstTimeout(AbstractC9843q<?> qVar) {
        if (qVar != null) {
            ObservableTimeout$TimeoutConsumer observableTimeout$TimeoutConsumer = new ObservableTimeout$TimeoutConsumer(0L, this);
            if (this.task.replace(observableTimeout$TimeoutConsumer)) {
                qVar.subscribe(observableTimeout$TimeoutConsumer);
            }
        }
    }
}

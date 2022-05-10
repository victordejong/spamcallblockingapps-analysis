package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9843q;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p542a0.AbstractC9645h;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableSwitchMap$SwitchMapObserver.class */
public final class ObservableSwitchMap$SwitchMapObserver<T, R> extends AtomicInteger implements AbstractC9844r<T>, AbstractC9861b {
    public static final ObservableSwitchMap$SwitchMapInnerObserver<Object, Object> CANCELLED;
    public static final long serialVersionUID = -3491074160481096299L;
    public final AbstractC9844r<? super R> actual;
    public final int bufferSize;
    public volatile boolean cancelled;
    public final boolean delayErrors;
    public volatile boolean done;
    public final AbstractC9645h<? super T, ? extends AbstractC9843q<? extends R>> mapper;

    /* renamed from: s */
    public AbstractC9861b f38526s;
    public volatile long unique;
    public final AtomicReference<ObservableSwitchMap$SwitchMapInnerObserver<T, R>> active = new AtomicReference<>();
    public final AtomicThrowable errors = new AtomicThrowable();

    static {
        ObservableSwitchMap$SwitchMapInnerObserver<Object, Object> observableSwitchMap$SwitchMapInnerObserver = new ObservableSwitchMap$SwitchMapInnerObserver<>(null, -1L, 1);
        CANCELLED = observableSwitchMap$SwitchMapInnerObserver;
        observableSwitchMap$SwitchMapInnerObserver.cancel();
    }

    public ObservableSwitchMap$SwitchMapObserver(AbstractC9844r<? super R> rVar, AbstractC9645h<? super T, ? extends AbstractC9843q<? extends R>> hVar, int i, boolean z) {
        this.actual = rVar;
        this.mapper = hVar;
        this.bufferSize = i;
        this.delayErrors = z;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        if (!this.cancelled) {
            this.cancelled = true;
            this.f38526s.dispose();
            disposeInner();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void disposeInner() {
        ObservableSwitchMap$SwitchMapInnerObserver<Object, Object> observableSwitchMap$SwitchMapInnerObserver;
        ObservableSwitchMap$SwitchMapInnerObserver<T, R> observableSwitchMap$SwitchMapInnerObserver2 = this.active.get();
        ObservableSwitchMap$SwitchMapInnerObserver<Object, Object> observableSwitchMap$SwitchMapInnerObserver3 = CANCELLED;
        if (observableSwitchMap$SwitchMapInnerObserver2 != observableSwitchMap$SwitchMapInnerObserver3 && (observableSwitchMap$SwitchMapInnerObserver = (ObservableSwitchMap$SwitchMapInnerObserver) this.active.getAndSet(observableSwitchMap$SwitchMapInnerObserver3)) != CANCELLED && observableSwitchMap$SwitchMapInnerObserver != null) {
            observableSwitchMap$SwitchMapInnerObserver.cancel();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x01ba A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:111:0x001a A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void drain() {
        /*
            Method dump skipped, instructions count: 461
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.observable.ObservableSwitchMap$SwitchMapObserver.drain():void");
    }

    public void innerError(ObservableSwitchMap$SwitchMapInnerObserver<T, R> observableSwitchMap$SwitchMapInnerObserver, Throwable th) {
        if (observableSwitchMap$SwitchMapInnerObserver.index != this.unique || !this.errors.addThrowable(th)) {
            C9815a.m1923b(th);
            return;
        }
        if (!this.delayErrors) {
            this.f38526s.dispose();
        }
        observableSwitchMap$SwitchMapInnerObserver.done = true;
        drain();
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return this.cancelled;
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onComplete() {
        if (!this.done) {
            this.done = true;
            drain();
        }
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onError(Throwable th) {
        if (this.done || !this.errors.addThrowable(th)) {
            C9815a.m1923b(th);
            return;
        }
        if (!this.delayErrors) {
            disposeInner();
        }
        this.done = true;
        drain();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onNext(T t) {
        ObservableSwitchMap$SwitchMapInnerObserver<T, R> observableSwitchMap$SwitchMapInnerObserver;
        long j = this.unique + 1;
        this.unique = j;
        ObservableSwitchMap$SwitchMapInnerObserver<T, R> observableSwitchMap$SwitchMapInnerObserver2 = this.active.get();
        if (observableSwitchMap$SwitchMapInnerObserver2 != null) {
            observableSwitchMap$SwitchMapInnerObserver2.cancel();
        }
        try {
            Object apply = this.mapper.apply(t);
            C9650a.m2095a(apply, "The ObservableSource returned is null");
            AbstractC9843q qVar = (AbstractC9843q) apply;
            ObservableSwitchMap$SwitchMapInnerObserver<T, R> observableSwitchMap$SwitchMapInnerObserver3 = new ObservableSwitchMap$SwitchMapInnerObserver<>(this, j, this.bufferSize);
            do {
                observableSwitchMap$SwitchMapInnerObserver = this.active.get();
                if (observableSwitchMap$SwitchMapInnerObserver == CANCELLED) {
                    return;
                }
            } while (!this.active.compareAndSet(observableSwitchMap$SwitchMapInnerObserver, observableSwitchMap$SwitchMapInnerObserver3));
            qVar.subscribe(observableSwitchMap$SwitchMapInnerObserver3);
        } catch (Throwable th) {
            C9863a.m1822b(th);
            this.f38526s.dispose();
            onError(th);
        }
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onSubscribe(AbstractC9861b bVar) {
        if (DisposableHelper.validate(this.f38526s, bVar)) {
            this.f38526s = bVar;
            this.actual.onSubscribe(this);
        }
    }
}

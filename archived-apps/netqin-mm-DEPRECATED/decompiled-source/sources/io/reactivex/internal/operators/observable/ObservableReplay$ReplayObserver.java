package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p543b0.p548e.p552d.AbstractC9753o;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableReplay$ReplayObserver.class */
public final class ObservableReplay$ReplayObserver<T> extends AtomicReference<AbstractC9861b> implements AbstractC9844r<T>, AbstractC9861b {
    public static final ObservableReplay$InnerDisposable[] EMPTY = new ObservableReplay$InnerDisposable[0];
    public static final ObservableReplay$InnerDisposable[] TERMINATED = new ObservableReplay$InnerDisposable[0];
    public static final long serialVersionUID = -533785617179540163L;
    public final AbstractC9753o<T> buffer;
    public boolean done;
    public final AtomicReference<ObservableReplay$InnerDisposable[]> observers = new AtomicReference<>(EMPTY);
    public final AtomicBoolean shouldConnect = new AtomicBoolean();

    public ObservableReplay$ReplayObserver(AbstractC9753o<T> oVar) {
        this.buffer = oVar;
    }

    public boolean add(ObservableReplay$InnerDisposable<T> observableReplay$InnerDisposable) {
        ObservableReplay$InnerDisposable[] observableReplay$InnerDisposableArr;
        ObservableReplay$InnerDisposable[] observableReplay$InnerDisposableArr2;
        do {
            observableReplay$InnerDisposableArr = this.observers.get();
            if (observableReplay$InnerDisposableArr == TERMINATED) {
                return false;
            }
            int length = observableReplay$InnerDisposableArr.length;
            observableReplay$InnerDisposableArr2 = new ObservableReplay$InnerDisposable[length + 1];
            System.arraycopy(observableReplay$InnerDisposableArr, 0, observableReplay$InnerDisposableArr2, 0, length);
            observableReplay$InnerDisposableArr2[length] = observableReplay$InnerDisposable;
        } while (!this.observers.compareAndSet(observableReplay$InnerDisposableArr, observableReplay$InnerDisposableArr2));
        return true;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        this.observers.set(TERMINATED);
        DisposableHelper.dispose(this);
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return this.observers.get() == TERMINATED;
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onComplete() {
        if (!this.done) {
            this.done = true;
            this.buffer.complete();
            replayFinal();
        }
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onError(Throwable th) {
        if (!this.done) {
            this.done = true;
            this.buffer.error(th);
            replayFinal();
            return;
        }
        C9815a.m1923b(th);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onNext(T t) {
        if (!this.done) {
            this.buffer.next(t);
            replay();
        }
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onSubscribe(AbstractC9861b bVar) {
        if (DisposableHelper.setOnce(this, bVar)) {
            replay();
        }
    }

    public void remove(ObservableReplay$InnerDisposable<T> observableReplay$InnerDisposable) {
        ObservableReplay$InnerDisposable[] observableReplay$InnerDisposableArr;
        ObservableReplay$InnerDisposable[] observableReplay$InnerDisposableArr2;
        do {
            observableReplay$InnerDisposableArr = this.observers.get();
            int length = observableReplay$InnerDisposableArr.length;
            if (length != 0) {
                int i = -1;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        break;
                    } else if (observableReplay$InnerDisposableArr[i2].equals(observableReplay$InnerDisposable)) {
                        i = i2;
                        break;
                    } else {
                        i2++;
                    }
                }
                if (i >= 0) {
                    if (length == 1) {
                        observableReplay$InnerDisposableArr2 = EMPTY;
                    } else {
                        observableReplay$InnerDisposableArr2 = new ObservableReplay$InnerDisposable[length - 1];
                        System.arraycopy(observableReplay$InnerDisposableArr, 0, observableReplay$InnerDisposableArr2, 0, i);
                        System.arraycopy(observableReplay$InnerDisposableArr, i + 1, observableReplay$InnerDisposableArr2, i, (length - i) - 1);
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        } while (!this.observers.compareAndSet(observableReplay$InnerDisposableArr, observableReplay$InnerDisposableArr2));
    }

    public void replay() {
        for (ObservableReplay$InnerDisposable<T> observableReplay$InnerDisposable : this.observers.get()) {
            this.buffer.replay(observableReplay$InnerDisposable);
        }
    }

    public void replayFinal() {
        for (ObservableReplay$InnerDisposable<T> observableReplay$InnerDisposable : this.observers.getAndSet(TERMINATED)) {
            this.buffer.replay(observableReplay$InnerDisposable);
        }
    }
}

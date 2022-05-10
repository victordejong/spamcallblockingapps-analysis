package io.reactivex.internal.operators.single;

import java.util.concurrent.atomic.AtomicInteger;
import p530d.p541c.AbstractC9851u;
import p530d.p541c.p542a0.AbstractC9645h;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator.class */
public final class SingleZipArray$ZipCoordinator<T, R> extends AtomicInteger implements AbstractC9861b {
    public static final long serialVersionUID = -5556924161382950569L;
    public final AbstractC9851u<? super R> actual;
    public final SingleZipArray$ZipSingleObserver<T>[] observers;
    public final Object[] values;
    public final AbstractC9645h<? super Object[], ? extends R> zipper;

    public SingleZipArray$ZipCoordinator(AbstractC9851u<? super R> uVar, int i, AbstractC9645h<? super Object[], ? extends R> hVar) {
        super(i);
        this.actual = uVar;
        this.zipper = hVar;
        SingleZipArray$ZipSingleObserver<T>[] singleZipArray$ZipSingleObserverArr = new SingleZipArray$ZipSingleObserver[i];
        for (int i2 = 0; i2 < i; i2++) {
            singleZipArray$ZipSingleObserverArr[i2] = new SingleZipArray$ZipSingleObserver<>(this, i2);
        }
        this.observers = singleZipArray$ZipSingleObserverArr;
        this.values = new Object[i];
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        if (getAndSet(0) > 0) {
            for (SingleZipArray$ZipSingleObserver<T> singleZipArray$ZipSingleObserver : this.observers) {
                singleZipArray$ZipSingleObserver.dispose();
            }
        }
    }

    public void disposeExcept(int i) {
        int i2;
        SingleZipArray$ZipSingleObserver<T>[] singleZipArray$ZipSingleObserverArr = this.observers;
        int length = singleZipArray$ZipSingleObserverArr.length;
        int i3 = 0;
        while (true) {
            i2 = i;
            if (i3 < i) {
                singleZipArray$ZipSingleObserverArr[i3].dispose();
                i3++;
            }
        }
        while (true) {
            i2++;
            if (i2 < length) {
                singleZipArray$ZipSingleObserverArr[i2].dispose();
            } else {
                return;
            }
        }
    }

    public void innerError(Throwable th, int i) {
        if (getAndSet(0) > 0) {
            disposeExcept(i);
            this.actual.onError(th);
            return;
        }
        C9815a.m1923b(th);
    }

    public void innerSuccess(T t, int i) {
        this.values[i] = t;
        if (decrementAndGet() == 0) {
            try {
                Object apply = this.zipper.apply(this.values);
                C9650a.m2095a(apply, "The zipper returned a null value");
                this.actual.onSuccess(apply);
            } catch (Throwable th) {
                C9863a.m1822b(th);
                this.actual.onError(th);
            }
        }
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return get() <= 0;
    }
}

package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.atomic.AtomicReferenceArray;
import p530d.p541c.AbstractC9843q;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p542a0.AbstractC9645h;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p543b0.p557i.C9804f;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableWithLatestFromMany$WithLatestFromObserver.class */
public final class ObservableWithLatestFromMany$WithLatestFromObserver<T, R> extends AtomicInteger implements AbstractC9844r<T>, AbstractC9861b {
    public static final long serialVersionUID = 1577321883966341961L;
    public final AbstractC9844r<? super R> actual;
    public final AbstractC9645h<? super Object[], R> combiner;

    /* renamed from: d */
    public final AtomicReference<AbstractC9861b> f38537d;
    public volatile boolean done;
    public final AtomicThrowable error;
    public final ObservableWithLatestFromMany$WithLatestInnerObserver[] observers;
    public final AtomicReferenceArray<Object> values;

    public ObservableWithLatestFromMany$WithLatestFromObserver(AbstractC9844r<? super R> rVar, AbstractC9645h<? super Object[], R> hVar, int i) {
        this.actual = rVar;
        this.combiner = hVar;
        ObservableWithLatestFromMany$WithLatestInnerObserver[] observableWithLatestFromMany$WithLatestInnerObserverArr = new ObservableWithLatestFromMany$WithLatestInnerObserver[i];
        for (int i2 = 0; i2 < i; i2++) {
            observableWithLatestFromMany$WithLatestInnerObserverArr[i2] = new ObservableWithLatestFromMany$WithLatestInnerObserver(this, i2);
        }
        this.observers = observableWithLatestFromMany$WithLatestInnerObserverArr;
        this.values = new AtomicReferenceArray<>(i);
        this.f38537d = new AtomicReference<>();
        this.error = new AtomicThrowable();
    }

    public void cancelAllBut(int i) {
        ObservableWithLatestFromMany$WithLatestInnerObserver[] observableWithLatestFromMany$WithLatestInnerObserverArr = this.observers;
        for (int i2 = 0; i2 < observableWithLatestFromMany$WithLatestInnerObserverArr.length; i2++) {
            if (i2 != i) {
                observableWithLatestFromMany$WithLatestInnerObserverArr[i2].dispose();
            }
        }
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        DisposableHelper.dispose(this.f38537d);
        for (ObservableWithLatestFromMany$WithLatestInnerObserver observableWithLatestFromMany$WithLatestInnerObserver : this.observers) {
            observableWithLatestFromMany$WithLatestInnerObserver.dispose();
        }
    }

    public void innerComplete(int i, boolean z) {
        if (!z) {
            this.done = true;
            cancelAllBut(i);
            C9804f.m1999a(this.actual, this, this.error);
        }
    }

    public void innerError(int i, Throwable th) {
        this.done = true;
        DisposableHelper.dispose(this.f38537d);
        cancelAllBut(i);
        C9804f.m2000a((AbstractC9844r<?>) this.actual, th, (AtomicInteger) this, this.error);
    }

    public void innerNext(int i, Object obj) {
        this.values.set(i, obj);
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(this.f38537d.get());
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onComplete() {
        if (!this.done) {
            this.done = true;
            cancelAllBut(-1);
            C9804f.m1999a(this.actual, this, this.error);
        }
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onError(Throwable th) {
        if (this.done) {
            C9815a.m1923b(th);
            return;
        }
        this.done = true;
        cancelAllBut(-1);
        C9804f.m2000a((AbstractC9844r<?>) this.actual, th, (AtomicInteger) this, this.error);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onNext(T t) {
        if (!this.done) {
            AtomicReferenceArray<Object> atomicReferenceArray = this.values;
            int length = atomicReferenceArray.length();
            Object[] objArr = new Object[length + 1];
            int i = 0;
            objArr[0] = t;
            while (i < length) {
                Object obj = atomicReferenceArray.get(i);
                if (obj != null) {
                    i++;
                    objArr[i] = obj;
                } else {
                    return;
                }
            }
            try {
                R apply = this.combiner.apply(objArr);
                C9650a.m2095a(apply, "combiner returned a null value");
                C9804f.m2001a(this.actual, apply, this, this.error);
            } catch (Throwable th) {
                C9863a.m1822b(th);
                dispose();
                onError(th);
            }
        }
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onSubscribe(AbstractC9861b bVar) {
        DisposableHelper.setOnce(this.f38537d, bVar);
    }

    public void subscribe(AbstractC9843q<?>[] qVarArr, int i) {
        ObservableWithLatestFromMany$WithLatestInnerObserver[] observableWithLatestFromMany$WithLatestInnerObserverArr = this.observers;
        AtomicReference<AbstractC9861b> atomicReference = this.f38537d;
        for (int i2 = 0; i2 < i && !DisposableHelper.isDisposed(atomicReference.get()) && !this.done; i2++) {
            qVarArr[i2].subscribe(observableWithLatestFromMany$WithLatestInnerObserverArr[i2]);
        }
    }
}

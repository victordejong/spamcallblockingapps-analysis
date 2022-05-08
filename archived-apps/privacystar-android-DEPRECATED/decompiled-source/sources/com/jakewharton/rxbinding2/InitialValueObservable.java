package com.jakewharton.rxbinding2;

import io.reactivex.Observable;
import io.reactivex.Observer;
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/InitialValueObservable.class */
public abstract class InitialValueObservable<T> extends Observable<T> {

    /* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/InitialValueObservable$Skipped.class */
    private final class Skipped extends Observable<T> {
        Skipped() {
        }

        @Override // io.reactivex.Observable
        protected void subscribeActual(Observer<? super T> observer) {
            InitialValueObservable.this.subscribeListener(observer);
        }
    }

    protected abstract T getInitialValue();

    public final Observable<T> skipInitialValue() {
        return new Skipped();
    }

    @Override // io.reactivex.Observable
    protected final void subscribeActual(Observer<? super T> observer) {
        subscribeListener(observer);
        observer.onNext(getInitialValue());
    }

    protected abstract void subscribeListener(Observer<? super T> observer);
}

package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableIgnoreElements.class */
public final class ObservableIgnoreElements<T> extends AbstractObservableWithUpstream<T, T> {

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableIgnoreElements$IgnoreObservable.class */
    static final class IgnoreObservable<T> implements Observer<T>, Disposable {
        final Observer<? super T> actual;

        /* renamed from: d */
        Disposable f586d;

        IgnoreObservable(Observer<? super T> observer) {
            this.actual = observer;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f586d.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f586d.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.actual.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.actual.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            this.f586d = disposable;
            this.actual.onSubscribe(this);
        }
    }

    public ObservableIgnoreElements(ObservableSource<T> observableSource) {
        super(observableSource);
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super T> observer) {
        this.source.subscribe(new IgnoreObservable(observer));
    }
}

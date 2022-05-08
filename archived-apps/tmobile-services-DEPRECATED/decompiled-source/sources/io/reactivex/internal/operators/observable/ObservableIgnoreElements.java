package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableIgnoreElements.class */
public final class ObservableIgnoreElements<T> extends AbstractObservableWithUpstream<T, T> {

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableIgnoreElements$IgnoreObservable.class */
    static final class IgnoreObservable<T> implements Observer<T>, Disposable {

        /* renamed from: f */
        final Observer<? super T> f18046f;

        /* renamed from: g */
        Disposable f18047g;

        IgnoreObservable(Observer<? super T> observer) {
            this.f18046f = observer;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f18047g.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f18047g.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f18046f.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f18046f.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            this.f18047g = disposable;
            this.f18046f.onSubscribe(this);
        }
    }

    public ObservableIgnoreElements(ObservableSource<T> observableSource) {
        super(observableSource);
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super T> observer) {
        this.f17497f.subscribe(new IgnoreObservable(observer));
    }
}

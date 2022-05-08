package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableTakeLastOne.class */
public final class ObservableTakeLastOne<T> extends AbstractObservableWithUpstream<T, T> {

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableTakeLastOne$TakeLastOneObserver.class */
    static final class TakeLastOneObserver<T> implements Observer<T>, Disposable {
        final Observer<? super T> actual;

        /* renamed from: s */
        Disposable f626s;
        T value;

        TakeLastOneObserver(Observer<? super T> observer) {
            this.actual = observer;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.value = null;
            this.f626s.dispose();
        }

        void emit() {
            T t = this.value;
            if (t != null) {
                this.value = null;
                this.actual.onNext(t);
            }
            this.actual.onComplete();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f626s.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            emit();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.value = null;
            this.actual.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.value = t;
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f626s, disposable)) {
                this.f626s = disposable;
                this.actual.onSubscribe(this);
            }
        }
    }

    public ObservableTakeLastOne(ObservableSource<T> observableSource) {
        super(observableSource);
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super T> observer) {
        this.source.subscribe(new TakeLastOneObserver(observer));
    }
}

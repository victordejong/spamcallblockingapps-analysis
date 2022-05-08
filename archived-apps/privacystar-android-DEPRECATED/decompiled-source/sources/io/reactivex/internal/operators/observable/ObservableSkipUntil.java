package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.ArrayCompositeDisposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.observers.SerializedObserver;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableSkipUntil.class */
public final class ObservableSkipUntil<T, U> extends AbstractObservableWithUpstream<T, T> {
    final ObservableSource<U> other;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableSkipUntil$SkipUntil.class */
    final class SkipUntil implements Observer<U> {
        private final ArrayCompositeDisposable frc;

        /* renamed from: s */
        Disposable f620s;
        private final SerializedObserver<T> serial;
        private final SkipUntilObserver<T> sus;

        SkipUntil(ArrayCompositeDisposable arrayCompositeDisposable, SkipUntilObserver<T> skipUntilObserver, SerializedObserver<T> serializedObserver) {
            this.frc = arrayCompositeDisposable;
            this.sus = skipUntilObserver;
            this.serial = serializedObserver;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.sus.notSkipping = true;
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.frc.dispose();
            this.serial.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(U u) {
            this.f620s.dispose();
            this.sus.notSkipping = true;
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f620s, disposable)) {
                this.f620s = disposable;
                this.frc.setResource(1, disposable);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableSkipUntil$SkipUntilObserver.class */
    static final class SkipUntilObserver<T> implements Observer<T> {
        final Observer<? super T> actual;
        final ArrayCompositeDisposable frc;
        volatile boolean notSkipping;
        boolean notSkippingLocal;

        /* renamed from: s */
        Disposable f621s;

        SkipUntilObserver(Observer<? super T> observer, ArrayCompositeDisposable arrayCompositeDisposable) {
            this.actual = observer;
            this.frc = arrayCompositeDisposable;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.frc.dispose();
            this.actual.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.frc.dispose();
            this.actual.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (this.notSkippingLocal) {
                this.actual.onNext(t);
            } else if (this.notSkipping) {
                this.notSkippingLocal = true;
                this.actual.onNext(t);
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f621s, disposable)) {
                this.f621s = disposable;
                this.frc.setResource(0, disposable);
            }
        }
    }

    public ObservableSkipUntil(ObservableSource<T> observableSource, ObservableSource<U> observableSource2) {
        super(observableSource);
        this.other = observableSource2;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super T> observer) {
        SerializedObserver serializedObserver = new SerializedObserver(observer);
        ArrayCompositeDisposable arrayCompositeDisposable = new ArrayCompositeDisposable(2);
        serializedObserver.onSubscribe(arrayCompositeDisposable);
        SkipUntilObserver skipUntilObserver = new SkipUntilObserver(serializedObserver, arrayCompositeDisposable);
        this.other.subscribe(new SkipUntil(arrayCompositeDisposable, skipUntilObserver, serializedObserver));
        this.source.subscribe(skipUntilObserver);
    }
}

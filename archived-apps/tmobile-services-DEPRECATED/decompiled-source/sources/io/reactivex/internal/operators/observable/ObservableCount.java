package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableCount.class */
public final class ObservableCount<T> extends AbstractObservableWithUpstream<T, Long> {

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableCount$CountObserver.class */
    static final class CountObserver implements Observer<Object>, Disposable {

        /* renamed from: f */
        final Observer<? super Long> f17757f;

        /* renamed from: g */
        Disposable f17758g;

        /* renamed from: h */
        long f17759h;

        CountObserver(Observer<? super Long> observer) {
            this.f17757f = observer;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f17758g.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17758g.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f17757f.onNext(Long.valueOf(this.f17759h));
            this.f17757f.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f17757f.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(Object obj) {
            this.f17759h++;
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17758g, disposable)) {
                this.f17758g = disposable;
                this.f17757f.onSubscribe(this);
            }
        }
    }

    public ObservableCount(ObservableSource<T> observableSource) {
        super(observableSource);
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super Long> observer) {
        this.f17497f.subscribe(new CountObserver(observer));
    }
}

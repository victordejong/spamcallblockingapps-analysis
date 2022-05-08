package io.reactivex.internal.operators.observable;

import io.reactivex.Notification;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableMaterialize.class */
public final class ObservableMaterialize<T> extends AbstractObservableWithUpstream<T, Notification<T>> {

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableMaterialize$MaterializeObserver.class */
    static final class MaterializeObserver<T> implements Observer<T>, Disposable {
        final Observer<? super Notification<T>> actual;

        /* renamed from: s */
        Disposable f592s;

        MaterializeObserver(Observer<? super Notification<T>> observer) {
            this.actual = observer;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f592s.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f592s.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.actual.onNext(Notification.createOnComplete());
            this.actual.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.actual.onNext(Notification.createOnError(th));
            this.actual.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.actual.onNext(Notification.createOnNext(t));
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f592s, disposable)) {
                this.f592s = disposable;
                this.actual.onSubscribe(this);
            }
        }
    }

    public ObservableMaterialize(ObservableSource<T> observableSource) {
        super(observableSource);
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super Notification<T>> observer) {
        this.source.subscribe(new MaterializeObserver(observer));
    }
}

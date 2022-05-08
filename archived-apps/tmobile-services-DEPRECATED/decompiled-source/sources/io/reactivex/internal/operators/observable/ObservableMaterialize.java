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

        /* renamed from: f */
        final Observer<? super Notification<T>> f18135f;

        /* renamed from: g */
        Disposable f18136g;

        MaterializeObserver(Observer<? super Notification<T>> observer) {
            this.f18135f = observer;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f18136g.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f18136g.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f18135f.onNext(Notification.m4484a());
            this.f18135f.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f18135f.onNext(Notification.m4483b(th));
            this.f18135f.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.f18135f.onNext(Notification.m4482c(t));
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f18136g, disposable)) {
                this.f18136g = disposable;
                this.f18135f.onSubscribe(this);
            }
        }
    }

    public ObservableMaterialize(ObservableSource<T> observableSource) {
        super(observableSource);
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super Notification<T>> observer) {
        this.f17497f.subscribe(new MaterializeObserver(observer));
    }
}

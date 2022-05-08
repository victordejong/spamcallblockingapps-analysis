package io.reactivex.internal.operators.observable;

import io.reactivex.Notification;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.plugins.RxJavaPlugins;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableDematerialize.class */
public final class ObservableDematerialize<T> extends AbstractObservableWithUpstream<Notification<T>, T> {

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableDematerialize$DematerializeObserver.class */
    static final class DematerializeObserver<T> implements Observer<Notification<T>>, Disposable {
        final Observer<? super T> actual;
        boolean done;

        /* renamed from: s */
        Disposable f567s;

        DematerializeObserver(Observer<? super T> observer) {
            this.actual = observer;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f567s.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f567s.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (!this.done) {
                this.done = true;
                this.actual.onComplete();
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.done) {
                RxJavaPlugins.onError(th);
                return;
            }
            this.done = true;
            this.actual.onError(th);
        }

        public void onNext(Notification<T> notification) {
            if (this.done) {
                if (notification.isOnError()) {
                    RxJavaPlugins.onError(notification.getError());
                }
            } else if (notification.isOnError()) {
                this.f567s.dispose();
                onError(notification.getError());
            } else if (notification.isOnComplete()) {
                this.f567s.dispose();
                onComplete();
            } else {
                this.actual.onNext(notification.getValue());
            }
        }

        @Override // io.reactivex.Observer
        public /* bridge */ /* synthetic */ void onNext(Object obj) {
            onNext((Notification) ((Notification) obj));
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f567s, disposable)) {
                this.f567s = disposable;
                this.actual.onSubscribe(this);
            }
        }
    }

    public ObservableDematerialize(ObservableSource<Notification<T>> observableSource) {
        super(observableSource);
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super T> observer) {
        this.source.subscribe(new DematerializeObserver(observer));
    }
}

package io.reactivex.internal.operators.mixed;

import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/mixed/CompletableAndThenObservable.class */
public final class CompletableAndThenObservable<R> extends Observable<R> {

    /* renamed from: f */
    final CompletableSource f17282f;

    /* renamed from: g */
    final ObservableSource<? extends R> f17283g;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/mixed/CompletableAndThenObservable$AndThenObservableObserver.class */
    static final class AndThenObservableObserver<R> extends AtomicReference<Disposable> implements Observer<R>, CompletableObserver, Disposable {
        private static final long serialVersionUID = -8948264376121066672L;

        /* renamed from: f */
        final Observer<? super R> f17284f;

        /* renamed from: g */
        ObservableSource<? extends R> f17285g;

        AndThenObservableObserver(Observer<? super R> observer, ObservableSource<? extends R> observableSource) {
            this.f17285g = observableSource;
            this.f17284f = observer;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            ObservableSource<? extends R> observableSource = this.f17285g;
            if (observableSource == null) {
                this.f17284f.onComplete();
                return;
            }
            this.f17285g = null;
            observableSource.subscribe(this);
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f17284f.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(R r) {
            this.f17284f.onNext(r);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            DisposableHelper.replace(this, disposable);
        }
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super R> observer) {
        AndThenObservableObserver andThenObservableObserver = new AndThenObservableObserver(observer, this.f17283g);
        observer.onSubscribe(andThenObservableObserver);
        this.f17282f.mo4514b(andThenObservableObserver);
    }
}

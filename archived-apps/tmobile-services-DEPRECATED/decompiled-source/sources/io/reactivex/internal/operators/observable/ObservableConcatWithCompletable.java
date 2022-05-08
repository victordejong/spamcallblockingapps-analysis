package io.reactivex.internal.operators.observable;

import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableConcatWithCompletable.class */
public final class ObservableConcatWithCompletable<T> extends AbstractObservableWithUpstream<T, T> {

    /* renamed from: g */
    final CompletableSource f17745g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableConcatWithCompletable$ConcatWithObserver.class */
    static final class ConcatWithObserver<T> extends AtomicReference<Disposable> implements Observer<T>, CompletableObserver, Disposable {
        private static final long serialVersionUID = -1953724749712440952L;

        /* renamed from: f */
        final Observer<? super T> f17746f;

        /* renamed from: g */
        CompletableSource f17747g;

        /* renamed from: h */
        boolean f17748h;

        ConcatWithObserver(Observer<? super T> observer, CompletableSource completableSource) {
            this.f17746f = observer;
            this.f17747g = completableSource;
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
            if (this.f17748h) {
                this.f17746f.onComplete();
                return;
            }
            this.f17748h = true;
            DisposableHelper.replace(this, null);
            CompletableSource completableSource = this.f17747g;
            this.f17747g = null;
            completableSource.mo4514b(this);
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f17746f.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.f17746f.onNext(t);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.setOnce(this, disposable) && !this.f17748h) {
                this.f17746f.onSubscribe(this);
            }
        }
    }

    public ObservableConcatWithCompletable(Observable<T> observable, CompletableSource completableSource) {
        super(observable);
        this.f17745g = completableSource;
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super T> observer) {
        this.f17497f.subscribe(new ConcatWithObserver(observer, this.f17745g));
    }
}

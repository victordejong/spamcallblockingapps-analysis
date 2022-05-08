package io.reactivex.internal.operators.observable;

import io.reactivex.Maybe;
import io.reactivex.MaybeObserver;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableLastMaybe.class */
public final class ObservableLastMaybe<T> extends Maybe<T> {

    /* renamed from: f */
    final ObservableSource<T> f18114f;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableLastMaybe$LastObserver.class */
    static final class LastObserver<T> implements Observer<T>, Disposable {

        /* renamed from: f */
        final MaybeObserver<? super T> f18115f;

        /* renamed from: g */
        Disposable f18116g;

        /* renamed from: h */
        T f18117h;

        LastObserver(MaybeObserver<? super T> maybeObserver) {
            this.f18115f = maybeObserver;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f18116g.dispose();
            this.f18116g = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f18116g == DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f18116g = DisposableHelper.DISPOSED;
            T t = this.f18117h;
            if (t != null) {
                this.f18117h = null;
                this.f18115f.onSuccess(t);
                return;
            }
            this.f18115f.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f18116g = DisposableHelper.DISPOSED;
            this.f18117h = null;
            this.f18115f.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.f18117h = t;
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f18116g, disposable)) {
                this.f18116g = disposable;
                this.f18115f.onSubscribe(this);
            }
        }
    }

    public ObservableLastMaybe(ObservableSource<T> observableSource) {
        this.f18114f = observableSource;
    }

    @Override // io.reactivex.Maybe
    /* renamed from: d */
    protected void mo3211d(MaybeObserver<? super T> maybeObserver) {
        this.f18114f.subscribe(new LastObserver(maybeObserver));
    }
}

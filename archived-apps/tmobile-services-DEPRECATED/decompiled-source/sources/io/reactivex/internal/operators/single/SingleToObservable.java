package io.reactivex.internal.operators.single;

import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.observers.DeferredScalarDisposable;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleToObservable.class */
public final class SingleToObservable<T> extends Observable<T> {

    /* renamed from: f */
    final SingleSource<? extends T> f19178f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleToObservable$SingleToObservableObserver.class */
    public static final class SingleToObservableObserver<T> extends DeferredScalarDisposable<T> implements SingleObserver<T> {
        private static final long serialVersionUID = 3786543492451018833L;

        /* renamed from: h */
        Disposable f19179h;

        SingleToObservableObserver(Observer<? super T> observer) {
            super(observer);
        }

        @Override // io.reactivex.internal.observers.DeferredScalarDisposable, io.reactivex.disposables.Disposable
        public void dispose() {
            super.dispose();
            this.f19179h.dispose();
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            m4349c(th);
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f19179h, disposable)) {
                this.f19179h = disposable;
                this.f15188f.onSubscribe(this);
            }
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            m4350b(t);
        }
    }

    public SingleToObservable(SingleSource<? extends T> singleSource) {
        this.f19178f = singleSource;
    }

    /* renamed from: d */
    public static <T> SingleObserver<T> m3578d(Observer<? super T> observer) {
        return new SingleToObservableObserver(observer);
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super T> observer) {
        this.f19178f.mo4457b(m3578d(observer));
    }
}

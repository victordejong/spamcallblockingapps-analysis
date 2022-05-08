package io.reactivex.internal.operators.mixed;

import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.ObjectHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/mixed/SingleFlatMapObservable.class */
public final class SingleFlatMapObservable<T, R> extends Observable<R> {

    /* renamed from: f */
    final SingleSource<T> f17493f;

    /* renamed from: g */
    final Function<? super T, ? extends ObservableSource<? extends R>> f17494g;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/mixed/SingleFlatMapObservable$FlatMapObserver.class */
    static final class FlatMapObserver<T, R> extends AtomicReference<Disposable> implements Observer<R>, SingleObserver<T>, Disposable {
        private static final long serialVersionUID = -8948264376121066672L;

        /* renamed from: f */
        final Observer<? super R> f17495f;

        /* renamed from: g */
        final Function<? super T, ? extends ObservableSource<? extends R>> f17496g;

        FlatMapObserver(Observer<? super R> observer, Function<? super T, ? extends ObservableSource<? extends R>> function) {
            this.f17495f = observer;
            this.f17496g = function;
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
            this.f17495f.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f17495f.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(R r) {
            this.f17495f.onNext(r);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            DisposableHelper.replace(this, disposable);
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            try {
                Object apply = this.f17496g.apply(t);
                ObjectHelper.m4363e(apply, "The mapper returned a null Publisher");
                ((ObservableSource) apply).subscribe(this);
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                this.f17495f.onError(th);
            }
        }
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super R> observer) {
        FlatMapObserver flatMapObserver = new FlatMapObserver(observer, this.f17494g);
        observer.onSubscribe(flatMapObserver);
        this.f17493f.mo4457b(flatMapObserver);
    }
}

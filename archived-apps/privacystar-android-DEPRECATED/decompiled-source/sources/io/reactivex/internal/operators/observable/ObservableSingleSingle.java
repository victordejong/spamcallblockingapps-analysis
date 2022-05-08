package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.NoSuchElementException;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableSingleSingle.class */
public final class ObservableSingleSingle<T> extends Single<T> {
    final T defaultValue;
    final ObservableSource<? extends T> source;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableSingleSingle$SingleElementObserver.class */
    static final class SingleElementObserver<T> implements Observer<T>, Disposable {
        final SingleObserver<? super T> actual;
        final T defaultValue;
        boolean done;

        /* renamed from: s */
        Disposable f615s;
        T value;

        SingleElementObserver(SingleObserver<? super T> singleObserver, T t) {
            this.actual = singleObserver;
            this.defaultValue = t;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f615s.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f615s.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (!this.done) {
                this.done = true;
                T t = this.value;
                this.value = null;
                T t2 = t;
                if (t == null) {
                    t2 = this.defaultValue;
                }
                if (t2 != null) {
                    this.actual.onSuccess(t2);
                } else {
                    this.actual.onError(new NoSuchElementException());
                }
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

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (!this.done) {
                if (this.value != null) {
                    this.done = true;
                    this.f615s.dispose();
                    this.actual.onError(new IllegalArgumentException("Sequence contains more than one element!"));
                    return;
                }
                this.value = t;
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f615s, disposable)) {
                this.f615s = disposable;
                this.actual.onSubscribe(this);
            }
        }
    }

    public ObservableSingleSingle(ObservableSource<? extends T> observableSource, T t) {
        this.source = observableSource;
        this.defaultValue = t;
    }

    @Override // io.reactivex.Single
    public void subscribeActual(SingleObserver<? super T> singleObserver) {
        this.source.subscribe(new SingleElementObserver(singleObserver, this.defaultValue));
    }
}

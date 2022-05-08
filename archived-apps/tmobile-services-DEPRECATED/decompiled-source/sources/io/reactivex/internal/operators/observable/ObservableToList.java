package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.functions.Functions;
import io.reactivex.internal.functions.ObjectHelper;
import java.util.Collection;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableToList.class */
public final class ObservableToList<T, U extends Collection<? super T>> extends AbstractObservableWithUpstream<T, U> {

    /* renamed from: g */
    final Callable<U> f18613g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableToList$ToListObserver.class */
    static final class ToListObserver<T, U extends Collection<? super T>> implements Observer<T>, Disposable {

        /* renamed from: f */
        final Observer<? super U> f18614f;

        /* renamed from: g */
        Disposable f18615g;

        /* renamed from: h */
        U f18616h;

        ToListObserver(Observer<? super U> observer, U u) {
            this.f18614f = observer;
            this.f18616h = u;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f18615g.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f18615g.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            U u = this.f18616h;
            this.f18616h = null;
            this.f18614f.onNext(u);
            this.f18614f.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f18616h = null;
            this.f18614f.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.f18616h.add(t);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f18615g, disposable)) {
                this.f18615g = disposable;
                this.f18614f.onSubscribe(this);
            }
        }
    }

    public ObservableToList(ObservableSource<T> observableSource, int i) {
        super(observableSource);
        this.f18613g = Functions.m4410e(i);
    }

    public ObservableToList(ObservableSource<T> observableSource, Callable<U> callable) {
        super(observableSource);
        this.f18613g = callable;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super U> observer) {
        try {
            U call = this.f18613g.call();
            ObjectHelper.m4363e(call, "The collectionSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources.");
            this.f17497f.subscribe(new ToListObserver(observer, call));
        } catch (Throwable th) {
            Exceptions.m4428b(th);
            EmptyDisposable.error(th, observer);
        }
    }
}

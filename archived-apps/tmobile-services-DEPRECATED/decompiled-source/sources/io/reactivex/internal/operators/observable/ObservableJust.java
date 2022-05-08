package io.reactivex.internal.operators.observable;

import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.internal.fuseable.ScalarCallable;
import io.reactivex.internal.operators.observable.ObservableScalarXMap;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableJust.class */
public final class ObservableJust<T> extends Observable<T> implements ScalarCallable<T> {

    /* renamed from: f */
    private final T f18113f;

    public ObservableJust(T t) {
        this.f18113f = t;
    }

    @Override // io.reactivex.internal.fuseable.ScalarCallable, java.util.concurrent.Callable
    public T call() {
        return this.f18113f;
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super T> observer) {
        ObservableScalarXMap.ScalarDisposable scalarDisposable = new ObservableScalarXMap.ScalarDisposable(observer, this.f18113f);
        observer.onSubscribe(scalarDisposable);
        scalarDisposable.run();
    }
}

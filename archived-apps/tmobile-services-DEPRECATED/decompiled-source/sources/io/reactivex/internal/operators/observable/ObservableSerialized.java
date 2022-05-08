package io.reactivex.internal.operators.observable;

import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.observers.SerializedObserver;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableSerialized.class */
public final class ObservableSerialized<T> extends AbstractObservableWithUpstream<T, T> {
    public ObservableSerialized(Observable<T> observable) {
        super(observable);
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super T> observer) {
        this.f17497f.subscribe(new SerializedObserver(observer));
    }
}

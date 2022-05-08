package io.reactivex.internal.operators.observable;

import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.fuseable.ScalarCallable;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableEmpty.class */
public final class ObservableEmpty extends Observable<Object> implements ScalarCallable<Object> {

    /* renamed from: f */
    public static final Observable<Object> f17884f = new ObservableEmpty();

    private ObservableEmpty() {
    }

    @Override // io.reactivex.internal.fuseable.ScalarCallable, java.util.concurrent.Callable
    public Object call() {
        return null;
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super Object> observer) {
        EmptyDisposable.complete(observer);
    }
}

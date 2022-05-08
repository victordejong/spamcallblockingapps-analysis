package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableOperator;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.plugins.RxJavaPlugins;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableLift.class */
public final class ObservableLift<R, T> extends AbstractObservableWithUpstream<T, R> {

    /* renamed from: g */
    final ObservableOperator<? extends R, ? super T> f18124g;

    public ObservableLift(ObservableSource<T> observableSource, ObservableOperator<? extends R, ? super T> observableOperator) {
        super(observableSource);
        this.f18124g = observableOperator;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super R> observer) {
        try {
            Observer<? super Object> a = this.f18124g.m4473a(observer);
            ObjectHelper.m4363e(a, "Operator " + this.f18124g + " returned a null Observer");
            this.f17497f.subscribe(a);
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            Exceptions.m4428b(th);
            RxJavaPlugins.m3354t(th);
            NullPointerException nullPointerException = new NullPointerException("Actually not, but can't throw other exceptions due to RS");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }
}

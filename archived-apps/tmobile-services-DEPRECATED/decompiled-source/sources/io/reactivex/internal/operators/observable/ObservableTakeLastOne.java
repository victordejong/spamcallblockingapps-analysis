package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableTakeLastOne.class */
public final class ObservableTakeLastOne<T> extends AbstractObservableWithUpstream<T, T> {

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableTakeLastOne$TakeLastOneObserver.class */
    static final class TakeLastOneObserver<T> implements Observer<T>, Disposable {

        /* renamed from: f */
        final Observer<? super T> f18504f;

        /* renamed from: g */
        Disposable f18505g;

        /* renamed from: h */
        T f18506h;

        TakeLastOneObserver(Observer<? super T> observer) {
            this.f18504f = observer;
        }

        /* renamed from: a */
        void m3675a() {
            T t = this.f18506h;
            if (t != null) {
                this.f18506h = null;
                this.f18504f.onNext(t);
            }
            this.f18504f.onComplete();
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f18506h = null;
            this.f18505g.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f18505g.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            m3675a();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f18506h = null;
            this.f18504f.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.f18506h = t;
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f18505g, disposable)) {
                this.f18505g = disposable;
                this.f18504f.onSubscribe(this);
            }
        }
    }

    public ObservableTakeLastOne(ObservableSource<T> observableSource) {
        super(observableSource);
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super T> observer) {
        this.f17497f.subscribe(new TakeLastOneObserver(observer));
    }
}

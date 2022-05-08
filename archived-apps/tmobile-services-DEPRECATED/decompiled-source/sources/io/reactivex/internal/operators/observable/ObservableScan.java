package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.BiFunction;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.plugins.RxJavaPlugins;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableScan.class */
public final class ObservableScan<T> extends AbstractObservableWithUpstream<T, T> {

    /* renamed from: g */
    final BiFunction<T, T, T> f18366g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableScan$ScanObserver.class */
    static final class ScanObserver<T> implements Observer<T>, Disposable {

        /* renamed from: f */
        final Observer<? super T> f18367f;

        /* renamed from: g */
        final BiFunction<T, T, T> f18368g;

        /* renamed from: h */
        Disposable f18369h;

        /* renamed from: i */
        T f18370i;

        /* renamed from: j */
        boolean f18371j;

        ScanObserver(Observer<? super T> observer, BiFunction<T, T, T> biFunction) {
            this.f18367f = observer;
            this.f18368g = biFunction;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f18369h.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f18369h.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (!this.f18371j) {
                this.f18371j = true;
                this.f18367f.onComplete();
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f18371j) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f18371j = true;
            this.f18367f.onError(th);
        }

        /* JADX WARN: Type inference failed for: r0v13, types: [T, java.lang.Object] */
        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (!this.f18371j) {
                Observer<? super T> observer = this.f18367f;
                T t2 = this.f18370i;
                if (t2 == null) {
                    this.f18370i = t;
                    observer.onNext(t);
                    return;
                }
                try {
                    T apply = this.f18368g.apply(t2, t);
                    ObjectHelper.m4363e(apply, "The value returned by the accumulator is null");
                    this.f18370i = apply;
                    observer.onNext(apply);
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    this.f18369h.dispose();
                    onError(th);
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f18369h, disposable)) {
                this.f18369h = disposable;
                this.f18367f.onSubscribe(this);
            }
        }
    }

    public ObservableScan(ObservableSource<T> observableSource, BiFunction<T, T, T> biFunction) {
        super(observableSource);
        this.f18366g = biFunction;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super T> observer) {
        this.f17497f.subscribe(new ScanObserver(observer, this.f18366g));
    }
}

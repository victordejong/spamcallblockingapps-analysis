package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.plugins.RxJavaPlugins;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableOnErrorNext.class */
public final class ObservableOnErrorNext<T> extends AbstractObservableWithUpstream<T, T> {

    /* renamed from: g */
    final Function<? super Throwable, ? extends ObservableSource<? extends T>> f18182g;

    /* renamed from: h */
    final boolean f18183h;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableOnErrorNext$OnErrorNextObserver.class */
    static final class OnErrorNextObserver<T> implements Observer<T> {

        /* renamed from: f */
        final Observer<? super T> f18184f;

        /* renamed from: g */
        final Function<? super Throwable, ? extends ObservableSource<? extends T>> f18185g;

        /* renamed from: h */
        final boolean f18186h;

        /* renamed from: i */
        final SequentialDisposable f18187i = new SequentialDisposable();

        /* renamed from: j */
        boolean f18188j;

        /* renamed from: k */
        boolean f18189k;

        OnErrorNextObserver(Observer<? super T> observer, Function<? super Throwable, ? extends ObservableSource<? extends T>> function, boolean z) {
            this.f18184f = observer;
            this.f18185g = function;
            this.f18186h = z;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (!this.f18189k) {
                this.f18189k = true;
                this.f18188j = true;
                this.f18184f.onComplete();
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (!this.f18188j) {
                this.f18188j = true;
                if (!this.f18186h || (th instanceof Exception)) {
                    try {
                        ObservableSource observableSource = (ObservableSource) this.f18185g.apply(th);
                        if (observableSource == null) {
                            NullPointerException nullPointerException = new NullPointerException("Observable is null");
                            nullPointerException.initCause(th);
                            this.f18184f.onError(nullPointerException);
                            return;
                        }
                        observableSource.subscribe(this);
                    } catch (Throwable th2) {
                        Exceptions.m4428b(th2);
                        this.f18184f.onError(new CompositeException(th, th2));
                    }
                } else {
                    this.f18184f.onError(th);
                }
            } else if (this.f18189k) {
                RxJavaPlugins.m3354t(th);
            } else {
                this.f18184f.onError(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (!this.f18189k) {
                this.f18184f.onNext(t);
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            this.f18187i.m4422a(disposable);
        }
    }

    public ObservableOnErrorNext(ObservableSource<T> observableSource, Function<? super Throwable, ? extends ObservableSource<? extends T>> function, boolean z) {
        super(observableSource);
        this.f18182g = function;
        this.f18183h = z;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super T> observer) {
        OnErrorNextObserver onErrorNextObserver = new OnErrorNextObserver(observer, this.f18182g, this.f18183h);
        observer.onSubscribe(onErrorNextObserver.f18187i);
        this.f17497f.subscribe(onErrorNextObserver);
    }
}

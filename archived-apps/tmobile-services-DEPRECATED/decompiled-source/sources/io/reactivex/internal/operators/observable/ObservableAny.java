package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Predicate;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.plugins.RxJavaPlugins;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableAny.class */
public final class ObservableAny<T> extends AbstractObservableWithUpstream<T, Boolean> {

    /* renamed from: g */
    final Predicate<? super T> f17544g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableAny$AnyObserver.class */
    static final class AnyObserver<T> implements Observer<T>, Disposable {

        /* renamed from: f */
        final Observer<? super Boolean> f17545f;

        /* renamed from: g */
        final Predicate<? super T> f17546g;

        /* renamed from: h */
        Disposable f17547h;

        /* renamed from: i */
        boolean f17548i;

        AnyObserver(Observer<? super Boolean> observer, Predicate<? super T> predicate) {
            this.f17545f = observer;
            this.f17546g = predicate;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f17547h.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17547h.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (!this.f17548i) {
                this.f17548i = true;
                this.f17545f.onNext(Boolean.FALSE);
                this.f17545f.onComplete();
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f17548i) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f17548i = true;
            this.f17545f.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (!this.f17548i) {
                try {
                    if (this.f17546g.mo3191a(t)) {
                        this.f17548i = true;
                        this.f17547h.dispose();
                        this.f17545f.onNext(Boolean.TRUE);
                        this.f17545f.onComplete();
                    }
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    this.f17547h.dispose();
                    onError(th);
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17547h, disposable)) {
                this.f17547h = disposable;
                this.f17545f.onSubscribe(this);
            }
        }
    }

    public ObservableAny(ObservableSource<T> observableSource, Predicate<? super T> predicate) {
        super(observableSource);
        this.f17544g = predicate;
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super Boolean> observer) {
        this.f17497f.subscribe(new AnyObserver(observer, this.f17544g));
    }
}

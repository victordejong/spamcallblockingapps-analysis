package io.reactivex.internal.operators.observable;

import io.reactivex.Maybe;
import io.reactivex.MaybeObserver;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.fuseable.FuseToObservable;
import io.reactivex.plugins.RxJavaPlugins;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableElementAtMaybe.class */
public final class ObservableElementAtMaybe<T> extends Maybe<T> implements FuseToObservable<T> {

    /* renamed from: f */
    final ObservableSource<T> f17868f;

    /* renamed from: g */
    final long f17869g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableElementAtMaybe$ElementAtObserver.class */
    static final class ElementAtObserver<T> implements Observer<T>, Disposable {

        /* renamed from: f */
        final MaybeObserver<? super T> f17870f;

        /* renamed from: g */
        final long f17871g;

        /* renamed from: h */
        Disposable f17872h;

        /* renamed from: i */
        long f17873i;

        /* renamed from: j */
        boolean f17874j;

        ElementAtObserver(MaybeObserver<? super T> maybeObserver, long j) {
            this.f17870f = maybeObserver;
            this.f17871g = j;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f17872h.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17872h.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (!this.f17874j) {
                this.f17874j = true;
                this.f17870f.onComplete();
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f17874j) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f17874j = true;
            this.f17870f.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (!this.f17874j) {
                long j = this.f17873i;
                if (j == this.f17871g) {
                    this.f17874j = true;
                    this.f17872h.dispose();
                    this.f17870f.onSuccess(t);
                    return;
                }
                this.f17873i = j + 1;
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17872h, disposable)) {
                this.f17872h = disposable;
                this.f17870f.onSubscribe(this);
            }
        }
    }

    public ObservableElementAtMaybe(ObservableSource<T> observableSource, long j) {
        this.f17868f = observableSource;
        this.f17869g = j;
    }

    @Override // io.reactivex.internal.fuseable.FuseToObservable
    /* renamed from: a */
    public Observable<T> mo3663a() {
        return RxJavaPlugins.m3360n(new ObservableElementAt(this.f17868f, this.f17869g, null, false));
    }

    @Override // io.reactivex.Maybe
    /* renamed from: d */
    public void mo3211d(MaybeObserver<? super T> maybeObserver) {
        this.f17868f.subscribe(new ElementAtObserver(maybeObserver, this.f17869g));
    }
}

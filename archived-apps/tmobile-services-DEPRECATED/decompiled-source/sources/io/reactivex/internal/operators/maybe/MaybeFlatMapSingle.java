package io.reactivex.internal.operators.maybe;

import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.ObjectHelper;
import java.util.NoSuchElementException;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeFlatMapSingle.class */
public final class MaybeFlatMapSingle<T, R> extends Single<R> {

    /* renamed from: f */
    final MaybeSource<T> f17114f;

    /* renamed from: g */
    final Function<? super T, ? extends SingleSource<? extends R>> f17115g;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeFlatMapSingle$FlatMapMaybeObserver.class */
    static final class FlatMapMaybeObserver<T, R> extends AtomicReference<Disposable> implements MaybeObserver<T>, Disposable {
        private static final long serialVersionUID = 4827726964688405508L;

        /* renamed from: f */
        final SingleObserver<? super R> f17116f;

        /* renamed from: g */
        final Function<? super T, ? extends SingleSource<? extends R>> f17117g;

        FlatMapMaybeObserver(SingleObserver<? super R> singleObserver, Function<? super T, ? extends SingleSource<? extends R>> function) {
            this.f17116f = singleObserver;
            this.f17117g = function;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.f17116f.onError(new NoSuchElementException());
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.f17116f.onError(th);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.setOnce(this, disposable)) {
                this.f17116f.onSubscribe(this);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            try {
                Object apply = this.f17117g.apply(t);
                ObjectHelper.m4363e(apply, "The mapper returned a null SingleSource");
                SingleSource singleSource = (SingleSource) apply;
                if (!isDisposed()) {
                    singleSource.mo4457b(new FlatMapSingleObserver(this, this.f17116f));
                }
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                onError(th);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeFlatMapSingle$FlatMapSingleObserver.class */
    static final class FlatMapSingleObserver<R> implements SingleObserver<R> {

        /* renamed from: f */
        final AtomicReference<Disposable> f17118f;

        /* renamed from: g */
        final SingleObserver<? super R> f17119g;

        FlatMapSingleObserver(AtomicReference<Disposable> atomicReference, SingleObserver<? super R> singleObserver) {
            this.f17118f = atomicReference;
            this.f17119g = singleObserver;
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            this.f17119g.onError(th);
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            DisposableHelper.replace(this.f17118f, disposable);
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(R r) {
            this.f17119g.onSuccess(r);
        }
    }

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super R> singleObserver) {
        this.f17114f.mo4485b(new FlatMapMaybeObserver(singleObserver, this.f17115g));
    }
}

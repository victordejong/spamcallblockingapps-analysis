package io.reactivex.internal.operators.single;

import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.ObjectHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleFlatMap.class */
public final class SingleFlatMap<T, R> extends Single<R> {

    /* renamed from: f */
    final SingleSource<? extends T> f19075f;

    /* renamed from: g */
    final Function<? super T, ? extends SingleSource<? extends R>> f19076g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleFlatMap$SingleFlatMapCallback.class */
    static final class SingleFlatMapCallback<T, R> extends AtomicReference<Disposable> implements SingleObserver<T>, Disposable {
        private static final long serialVersionUID = 3258103020495908596L;

        /* renamed from: f */
        final SingleObserver<? super R> f19077f;

        /* renamed from: g */
        final Function<? super T, ? extends SingleSource<? extends R>> f19078g;

        /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleFlatMap$SingleFlatMapCallback$FlatMapSingleObserver.class */
        static final class FlatMapSingleObserver<R> implements SingleObserver<R> {

            /* renamed from: f */
            final AtomicReference<Disposable> f19079f;

            /* renamed from: g */
            final SingleObserver<? super R> f19080g;

            FlatMapSingleObserver(AtomicReference<Disposable> atomicReference, SingleObserver<? super R> singleObserver) {
                this.f19079f = atomicReference;
                this.f19080g = singleObserver;
            }

            @Override // io.reactivex.SingleObserver
            public void onError(Throwable th) {
                this.f19080g.onError(th);
            }

            @Override // io.reactivex.SingleObserver
            public void onSubscribe(Disposable disposable) {
                DisposableHelper.replace(this.f19079f, disposable);
            }

            @Override // io.reactivex.SingleObserver
            public void onSuccess(R r) {
                this.f19080g.onSuccess(r);
            }
        }

        SingleFlatMapCallback(SingleObserver<? super R> singleObserver, Function<? super T, ? extends SingleSource<? extends R>> function) {
            this.f19077f = singleObserver;
            this.f19078g = function;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            this.f19077f.onError(th);
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.setOnce(this, disposable)) {
                this.f19077f.onSubscribe(this);
            }
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            try {
                Object apply = this.f19078g.apply(t);
                ObjectHelper.m4363e(apply, "The single returned by the mapper is null");
                SingleSource singleSource = (SingleSource) apply;
                if (!isDisposed()) {
                    singleSource.mo4457b(new FlatMapSingleObserver(this, this.f19077f));
                }
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                this.f19077f.onError(th);
            }
        }
    }

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super R> singleObserver) {
        this.f19075f.mo4457b(new SingleFlatMapCallback(singleObserver, this.f19076g));
    }
}

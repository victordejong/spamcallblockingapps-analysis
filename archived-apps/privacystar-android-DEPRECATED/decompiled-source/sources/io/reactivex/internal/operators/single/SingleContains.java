package io.reactivex.internal.operators.single;

import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.BiPredicate;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleContains.class */
public final class SingleContains<T> extends io.reactivex.Single<Boolean> {
    final BiPredicate<Object, Object> comparer;
    final SingleSource<T> source;
    final Object value;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleContains$Single.class */
    final class Single implements SingleObserver<T> {

        /* renamed from: s */
        private final SingleObserver<? super Boolean> f672s;

        Single(SingleObserver<? super Boolean> singleObserver) {
            this.f672s = singleObserver;
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            this.f672s.onError(th);
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            this.f672s.onSubscribe(disposable);
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            try {
                this.f672s.onSuccess(Boolean.valueOf(SingleContains.this.comparer.test(t, SingleContains.this.value)));
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.f672s.onError(th);
            }
        }
    }

    public SingleContains(SingleSource<T> singleSource, Object obj, BiPredicate<Object, Object> biPredicate) {
        this.source = singleSource;
        this.value = obj;
        this.comparer = biPredicate;
    }

    @Override // io.reactivex.Single
    protected void subscribeActual(SingleObserver<? super Boolean> singleObserver) {
        this.source.subscribe(new Single(singleObserver));
    }
}

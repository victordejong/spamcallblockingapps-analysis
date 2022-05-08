package io.reactivex.internal.operators.single;

import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Consumer;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleDoOnSuccess.class */
public final class SingleDoOnSuccess<T> extends Single<T> {

    /* renamed from: f */
    final SingleSource<T> f19059f;

    /* renamed from: g */
    final Consumer<? super T> f19060g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleDoOnSuccess$DoOnSuccess.class */
    final class DoOnSuccess implements SingleObserver<T> {

        /* renamed from: f */
        final SingleObserver<? super T> f19061f;

        DoOnSuccess(SingleObserver<? super T> singleObserver) {
            this.f19061f = singleObserver;
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            this.f19061f.onError(th);
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            this.f19061f.onSubscribe(disposable);
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            try {
                SingleDoOnSuccess.this.f19060g.accept(t);
                this.f19061f.onSuccess(t);
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                this.f19061f.onError(th);
            }
        }
    }

    public SingleDoOnSuccess(SingleSource<T> singleSource, Consumer<? super T> consumer) {
        this.f19059f = singleSource;
        this.f19060g = consumer;
    }

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super T> singleObserver) {
        this.f19059f.mo4457b(new DoOnSuccess(singleObserver));
    }
}

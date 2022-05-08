package io.reactivex.internal.operators.single;

import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleHide.class */
public final class SingleHide<T> extends Single<T> {

    /* renamed from: f */
    final SingleSource<? extends T> f19122f;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleHide$HideSingleObserver.class */
    static final class HideSingleObserver<T> implements SingleObserver<T>, Disposable {

        /* renamed from: f */
        final SingleObserver<? super T> f19123f;

        /* renamed from: g */
        Disposable f19124g;

        HideSingleObserver(SingleObserver<? super T> singleObserver) {
            this.f19123f = singleObserver;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f19124g.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f19124g.isDisposed();
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            this.f19123f.onError(th);
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f19124g, disposable)) {
                this.f19124g = disposable;
                this.f19123f.onSubscribe(this);
            }
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            this.f19123f.onSuccess(t);
        }
    }

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super T> singleObserver) {
        this.f19122f.mo4457b(new HideSingleObserver(singleObserver));
    }
}

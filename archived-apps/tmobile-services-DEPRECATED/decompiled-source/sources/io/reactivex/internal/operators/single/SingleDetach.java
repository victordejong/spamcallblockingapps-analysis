package io.reactivex.internal.operators.single;

import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleDetach.class */
public final class SingleDetach<T> extends Single<T> {

    /* renamed from: f */
    final SingleSource<T> f19024f;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleDetach$DetachSingleObserver.class */
    static final class DetachSingleObserver<T> implements SingleObserver<T>, Disposable {

        /* renamed from: f */
        SingleObserver<? super T> f19025f;

        /* renamed from: g */
        Disposable f19026g;

        DetachSingleObserver(SingleObserver<? super T> singleObserver) {
            this.f19025f = singleObserver;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f19025f = null;
            this.f19026g.dispose();
            this.f19026g = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f19026g.isDisposed();
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            this.f19026g = DisposableHelper.DISPOSED;
            SingleObserver<? super T> singleObserver = this.f19025f;
            if (singleObserver != null) {
                this.f19025f = null;
                singleObserver.onError(th);
            }
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f19026g, disposable)) {
                this.f19026g = disposable;
                this.f19025f.onSubscribe(this);
            }
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            this.f19026g = DisposableHelper.DISPOSED;
            SingleObserver<? super T> singleObserver = this.f19025f;
            if (singleObserver != null) {
                this.f19025f = null;
                singleObserver.onSuccess(t);
            }
        }
    }

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super T> singleObserver) {
        this.f19024f.mo4457b(new DetachSingleObserver(singleObserver));
    }
}

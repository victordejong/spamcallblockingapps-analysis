package io.reactivex.internal.operators.maybe;

import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.fuseable.FuseToMaybe;
import io.reactivex.internal.fuseable.HasUpstreamMaybeSource;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeIsEmptySingle.class */
public final class MaybeIsEmptySingle<T> extends Single<Boolean> implements HasUpstreamMaybeSource<T>, FuseToMaybe<Boolean> {

    /* renamed from: f */
    final MaybeSource<T> f17152f;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeIsEmptySingle$IsEmptyMaybeObserver.class */
    static final class IsEmptyMaybeObserver<T> implements MaybeObserver<T>, Disposable {

        /* renamed from: f */
        final SingleObserver<? super Boolean> f17153f;

        /* renamed from: g */
        Disposable f17154g;

        IsEmptyMaybeObserver(SingleObserver<? super Boolean> singleObserver) {
            this.f17153f = singleObserver;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f17154g.dispose();
            this.f17154g = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17154g.isDisposed();
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.f17154g = DisposableHelper.DISPOSED;
            this.f17153f.onSuccess(Boolean.TRUE);
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.f17154g = DisposableHelper.DISPOSED;
            this.f17153f.onError(th);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17154g, disposable)) {
                this.f17154g = disposable;
                this.f17153f.onSubscribe(this);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            this.f17154g = DisposableHelper.DISPOSED;
            this.f17153f.onSuccess(Boolean.FALSE);
        }
    }

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super Boolean> singleObserver) {
        this.f17152f.mo4485b(new IsEmptyMaybeObserver(singleObserver));
    }
}

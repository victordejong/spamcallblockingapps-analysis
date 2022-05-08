package io.reactivex.internal.operators.maybe;

import io.reactivex.Maybe;
import io.reactivex.MaybeObserver;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.fuseable.HasUpstreamSingleSource;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeFromSingle.class */
public final class MaybeFromSingle<T> extends Maybe<T> implements HasUpstreamSingleSource<T> {

    /* renamed from: f */
    final SingleSource<T> f17140f;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeFromSingle$FromSingleObserver.class */
    static final class FromSingleObserver<T> implements SingleObserver<T>, Disposable {

        /* renamed from: f */
        final MaybeObserver<? super T> f17141f;

        /* renamed from: g */
        Disposable f17142g;

        FromSingleObserver(MaybeObserver<? super T> maybeObserver) {
            this.f17141f = maybeObserver;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f17142g.dispose();
            this.f17142g = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17142g.isDisposed();
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            this.f17142g = DisposableHelper.DISPOSED;
            this.f17141f.onError(th);
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17142g, disposable)) {
                this.f17142g = disposable;
                this.f17141f.onSubscribe(this);
            }
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            this.f17142g = DisposableHelper.DISPOSED;
            this.f17141f.onSuccess(t);
        }
    }

    @Override // io.reactivex.Maybe
    /* renamed from: d */
    protected void mo3211d(MaybeObserver<? super T> maybeObserver) {
        this.f17140f.mo4457b(new FromSingleObserver(maybeObserver));
    }
}

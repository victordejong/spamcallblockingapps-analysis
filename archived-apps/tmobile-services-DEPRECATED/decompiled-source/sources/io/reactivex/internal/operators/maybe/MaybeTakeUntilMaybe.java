package io.reactivex.internal.operators.maybe;

import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeTakeUntilMaybe.class */
public final class MaybeTakeUntilMaybe<T, U> extends AbstractMaybeWithUpstream<T, T> {

    /* renamed from: g */
    final MaybeSource<U> f17221g;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeTakeUntilMaybe$TakeUntilMainMaybeObserver.class */
    static final class TakeUntilMainMaybeObserver<T, U> extends AtomicReference<Disposable> implements MaybeObserver<T>, Disposable {
        private static final long serialVersionUID = -2187421758664251153L;

        /* renamed from: f */
        final MaybeObserver<? super T> f17222f;

        /* renamed from: g */
        final TakeUntilOtherMaybeObserver<U> f17223g = new TakeUntilOtherMaybeObserver<>(this);

        /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeTakeUntilMaybe$TakeUntilMainMaybeObserver$TakeUntilOtherMaybeObserver.class */
        static final class TakeUntilOtherMaybeObserver<U> extends AtomicReference<Disposable> implements MaybeObserver<U> {
            private static final long serialVersionUID = -1266041316834525931L;

            /* renamed from: f */
            final TakeUntilMainMaybeObserver<?, U> f17224f;

            TakeUntilOtherMaybeObserver(TakeUntilMainMaybeObserver<?, U> takeUntilMainMaybeObserver) {
                this.f17224f = takeUntilMainMaybeObserver;
            }

            @Override // io.reactivex.MaybeObserver
            public void onComplete() {
                this.f17224f.m3984a();
            }

            @Override // io.reactivex.MaybeObserver
            public void onError(Throwable th) {
                this.f17224f.m3983b(th);
            }

            @Override // io.reactivex.MaybeObserver
            public void onSubscribe(Disposable disposable) {
                DisposableHelper.setOnce(this, disposable);
            }

            @Override // io.reactivex.MaybeObserver
            public void onSuccess(Object obj) {
                this.f17224f.m3984a();
            }
        }

        TakeUntilMainMaybeObserver(MaybeObserver<? super T> maybeObserver) {
            this.f17222f = maybeObserver;
        }

        /* renamed from: a */
        void m3984a() {
            if (DisposableHelper.dispose(this)) {
                this.f17222f.onComplete();
            }
        }

        /* renamed from: b */
        void m3983b(Throwable th) {
            if (DisposableHelper.dispose(this)) {
                this.f17222f.onError(th);
            } else {
                RxJavaPlugins.m3354t(th);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            DisposableHelper.dispose(this);
            DisposableHelper.dispose(this.f17223g);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            DisposableHelper.dispose(this.f17223g);
            if (getAndSet(DisposableHelper.DISPOSED) != DisposableHelper.DISPOSED) {
                this.f17222f.onComplete();
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            DisposableHelper.dispose(this.f17223g);
            if (getAndSet(DisposableHelper.DISPOSED) != DisposableHelper.DISPOSED) {
                this.f17222f.onError(th);
            } else {
                RxJavaPlugins.m3354t(th);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            DisposableHelper.setOnce(this, disposable);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            DisposableHelper.dispose(this.f17223g);
            if (getAndSet(DisposableHelper.DISPOSED) != DisposableHelper.DISPOSED) {
                this.f17222f.onSuccess(t);
            }
        }
    }

    @Override // io.reactivex.Maybe
    /* renamed from: d */
    protected void mo3211d(MaybeObserver<? super T> maybeObserver) {
        TakeUntilMainMaybeObserver takeUntilMainMaybeObserver = new TakeUntilMainMaybeObserver(maybeObserver);
        maybeObserver.onSubscribe(takeUntilMainMaybeObserver);
        this.f17221g.mo4485b(takeUntilMainMaybeObserver.f17223g);
        this.f16960f.mo4485b(takeUntilMainMaybeObserver);
    }
}

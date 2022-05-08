package io.reactivex.internal.operators.maybe;

import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.ObjectHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeOnErrorNext.class */
public final class MaybeOnErrorNext<T> extends AbstractMaybeWithUpstream<T, T> {

    /* renamed from: g */
    final Function<? super Throwable, ? extends MaybeSource<? extends T>> f17185g;

    /* renamed from: h */
    final boolean f17186h;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeOnErrorNext$OnErrorNextMaybeObserver.class */
    static final class OnErrorNextMaybeObserver<T> extends AtomicReference<Disposable> implements MaybeObserver<T>, Disposable {
        private static final long serialVersionUID = 2026620218879969836L;

        /* renamed from: f */
        final MaybeObserver<? super T> f17187f;

        /* renamed from: g */
        final Function<? super Throwable, ? extends MaybeSource<? extends T>> f17188g;

        /* renamed from: h */
        final boolean f17189h;

        /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeOnErrorNext$OnErrorNextMaybeObserver$NextMaybeObserver.class */
        static final class NextMaybeObserver<T> implements MaybeObserver<T> {

            /* renamed from: f */
            final MaybeObserver<? super T> f17190f;

            /* renamed from: g */
            final AtomicReference<Disposable> f17191g;

            NextMaybeObserver(MaybeObserver<? super T> maybeObserver, AtomicReference<Disposable> atomicReference) {
                this.f17190f = maybeObserver;
                this.f17191g = atomicReference;
            }

            @Override // io.reactivex.MaybeObserver
            public void onComplete() {
                this.f17190f.onComplete();
            }

            @Override // io.reactivex.MaybeObserver
            public void onError(Throwable th) {
                this.f17190f.onError(th);
            }

            @Override // io.reactivex.MaybeObserver
            public void onSubscribe(Disposable disposable) {
                DisposableHelper.setOnce(this.f17191g, disposable);
            }

            @Override // io.reactivex.MaybeObserver
            public void onSuccess(T t) {
                this.f17190f.onSuccess(t);
            }
        }

        OnErrorNextMaybeObserver(MaybeObserver<? super T> maybeObserver, Function<? super Throwable, ? extends MaybeSource<? extends T>> function, boolean z) {
            this.f17187f = maybeObserver;
            this.f17188g = function;
            this.f17189h = z;
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
            this.f17187f.onComplete();
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            if (this.f17189h || (th instanceof Exception)) {
                try {
                    Object apply = this.f17188g.apply(th);
                    ObjectHelper.m4363e(apply, "The resumeFunction returned a null MaybeSource");
                    MaybeSource maybeSource = (MaybeSource) apply;
                    DisposableHelper.replace(this, null);
                    maybeSource.mo4485b(new NextMaybeObserver(this.f17187f, this));
                } catch (Throwable th2) {
                    Exceptions.m4428b(th2);
                    this.f17187f.onError(new CompositeException(th, th2));
                }
            } else {
                this.f17187f.onError(th);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.setOnce(this, disposable)) {
                this.f17187f.onSubscribe(this);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            this.f17187f.onSuccess(t);
        }
    }

    @Override // io.reactivex.Maybe
    /* renamed from: d */
    protected void mo3211d(MaybeObserver<? super T> maybeObserver) {
        this.f16960f.mo4485b(new OnErrorNextMaybeObserver(maybeObserver, this.f17185g, this.f17186h));
    }
}

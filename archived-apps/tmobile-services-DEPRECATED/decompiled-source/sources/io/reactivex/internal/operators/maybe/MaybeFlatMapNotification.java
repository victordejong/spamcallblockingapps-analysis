package io.reactivex.internal.operators.maybe;

import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.ObjectHelper;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeFlatMapNotification.class */
public final class MaybeFlatMapNotification<T, R> extends AbstractMaybeWithUpstream<T, R> {

    /* renamed from: g */
    final Function<? super T, ? extends MaybeSource<? extends R>> f17105g;

    /* renamed from: h */
    final Function<? super Throwable, ? extends MaybeSource<? extends R>> f17106h;

    /* renamed from: i */
    final Callable<? extends MaybeSource<? extends R>> f17107i;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeFlatMapNotification$FlatMapMaybeObserver.class */
    static final class FlatMapMaybeObserver<T, R> extends AtomicReference<Disposable> implements MaybeObserver<T>, Disposable {
        private static final long serialVersionUID = 4375739915521278546L;

        /* renamed from: f */
        final MaybeObserver<? super R> f17108f;

        /* renamed from: g */
        final Function<? super T, ? extends MaybeSource<? extends R>> f17109g;

        /* renamed from: h */
        final Function<? super Throwable, ? extends MaybeSource<? extends R>> f17110h;

        /* renamed from: i */
        final Callable<? extends MaybeSource<? extends R>> f17111i;

        /* renamed from: j */
        Disposable f17112j;

        /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeFlatMapNotification$FlatMapMaybeObserver$InnerObserver.class */
        final class InnerObserver implements MaybeObserver<R> {
            InnerObserver() {
            }

            @Override // io.reactivex.MaybeObserver
            public void onComplete() {
                FlatMapMaybeObserver.this.f17108f.onComplete();
            }

            @Override // io.reactivex.MaybeObserver
            public void onError(Throwable th) {
                FlatMapMaybeObserver.this.f17108f.onError(th);
            }

            @Override // io.reactivex.MaybeObserver
            public void onSubscribe(Disposable disposable) {
                DisposableHelper.setOnce(FlatMapMaybeObserver.this, disposable);
            }

            @Override // io.reactivex.MaybeObserver
            public void onSuccess(R r) {
                FlatMapMaybeObserver.this.f17108f.onSuccess(r);
            }
        }

        FlatMapMaybeObserver(MaybeObserver<? super R> maybeObserver, Function<? super T, ? extends MaybeSource<? extends R>> function, Function<? super Throwable, ? extends MaybeSource<? extends R>> function2, Callable<? extends MaybeSource<? extends R>> callable) {
            this.f17108f = maybeObserver;
            this.f17109g = function;
            this.f17110h = function2;
            this.f17111i = callable;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            DisposableHelper.dispose(this);
            this.f17112j.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            try {
                Object call = this.f17111i.call();
                ObjectHelper.m4363e(call, "The onCompleteSupplier returned a null MaybeSource");
                ((MaybeSource) call).mo4485b(new InnerObserver());
            } catch (Exception e) {
                Exceptions.m4428b(e);
                this.f17108f.onError(e);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            try {
                Object apply = this.f17110h.apply(th);
                ObjectHelper.m4363e(apply, "The onErrorMapper returned a null MaybeSource");
                ((MaybeSource) apply).mo4485b(new InnerObserver());
            } catch (Exception e) {
                Exceptions.m4428b(e);
                this.f17108f.onError(new CompositeException(th, e));
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17112j, disposable)) {
                this.f17112j = disposable;
                this.f17108f.onSubscribe(this);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            try {
                Object apply = this.f17109g.apply(t);
                ObjectHelper.m4363e(apply, "The onSuccessMapper returned a null MaybeSource");
                ((MaybeSource) apply).mo4485b(new InnerObserver());
            } catch (Exception e) {
                Exceptions.m4428b(e);
                this.f17108f.onError(e);
            }
        }
    }

    @Override // io.reactivex.Maybe
    /* renamed from: d */
    protected void mo3211d(MaybeObserver<? super R> maybeObserver) {
        this.f16960f.mo4485b(new FlatMapMaybeObserver(maybeObserver, this.f17105g, this.f17106h, this.f17107i));
    }
}

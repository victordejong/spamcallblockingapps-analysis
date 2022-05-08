package io.reactivex.internal.operators.maybe;

import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.BiFunction;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.ObjectHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeFlatMapBiSelector.class */
public final class MaybeFlatMapBiSelector<T, U, R> extends AbstractMaybeWithUpstream<T, R> {

    /* renamed from: g */
    final Function<? super T, ? extends MaybeSource<? extends U>> f17077g;

    /* renamed from: h */
    final BiFunction<? super T, ? super U, ? extends R> f17078h;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeFlatMapBiSelector$FlatMapBiMainObserver.class */
    static final class FlatMapBiMainObserver<T, U, R> implements MaybeObserver<T>, Disposable {

        /* renamed from: f */
        final Function<? super T, ? extends MaybeSource<? extends U>> f17079f;

        /* renamed from: g */
        final InnerObserver<T, U, R> f17080g;

        /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeFlatMapBiSelector$FlatMapBiMainObserver$InnerObserver.class */
        static final class InnerObserver<T, U, R> extends AtomicReference<Disposable> implements MaybeObserver<U> {
            private static final long serialVersionUID = -2897979525538174559L;

            /* renamed from: f */
            final MaybeObserver<? super R> f17081f;

            /* renamed from: g */
            final BiFunction<? super T, ? super U, ? extends R> f17082g;

            /* renamed from: h */
            T f17083h;

            InnerObserver(MaybeObserver<? super R> maybeObserver, BiFunction<? super T, ? super U, ? extends R> biFunction) {
                this.f17081f = maybeObserver;
                this.f17082g = biFunction;
            }

            @Override // io.reactivex.MaybeObserver
            public void onComplete() {
                this.f17081f.onComplete();
            }

            @Override // io.reactivex.MaybeObserver
            public void onError(Throwable th) {
                this.f17081f.onError(th);
            }

            @Override // io.reactivex.MaybeObserver
            public void onSubscribe(Disposable disposable) {
                DisposableHelper.setOnce(this, disposable);
            }

            @Override // io.reactivex.MaybeObserver
            public void onSuccess(U u) {
                T t = this.f17083h;
                this.f17083h = null;
                try {
                    Object apply = this.f17082g.apply(t, u);
                    ObjectHelper.m4363e(apply, "The resultSelector returned a null value");
                    this.f17081f.onSuccess(apply);
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    this.f17081f.onError(th);
                }
            }
        }

        FlatMapBiMainObserver(MaybeObserver<? super R> maybeObserver, Function<? super T, ? extends MaybeSource<? extends U>> function, BiFunction<? super T, ? super U, ? extends R> biFunction) {
            this.f17080g = new InnerObserver<>(maybeObserver, biFunction);
            this.f17079f = function;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            DisposableHelper.dispose(this.f17080g);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f17080g.get());
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.f17080g.f17081f.onComplete();
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.f17080g.f17081f.onError(th);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.setOnce(this.f17080g, disposable)) {
                this.f17080g.f17081f.onSubscribe(this);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            try {
                Object apply = this.f17079f.apply(t);
                ObjectHelper.m4363e(apply, "The mapper returned a null MaybeSource");
                MaybeSource maybeSource = (MaybeSource) apply;
                if (DisposableHelper.replace(this.f17080g, null)) {
                    InnerObserver<T, U, R> innerObserver = this.f17080g;
                    innerObserver.f17083h = t;
                    maybeSource.mo4485b(innerObserver);
                }
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                this.f17080g.f17081f.onError(th);
            }
        }
    }

    @Override // io.reactivex.Maybe
    /* renamed from: d */
    protected void mo3211d(MaybeObserver<? super R> maybeObserver) {
        this.f16960f.mo4485b(new FlatMapBiMainObserver(maybeObserver, this.f17077g, this.f17078h));
    }
}

package io.reactivex.internal.operators.maybe;

import io.reactivex.MaybeObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Consumer;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.plugins.RxJavaPlugins;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeDoAfterSuccess.class */
public final class MaybeDoAfterSuccess<T> extends AbstractMaybeWithUpstream<T, T> {

    /* renamed from: g */
    final Consumer<? super T> f17041g;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeDoAfterSuccess$DoAfterObserver.class */
    static final class DoAfterObserver<T> implements MaybeObserver<T>, Disposable {

        /* renamed from: f */
        final MaybeObserver<? super T> f17042f;

        /* renamed from: g */
        final Consumer<? super T> f17043g;

        /* renamed from: h */
        Disposable f17044h;

        DoAfterObserver(MaybeObserver<? super T> maybeObserver, Consumer<? super T> consumer) {
            this.f17042f = maybeObserver;
            this.f17043g = consumer;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f17044h.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17044h.isDisposed();
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.f17042f.onComplete();
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.f17042f.onError(th);
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17044h, disposable)) {
                this.f17044h = disposable;
                this.f17042f.onSubscribe(this);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            this.f17042f.onSuccess(t);
            try {
                this.f17043g.accept(t);
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                RxJavaPlugins.m3354t(th);
            }
        }
    }

    @Override // io.reactivex.Maybe
    /* renamed from: d */
    protected void mo3211d(MaybeObserver<? super T> maybeObserver) {
        this.f16960f.mo4485b(new DoAfterObserver(maybeObserver, this.f17041g));
    }
}

package io.reactivex.internal.operators.maybe;

import io.reactivex.MaybeObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.plugins.RxJavaPlugins;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybePeek.class */
public final class MaybePeek<T> extends AbstractMaybeWithUpstream<T, T> {

    /* renamed from: g */
    final Consumer<? super Disposable> f17196g;

    /* renamed from: h */
    final Consumer<? super T> f17197h;

    /* renamed from: i */
    final Consumer<? super Throwable> f17198i;

    /* renamed from: j */
    final Action f17199j;

    /* renamed from: k */
    final Action f17200k;

    /* renamed from: l */
    final Action f17201l;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybePeek$MaybePeekObserver.class */
    static final class MaybePeekObserver<T> implements MaybeObserver<T>, Disposable {

        /* renamed from: f */
        final MaybeObserver<? super T> f17202f;

        /* renamed from: g */
        final MaybePeek<T> f17203g;

        /* renamed from: h */
        Disposable f17204h;

        MaybePeekObserver(MaybeObserver<? super T> maybeObserver, MaybePeek<T> maybePeek) {
            this.f17202f = maybeObserver;
            this.f17203g = maybePeek;
        }

        /* renamed from: a */
        void m3986a() {
            try {
                this.f17203g.f17200k.run();
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                RxJavaPlugins.m3354t(th);
            }
        }

        /* renamed from: b */
        void m3985b(Throwable th) {
            try {
                this.f17203g.f17198i.accept(th);
            } catch (Throwable th2) {
                Exceptions.m4428b(th2);
                th = new CompositeException(th, th2);
            }
            this.f17204h = DisposableHelper.DISPOSED;
            this.f17202f.onError(th);
            m3986a();
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            try {
                this.f17203g.f17201l.run();
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                RxJavaPlugins.m3354t(th);
            }
            this.f17204h.dispose();
            this.f17204h = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17204h.isDisposed();
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            if (this.f17204h != DisposableHelper.DISPOSED) {
                try {
                    this.f17203g.f17199j.run();
                    this.f17204h = DisposableHelper.DISPOSED;
                    this.f17202f.onComplete();
                    m3986a();
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    m3985b(th);
                }
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            if (this.f17204h == DisposableHelper.DISPOSED) {
                RxJavaPlugins.m3354t(th);
            } else {
                m3985b(th);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17204h, disposable)) {
                try {
                    this.f17203g.f17196g.accept(disposable);
                    this.f17204h = disposable;
                    this.f17202f.onSubscribe(this);
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    disposable.dispose();
                    this.f17204h = DisposableHelper.DISPOSED;
                    EmptyDisposable.error(th, this.f17202f);
                }
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            if (this.f17204h != DisposableHelper.DISPOSED) {
                try {
                    this.f17203g.f17197h.accept(t);
                    this.f17204h = DisposableHelper.DISPOSED;
                    this.f17202f.onSuccess(t);
                    m3986a();
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    m3985b(th);
                }
            }
        }
    }

    @Override // io.reactivex.Maybe
    /* renamed from: d */
    protected void mo3211d(MaybeObserver<? super T> maybeObserver) {
        this.f16960f.mo4485b(new MaybePeekObserver(maybeObserver, this));
    }
}

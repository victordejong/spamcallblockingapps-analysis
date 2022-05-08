package io.reactivex.internal.operators.maybe;

import io.reactivex.Maybe;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeUsing.class */
public final class MaybeUsing<T, D> extends Maybe<T> {

    /* renamed from: f */
    final Callable<? extends D> f17262f;

    /* renamed from: g */
    final Function<? super D, ? extends MaybeSource<? extends T>> f17263g;

    /* renamed from: h */
    final Consumer<? super D> f17264h;

    /* renamed from: i */
    final boolean f17265i;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver.class */
    static final class UsingObserver<T, D> extends AtomicReference<Object> implements MaybeObserver<T>, Disposable {
        private static final long serialVersionUID = -674404550052917487L;

        /* renamed from: f */
        final MaybeObserver<? super T> f17266f;

        /* renamed from: g */
        final Consumer<? super D> f17267g;

        /* renamed from: h */
        final boolean f17268h;

        /* renamed from: i */
        Disposable f17269i;

        UsingObserver(MaybeObserver<? super T> maybeObserver, D d, Consumer<? super D> consumer, boolean z) {
            super(d);
            this.f17266f = maybeObserver;
            this.f17267g = consumer;
            this.f17268h = z;
        }

        /* renamed from: a */
        void m3974a() {
            Object andSet = getAndSet(this);
            if (andSet != this) {
                try {
                    this.f17267g.accept(andSet);
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    RxJavaPlugins.m3354t(th);
                }
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f17269i.dispose();
            this.f17269i = DisposableHelper.DISPOSED;
            m3974a();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17269i.isDisposed();
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.f17269i = DisposableHelper.DISPOSED;
            if (this.f17268h) {
                Object andSet = getAndSet(this);
                if (andSet != this) {
                    try {
                        this.f17267g.accept(andSet);
                    } catch (Throwable th) {
                        Exceptions.m4428b(th);
                        this.f17266f.onError(th);
                        return;
                    }
                } else {
                    return;
                }
            }
            this.f17266f.onComplete();
            if (!this.f17268h) {
                m3974a();
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.f17269i = DisposableHelper.DISPOSED;
            Throwable th2 = th;
            if (this.f17268h) {
                Object andSet = getAndSet(this);
                if (andSet != this) {
                    try {
                        this.f17267g.accept(andSet);
                        th2 = th;
                    } catch (Throwable th3) {
                        Exceptions.m4428b(th3);
                        th2 = new CompositeException(th, th3);
                    }
                } else {
                    return;
                }
            }
            this.f17266f.onError(th2);
            if (!this.f17268h) {
                m3974a();
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17269i, disposable)) {
                this.f17269i = disposable;
                this.f17266f.onSubscribe(this);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            this.f17269i = DisposableHelper.DISPOSED;
            if (this.f17268h) {
                Object andSet = getAndSet(this);
                if (andSet != this) {
                    try {
                        this.f17267g.accept(andSet);
                    } catch (Throwable th) {
                        Exceptions.m4428b(th);
                        this.f17266f.onError(th);
                        return;
                    }
                } else {
                    return;
                }
            }
            this.f17266f.onSuccess(t);
            if (!this.f17268h) {
                m3974a();
            }
        }
    }

    @Override // io.reactivex.Maybe
    /* renamed from: d */
    protected void mo3211d(MaybeObserver<? super T> maybeObserver) {
        try {
            Object call = this.f17262f.call();
            try {
                Object apply = this.f17263g.apply(call);
                ObjectHelper.m4363e(apply, "The sourceSupplier returned a null MaybeSource");
                ((MaybeSource) apply).mo4485b(new UsingObserver(maybeObserver, call, this.f17264h, this.f17265i));
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                if (this.f17265i) {
                    try {
                        this.f17264h.accept(call);
                    } catch (Throwable th2) {
                        Exceptions.m4428b(th2);
                        EmptyDisposable.error(new CompositeException(th, th2), maybeObserver);
                        return;
                    }
                }
                EmptyDisposable.error(th, maybeObserver);
                if (!this.f17265i) {
                    try {
                        this.f17264h.accept(call);
                    } catch (Throwable th3) {
                        Exceptions.m4428b(th3);
                        RxJavaPlugins.m3354t(th3);
                    }
                }
            }
        } catch (Throwable th4) {
            Exceptions.m4428b(th4);
            EmptyDisposable.error(th4, maybeObserver);
        }
    }
}

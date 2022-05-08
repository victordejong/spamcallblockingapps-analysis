package io.reactivex.internal.operators.maybe;

import io.reactivex.MaybeObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Predicate;
import io.reactivex.internal.disposables.DisposableHelper;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeOnErrorComplete.class */
public final class MaybeOnErrorComplete<T> extends AbstractMaybeWithUpstream<T, T> {

    /* renamed from: g */
    final Predicate<? super Throwable> f17181g;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeOnErrorComplete$OnErrorCompleteMaybeObserver.class */
    static final class OnErrorCompleteMaybeObserver<T> implements MaybeObserver<T>, Disposable {

        /* renamed from: f */
        final MaybeObserver<? super T> f17182f;

        /* renamed from: g */
        final Predicate<? super Throwable> f17183g;

        /* renamed from: h */
        Disposable f17184h;

        OnErrorCompleteMaybeObserver(MaybeObserver<? super T> maybeObserver, Predicate<? super Throwable> predicate) {
            this.f17182f = maybeObserver;
            this.f17183g = predicate;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f17184h.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17184h.isDisposed();
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.f17182f.onComplete();
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            try {
                if (this.f17183g.mo3191a(th)) {
                    this.f17182f.onComplete();
                } else {
                    this.f17182f.onError(th);
                }
            } catch (Throwable th2) {
                Exceptions.m4428b(th2);
                this.f17182f.onError(new CompositeException(th, th2));
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17184h, disposable)) {
                this.f17184h = disposable;
                this.f17182f.onSubscribe(this);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            this.f17182f.onSuccess(t);
        }
    }

    @Override // io.reactivex.Maybe
    /* renamed from: d */
    protected void mo3211d(MaybeObserver<? super T> maybeObserver) {
        this.f16960f.mo4485b(new OnErrorCompleteMaybeObserver(maybeObserver, this.f17181g));
    }
}

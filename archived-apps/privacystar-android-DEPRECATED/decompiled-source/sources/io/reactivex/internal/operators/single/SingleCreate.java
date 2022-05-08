package io.reactivex.internal.operators.single;

import io.reactivex.Single;
import io.reactivex.SingleEmitter;
import io.reactivex.SingleObserver;
import io.reactivex.SingleOnSubscribe;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Cancellable;
import io.reactivex.internal.disposables.CancellableDisposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleCreate.class */
public final class SingleCreate<T> extends Single<T> {
    final SingleOnSubscribe<T> source;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleCreate$Emitter.class */
    static final class Emitter<T> extends AtomicReference<Disposable> implements SingleEmitter<T>, Disposable {
        private static final long serialVersionUID = -2467358622224974244L;
        final SingleObserver<? super T> actual;

        Emitter(SingleObserver<? super T> singleObserver) {
            this.actual = singleObserver;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.SingleEmitter, io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.SingleEmitter
        public void onError(Throwable th) {
            if (!tryOnError(th)) {
                RxJavaPlugins.onError(th);
            }
        }

        @Override // io.reactivex.SingleEmitter
        public void onSuccess(T t) {
            Disposable andSet;
            if (get() != DisposableHelper.DISPOSED && (andSet = getAndSet(DisposableHelper.DISPOSED)) != DisposableHelper.DISPOSED) {
                try {
                    if (t == null) {
                        this.actual.onError(new NullPointerException("onSuccess called with null. Null values are generally not allowed in 2.x operators and sources."));
                    } else {
                        this.actual.onSuccess(t);
                    }
                    if (andSet != null) {
                        andSet.dispose();
                    }
                } catch (Throwable th) {
                    if (andSet != null) {
                        andSet.dispose();
                    }
                    throw th;
                }
            }
        }

        @Override // io.reactivex.SingleEmitter
        public void setCancellable(Cancellable cancellable) {
            setDisposable(new CancellableDisposable(cancellable));
        }

        @Override // io.reactivex.SingleEmitter
        public void setDisposable(Disposable disposable) {
            DisposableHelper.set(this, disposable);
        }

        @Override // io.reactivex.SingleEmitter
        public boolean tryOnError(Throwable th) {
            Disposable andSet;
            Throwable th2 = th;
            if (th == null) {
                th2 = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            if (get() == DisposableHelper.DISPOSED || (andSet = getAndSet(DisposableHelper.DISPOSED)) == DisposableHelper.DISPOSED) {
                return false;
            }
            try {
                this.actual.onError(th2);
                if (andSet == null) {
                    return true;
                }
                andSet.dispose();
                return true;
            } catch (Throwable th3) {
                if (andSet != null) {
                    andSet.dispose();
                }
                throw th3;
            }
        }
    }

    public SingleCreate(SingleOnSubscribe<T> singleOnSubscribe) {
        this.source = singleOnSubscribe;
    }

    @Override // io.reactivex.Single
    protected void subscribeActual(SingleObserver<? super T> singleObserver) {
        Emitter emitter = new Emitter(singleObserver);
        singleObserver.onSubscribe(emitter);
        try {
            this.source.subscribe(emitter);
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            emitter.onError(th);
        }
    }
}

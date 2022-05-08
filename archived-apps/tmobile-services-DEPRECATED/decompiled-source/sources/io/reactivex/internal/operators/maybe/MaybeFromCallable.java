package io.reactivex.internal.operators.maybe;

import io.reactivex.Maybe;
import io.reactivex.MaybeObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.disposables.Disposables;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeFromCallable.class */
public final class MaybeFromCallable<T> extends Maybe<T> implements Callable<T> {

    /* renamed from: f */
    final Callable<? extends T> f17132f;

    @Override // java.util.concurrent.Callable
    public T call() throws Exception {
        return (T) this.f17132f.call();
    }

    @Override // io.reactivex.Maybe
    /* renamed from: d */
    protected void mo3211d(MaybeObserver<? super T> maybeObserver) {
        Disposable b = Disposables.m4440b();
        maybeObserver.onSubscribe(b);
        if (!b.isDisposed()) {
            try {
                Object obj = (Object) this.f17132f.call();
                if (b.isDisposed()) {
                    return;
                }
                if (obj == 0) {
                    maybeObserver.onComplete();
                } else {
                    maybeObserver.onSuccess(obj);
                }
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                if (!b.isDisposed()) {
                    maybeObserver.onError(th);
                } else {
                    RxJavaPlugins.m3354t(th);
                }
            }
        }
    }
}

package io.reactivex.internal.operators.maybe;

import io.reactivex.Maybe;
import io.reactivex.MaybeObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.disposables.Disposables;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeFromRunnable.class */
public final class MaybeFromRunnable<T> extends Maybe<T> implements Callable<T> {

    /* renamed from: f */
    final Runnable f17139f;

    @Override // java.util.concurrent.Callable
    public T call() throws Exception {
        this.f17139f.run();
        return null;
    }

    @Override // io.reactivex.Maybe
    /* renamed from: d */
    protected void mo3211d(MaybeObserver<? super T> maybeObserver) {
        Disposable b = Disposables.m4440b();
        maybeObserver.onSubscribe(b);
        if (!b.isDisposed()) {
            try {
                this.f17139f.run();
                if (!b.isDisposed()) {
                    maybeObserver.onComplete();
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

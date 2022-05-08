package io.reactivex.internal.operators.maybe;

import io.reactivex.Maybe;
import io.reactivex.MaybeObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.disposables.Disposables;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Action;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeFromAction.class */
public final class MaybeFromAction<T> extends Maybe<T> implements Callable<T> {

    /* renamed from: f */
    final Action f17131f;

    @Override // java.util.concurrent.Callable
    public T call() throws Exception {
        this.f17131f.run();
        return null;
    }

    @Override // io.reactivex.Maybe
    /* renamed from: d */
    protected void mo3211d(MaybeObserver<? super T> maybeObserver) {
        Disposable b = Disposables.m4440b();
        maybeObserver.onSubscribe(b);
        if (!b.isDisposed()) {
            try {
                this.f17131f.run();
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

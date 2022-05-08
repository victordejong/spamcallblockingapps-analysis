package io.reactivex.internal.operators.completable;

import io.reactivex.Completable;
import io.reactivex.CompletableObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.disposables.Disposables;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Action;
import io.reactivex.plugins.RxJavaPlugins;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableFromAction.class */
public final class CompletableFromAction extends Completable {

    /* renamed from: f */
    final Action f15301f;

    @Override // io.reactivex.Completable
    /* renamed from: d */
    protected void mo3214d(CompletableObserver completableObserver) {
        Disposable b = Disposables.m4440b();
        completableObserver.onSubscribe(b);
        try {
            this.f15301f.run();
            if (!b.isDisposed()) {
                completableObserver.onComplete();
            }
        } catch (Throwable th) {
            Exceptions.m4428b(th);
            if (!b.isDisposed()) {
                completableObserver.onError(th);
            } else {
                RxJavaPlugins.m3354t(th);
            }
        }
    }
}

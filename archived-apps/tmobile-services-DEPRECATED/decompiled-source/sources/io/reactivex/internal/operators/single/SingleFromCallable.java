package io.reactivex.internal.operators.single;

import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.disposables.Disposables;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleFromCallable.class */
public final class SingleFromCallable<T> extends Single<T> {

    /* renamed from: f */
    final Callable<? extends T> f19114f;

    public SingleFromCallable(Callable<? extends T> callable) {
        this.f19114f = callable;
    }

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super T> singleObserver) {
        Disposable b = Disposables.m4440b();
        singleObserver.onSubscribe(b);
        if (!b.isDisposed()) {
            try {
                Object obj = (Object) this.f19114f.call();
                ObjectHelper.m4363e(obj, "The callable returned a null value");
                if (!b.isDisposed()) {
                    singleObserver.onSuccess(obj);
                }
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                if (!b.isDisposed()) {
                    singleObserver.onError(th);
                } else {
                    RxJavaPlugins.m3354t(th);
                }
            }
        }
    }
}

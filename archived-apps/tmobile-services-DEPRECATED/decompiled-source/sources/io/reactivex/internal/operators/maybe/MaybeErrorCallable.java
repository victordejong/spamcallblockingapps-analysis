package io.reactivex.internal.operators.maybe;

import io.reactivex.Maybe;
import io.reactivex.MaybeObserver;
import io.reactivex.disposables.Disposables;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.internal.functions.ObjectHelper;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeErrorCallable.class */
public final class MaybeErrorCallable<T> extends Maybe<T> {

    /* renamed from: f */
    final Callable<? extends Throwable> f17067f;

    @Override // io.reactivex.Maybe
    /* renamed from: d */
    protected void mo3211d(MaybeObserver<? super T> maybeObserver) {
        Throwable th;
        maybeObserver.onSubscribe(Disposables.m4441a());
        try {
            Object call = this.f17067f.call();
            ObjectHelper.m4363e(call, "Callable returned null throwable. Null values are generally not allowed in 2.x operators and sources.");
            th = (Throwable) call;
        } catch (Throwable th2) {
            th = th2;
            Exceptions.m4428b(th);
        }
        maybeObserver.onError(th);
    }
}

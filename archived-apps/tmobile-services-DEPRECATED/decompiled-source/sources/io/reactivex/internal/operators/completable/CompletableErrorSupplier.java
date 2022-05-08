package io.reactivex.internal.operators.completable;

import io.reactivex.Completable;
import io.reactivex.CompletableObserver;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.functions.ObjectHelper;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableErrorSupplier.class */
public final class CompletableErrorSupplier extends Completable {

    /* renamed from: f */
    final Callable<? extends Throwable> f15300f;

    @Override // io.reactivex.Completable
    /* renamed from: d */
    protected void mo3214d(CompletableObserver completableObserver) {
        Throwable th;
        try {
            Object call = this.f15300f.call();
            ObjectHelper.m4363e(call, "The error returned is null");
            th = (Throwable) call;
        } catch (Throwable th2) {
            th = th2;
            Exceptions.m4428b(th);
        }
        EmptyDisposable.error(th, completableObserver);
    }
}

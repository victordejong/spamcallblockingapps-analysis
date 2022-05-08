package io.reactivex.internal.operators.completable;

import io.reactivex.Completable;
import io.reactivex.CompletableObserver;
import io.reactivex.internal.disposables.EmptyDisposable;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableNever.class */
public final class CompletableNever extends Completable {
    private CompletableNever() {
    }

    @Override // io.reactivex.Completable
    /* renamed from: d */
    protected void mo3214d(CompletableObserver completableObserver) {
        completableObserver.onSubscribe(EmptyDisposable.NEVER);
    }
}

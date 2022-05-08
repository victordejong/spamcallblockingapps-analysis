package io.reactivex.internal.operators.completable;

import io.reactivex.Completable;
import io.reactivex.Notification;
import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.annotations.Experimental;
import io.reactivex.internal.operators.mixed.MaterializeSingleObserver;
@Experimental
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableMaterialize.class */
public final class CompletableMaterialize<T> extends Single<Notification<T>> {

    /* renamed from: f */
    final Completable f15317f;

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super Notification<T>> singleObserver) {
        this.f15317f.mo4514b(new MaterializeSingleObserver(singleObserver));
    }
}

package io.reactivex.internal.operators.single;

import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleFromUnsafeSource.class */
public final class SingleFromUnsafeSource<T> extends Single<T> {

    /* renamed from: f */
    final SingleSource<T> f19121f;

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super T> singleObserver) {
        this.f19121f.mo4457b(singleObserver);
    }
}

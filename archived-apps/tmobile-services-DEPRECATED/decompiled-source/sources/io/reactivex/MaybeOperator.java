package io.reactivex;

import io.reactivex.annotations.NonNull;
/* loaded from: classes-dex2jar.jar:io/reactivex/MaybeOperator.class */
public interface MaybeOperator<Downstream, Upstream> {
    @NonNull
    /* renamed from: a */
    MaybeObserver<? super Upstream> m4486a(@NonNull MaybeObserver<? super Downstream> maybeObserver) throws Exception;
}

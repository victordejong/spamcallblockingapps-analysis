package io.reactivex;

import io.reactivex.annotations.NonNull;
/* loaded from: classes2-dex2jar.jar:io/reactivex/ObservableOperator.class */
public interface ObservableOperator<Downstream, Upstream> {
    @NonNull
    Observer<? super Upstream> apply(@NonNull Observer<? super Downstream> observer) throws Exception;
}

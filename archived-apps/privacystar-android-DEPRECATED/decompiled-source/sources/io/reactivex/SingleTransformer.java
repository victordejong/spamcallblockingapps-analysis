package io.reactivex;

import io.reactivex.annotations.NonNull;
/* loaded from: classes2-dex2jar.jar:io/reactivex/SingleTransformer.class */
public interface SingleTransformer<Upstream, Downstream> {
    @NonNull
    SingleSource<Downstream> apply(@NonNull Single<Upstream> single);
}

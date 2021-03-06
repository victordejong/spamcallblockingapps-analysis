package io.reactivex.parallel;

import io.reactivex.annotations.Experimental;
import io.reactivex.annotations.NonNull;
@Experimental
/* loaded from: classes2-dex2jar.jar:io/reactivex/parallel/ParallelTransformer.class */
public interface ParallelTransformer<Upstream, Downstream> {
    @NonNull
    ParallelFlowable<Downstream> apply(@NonNull ParallelFlowable<Upstream> parallelFlowable);
}

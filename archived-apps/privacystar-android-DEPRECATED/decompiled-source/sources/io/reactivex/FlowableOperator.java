package io.reactivex;

import io.reactivex.annotations.NonNull;
import org.reactivestreams.Subscriber;
/* loaded from: classes2-dex2jar.jar:io/reactivex/FlowableOperator.class */
public interface FlowableOperator<Downstream, Upstream> {
    @NonNull
    Subscriber<? super Upstream> apply(@NonNull Subscriber<? super Downstream> subscriber) throws Exception;
}

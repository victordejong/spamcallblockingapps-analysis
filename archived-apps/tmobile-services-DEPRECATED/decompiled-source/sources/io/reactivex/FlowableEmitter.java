package io.reactivex;

import io.reactivex.annotations.Nullable;
import io.reactivex.disposables.Disposable;
/* loaded from: classes-dex2jar.jar:io/reactivex/FlowableEmitter.class */
public interface FlowableEmitter<T> extends Emitter<T> {
    /* renamed from: a */
    void mo4263a(@Nullable Disposable disposable);

    boolean isCancelled();
}

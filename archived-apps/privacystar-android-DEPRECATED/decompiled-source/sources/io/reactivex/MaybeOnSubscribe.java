package io.reactivex;

import io.reactivex.annotations.NonNull;
/* loaded from: classes2-dex2jar.jar:io/reactivex/MaybeOnSubscribe.class */
public interface MaybeOnSubscribe<T> {
    void subscribe(@NonNull MaybeEmitter<T> maybeEmitter) throws Exception;
}

package io.reactivex;

import io.reactivex.annotations.NonNull;
/* loaded from: classes2-dex2jar.jar:io/reactivex/SingleOnSubscribe.class */
public interface SingleOnSubscribe<T> {
    void subscribe(@NonNull SingleEmitter<T> singleEmitter) throws Exception;
}

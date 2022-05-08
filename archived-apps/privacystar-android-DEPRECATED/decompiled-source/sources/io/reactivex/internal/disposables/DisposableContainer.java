package io.reactivex.internal.disposables;

import io.reactivex.disposables.Disposable;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/disposables/DisposableContainer.class */
public interface DisposableContainer {
    boolean add(Disposable disposable);

    boolean delete(Disposable disposable);

    boolean remove(Disposable disposable);
}

package io.reactivex.internal.disposables;

import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/disposables/SequentialDisposable.class */
public final class SequentialDisposable extends AtomicReference<AbstractC9861b> implements AbstractC9861b {
    public static final long serialVersionUID = -754898800686245608L;

    public SequentialDisposable() {
    }

    public SequentialDisposable(AbstractC9861b bVar) {
        lazySet(bVar);
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(get());
    }

    public boolean replace(AbstractC9861b bVar) {
        return DisposableHelper.replace(this, bVar);
    }

    public boolean update(AbstractC9861b bVar) {
        return DisposableHelper.set(this, bVar);
    }
}

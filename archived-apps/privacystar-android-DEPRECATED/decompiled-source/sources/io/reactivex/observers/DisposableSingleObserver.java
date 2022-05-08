package io.reactivex.observers;

import io.reactivex.SingleObserver;
import io.reactivex.annotations.NonNull;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.EndConsumerHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/observers/DisposableSingleObserver.class */
public abstract class DisposableSingleObserver<T> implements SingleObserver<T>, Disposable {

    /* renamed from: s */
    final AtomicReference<Disposable> f734s = new AtomicReference<>();

    @Override // io.reactivex.disposables.Disposable
    public final void dispose() {
        DisposableHelper.dispose(this.f734s);
    }

    @Override // io.reactivex.disposables.Disposable
    public final boolean isDisposed() {
        return this.f734s.get() == DisposableHelper.DISPOSED;
    }

    protected void onStart() {
    }

    @Override // io.reactivex.SingleObserver
    public final void onSubscribe(@NonNull Disposable disposable) {
        if (EndConsumerHelper.setOnce(this.f734s, disposable, getClass())) {
            onStart();
        }
    }
}

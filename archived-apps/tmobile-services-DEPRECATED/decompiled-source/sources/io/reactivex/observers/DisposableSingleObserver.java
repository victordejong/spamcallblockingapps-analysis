package io.reactivex.observers;

import io.reactivex.SingleObserver;
import io.reactivex.annotations.NonNull;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.EndConsumerHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/observers/DisposableSingleObserver.class */
public abstract class DisposableSingleObserver<T> implements SingleObserver<T>, Disposable {

    /* renamed from: f */
    final AtomicReference<Disposable> f19449f = new AtomicReference<>();

    /* renamed from: a */
    protected void m3387a() {
    }

    @Override // io.reactivex.disposables.Disposable
    public final void dispose() {
        DisposableHelper.dispose(this.f19449f);
    }

    @Override // io.reactivex.disposables.Disposable
    public final boolean isDisposed() {
        return this.f19449f.get() == DisposableHelper.DISPOSED;
    }

    @Override // io.reactivex.SingleObserver
    public final void onSubscribe(@NonNull Disposable disposable) {
        if (EndConsumerHelper.m3442c(this.f19449f, disposable, DisposableSingleObserver.class)) {
            m3387a();
        }
    }
}

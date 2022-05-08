package io.reactivex.observers;

import io.reactivex.Observer;
import io.reactivex.annotations.NonNull;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.EndConsumerHelper;
/* loaded from: classes2-dex2jar.jar:io/reactivex/observers/DefaultObserver.class */
public abstract class DefaultObserver<T> implements Observer<T> {

    /* renamed from: s */
    private Disposable f730s;

    protected final void cancel() {
        Disposable disposable = this.f730s;
        this.f730s = DisposableHelper.DISPOSED;
        disposable.dispose();
    }

    protected void onStart() {
    }

    @Override // io.reactivex.Observer
    public final void onSubscribe(@NonNull Disposable disposable) {
        if (EndConsumerHelper.validate(this.f730s, disposable, getClass())) {
            this.f730s = disposable;
            onStart();
        }
    }
}

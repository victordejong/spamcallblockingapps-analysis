package io.reactivex.internal.operators.maybe;

import io.reactivex.MaybeObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.observers.LambdaConsumerIntrospection;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeCallbackObserver.class */
public final class MaybeCallbackObserver<T> extends AtomicReference<Disposable> implements MaybeObserver<T>, Disposable, LambdaConsumerIntrospection {
    private static final long serialVersionUID = -6076952298809384986L;

    /* renamed from: f */
    final Consumer<? super T> f16974f;

    /* renamed from: g */
    final Consumer<? super Throwable> f16975g;

    /* renamed from: h */
    final Action f16976h;

    @Override // io.reactivex.disposables.Disposable
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override // io.reactivex.disposables.Disposable
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(get());
    }

    @Override // io.reactivex.MaybeObserver
    public void onComplete() {
        lazySet(DisposableHelper.DISPOSED);
        try {
            this.f16976h.run();
        } catch (Throwable th) {
            Exceptions.m4428b(th);
            RxJavaPlugins.m3354t(th);
        }
    }

    @Override // io.reactivex.MaybeObserver
    public void onError(Throwable th) {
        lazySet(DisposableHelper.DISPOSED);
        try {
            this.f16975g.accept(th);
        } catch (Throwable th2) {
            Exceptions.m4428b(th2);
            RxJavaPlugins.m3354t(new CompositeException(th, th2));
        }
    }

    @Override // io.reactivex.MaybeObserver
    public void onSubscribe(Disposable disposable) {
        DisposableHelper.setOnce(this, disposable);
    }

    @Override // io.reactivex.MaybeObserver
    public void onSuccess(T t) {
        lazySet(DisposableHelper.DISPOSED);
        try {
            this.f16974f.accept(t);
        } catch (Throwable th) {
            Exceptions.m4428b(th);
            RxJavaPlugins.m3354t(th);
        }
    }
}

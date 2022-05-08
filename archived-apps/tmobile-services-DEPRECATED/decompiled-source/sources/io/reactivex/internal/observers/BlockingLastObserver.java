package io.reactivex.internal.observers;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/observers/BlockingLastObserver.class */
public final class BlockingLastObserver<T> extends BlockingBaseObserver<T> {
    @Override // io.reactivex.Observer
    public void onError(Throwable th) {
        this.f15174f = null;
        this.f15175g = th;
        countDown();
    }

    @Override // io.reactivex.Observer
    public void onNext(T t) {
        this.f15174f = t;
    }
}

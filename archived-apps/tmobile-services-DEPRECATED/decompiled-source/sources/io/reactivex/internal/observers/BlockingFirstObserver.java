package io.reactivex.internal.observers;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/observers/BlockingFirstObserver.class */
public final class BlockingFirstObserver<T> extends BlockingBaseObserver<T> {
    @Override // io.reactivex.Observer
    public void onError(Throwable th) {
        if (this.f15174f == null) {
            this.f15175g = th;
        }
        countDown();
    }

    @Override // io.reactivex.Observer
    public void onNext(T t) {
        if (this.f15174f == null) {
            this.f15174f = t;
            this.f15176h.dispose();
            countDown();
        }
    }
}

package io.reactivex.internal.observers;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/observers/BlockingFirstObserver.class */
public final class BlockingFirstObserver<T> extends BlockingBaseObserver<T> {
    @Override // io.reactivex.Observer
    public void onError(Throwable th) {
        if (this.value == null) {
            this.error = th;
        }
        countDown();
    }

    @Override // io.reactivex.Observer
    public void onNext(T t) {
        if (this.value == null) {
            this.value = t;
            this.f340d.dispose();
            countDown();
        }
    }
}

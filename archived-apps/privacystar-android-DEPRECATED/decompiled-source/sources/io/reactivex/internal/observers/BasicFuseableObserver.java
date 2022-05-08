package io.reactivex.internal.observers;

import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.fuseable.QueueDisposable;
import io.reactivex.plugins.RxJavaPlugins;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/observers/BasicFuseableObserver.class */
public abstract class BasicFuseableObserver<T, R> implements Observer<T>, QueueDisposable<R> {
    protected final Observer<? super R> actual;
    protected boolean done;

    /* renamed from: qs */
    protected QueueDisposable<T> f338qs;

    /* renamed from: s */
    protected Disposable f339s;
    protected int sourceMode;

    public BasicFuseableObserver(Observer<? super R> observer) {
        this.actual = observer;
    }

    protected void afterDownstream() {
    }

    protected boolean beforeDownstream() {
        return true;
    }

    @Override // io.reactivex.internal.fuseable.SimpleQueue
    public void clear() {
        this.f338qs.clear();
    }

    @Override // io.reactivex.disposables.Disposable
    public void dispose() {
        this.f339s.dispose();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void fail(Throwable th) {
        Exceptions.throwIfFatal(th);
        this.f339s.dispose();
        onError(th);
    }

    @Override // io.reactivex.disposables.Disposable
    public boolean isDisposed() {
        return this.f339s.isDisposed();
    }

    @Override // io.reactivex.internal.fuseable.SimpleQueue
    public boolean isEmpty() {
        return this.f338qs.isEmpty();
    }

    @Override // io.reactivex.internal.fuseable.SimpleQueue
    public final boolean offer(R r) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // io.reactivex.internal.fuseable.SimpleQueue
    public final boolean offer(R r, R r2) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // io.reactivex.Observer
    public void onComplete() {
        if (!this.done) {
            this.done = true;
            this.actual.onComplete();
        }
    }

    @Override // io.reactivex.Observer
    public void onError(Throwable th) {
        if (this.done) {
            RxJavaPlugins.onError(th);
            return;
        }
        this.done = true;
        this.actual.onError(th);
    }

    @Override // io.reactivex.Observer
    public final void onSubscribe(Disposable disposable) {
        if (DisposableHelper.validate(this.f339s, disposable)) {
            this.f339s = disposable;
            if (disposable instanceof QueueDisposable) {
                this.f338qs = (QueueDisposable) disposable;
            }
            if (beforeDownstream()) {
                this.actual.onSubscribe(this);
                afterDownstream();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int transitiveBoundaryFusion(int i) {
        QueueDisposable<T> queueDisposable = this.f338qs;
        if (queueDisposable == null || (i & 4) != 0) {
            return 0;
        }
        int requestFusion = queueDisposable.requestFusion(i);
        if (requestFusion != 0) {
            this.sourceMode = requestFusion;
        }
        return requestFusion;
    }
}

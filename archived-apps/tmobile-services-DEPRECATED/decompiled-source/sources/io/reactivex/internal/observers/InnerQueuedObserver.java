package io.reactivex.internal.observers;

import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.fuseable.QueueDisposable;
import io.reactivex.internal.fuseable.SimpleQueue;
import io.reactivex.internal.util.QueueDrainHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/observers/InnerQueuedObserver.class */
public final class InnerQueuedObserver<T> extends AtomicReference<Disposable> implements Observer<T>, Disposable {
    private static final long serialVersionUID = -5417183359794346637L;

    /* renamed from: f */
    final InnerQueuedObserverSupport<T> f15205f;

    /* renamed from: g */
    final int f15206g;

    /* renamed from: h */
    SimpleQueue<T> f15207h;

    /* renamed from: i */
    volatile boolean f15208i;

    /* renamed from: j */
    int f15209j;

    public InnerQueuedObserver(InnerQueuedObserverSupport<T> innerQueuedObserverSupport, int i) {
        this.f15205f = innerQueuedObserverSupport;
        this.f15206g = i;
    }

    /* renamed from: a */
    public boolean m4347a() {
        return this.f15208i;
    }

    /* renamed from: b */
    public SimpleQueue<T> m4346b() {
        return this.f15207h;
    }

    /* renamed from: c */
    public void m4345c() {
        this.f15208i = true;
    }

    @Override // io.reactivex.disposables.Disposable
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override // io.reactivex.disposables.Disposable
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(get());
    }

    @Override // io.reactivex.Observer
    public void onComplete() {
        this.f15205f.mo3864d(this);
    }

    @Override // io.reactivex.Observer
    public void onError(Throwable th) {
        this.f15205f.mo3865c(this, th);
    }

    @Override // io.reactivex.Observer
    public void onNext(T t) {
        if (this.f15209j == 0) {
            this.f15205f.mo3863e(this, t);
        } else {
            this.f15205f.mo3866b();
        }
    }

    @Override // io.reactivex.Observer
    public void onSubscribe(Disposable disposable) {
        if (DisposableHelper.setOnce(this, disposable)) {
            if (disposable instanceof QueueDisposable) {
                QueueDisposable queueDisposable = (QueueDisposable) disposable;
                int requestFusion = queueDisposable.requestFusion(3);
                if (requestFusion == 1) {
                    this.f15209j = requestFusion;
                    this.f15207h = queueDisposable;
                    this.f15208i = true;
                    this.f15205f.mo3864d(this);
                    return;
                } else if (requestFusion == 2) {
                    this.f15209j = requestFusion;
                    this.f15207h = queueDisposable;
                    return;
                }
            }
            this.f15207h = QueueDrainHelper.m3403c(-this.f15206g);
        }
    }
}

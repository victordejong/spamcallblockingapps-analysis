package io.reactivex.internal.operators.single;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9851u;
import p530d.p541c.AbstractC9852v;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleTimeout$TimeoutMainObserver.class */
public final class SingleTimeout$TimeoutMainObserver<T> extends AtomicReference<AbstractC9861b> implements AbstractC9851u<T>, Runnable, AbstractC9861b {
    public static final long serialVersionUID = 37497744973048446L;
    public final AbstractC9851u<? super T> actual;
    public final TimeoutFallbackObserver<T> fallback;
    public AbstractC9852v<? extends T> other;
    public final AtomicReference<AbstractC9861b> task = new AtomicReference<>();

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleTimeout$TimeoutMainObserver$TimeoutFallbackObserver.class */
    public static final class TimeoutFallbackObserver<T> extends AtomicReference<AbstractC9861b> implements AbstractC9851u<T> {
        public static final long serialVersionUID = 2071387740092105509L;
        public final AbstractC9851u<? super T> actual;

        public TimeoutFallbackObserver(AbstractC9851u<? super T> uVar) {
            this.actual = uVar;
        }

        @Override // p530d.p541c.AbstractC9851u
        public void onError(Throwable th) {
            this.actual.onError(th);
        }

        @Override // p530d.p541c.AbstractC9851u
        public void onSubscribe(AbstractC9861b bVar) {
            DisposableHelper.setOnce(this, bVar);
        }

        @Override // p530d.p541c.AbstractC9851u
        public void onSuccess(T t) {
            this.actual.onSuccess(t);
        }
    }

    public SingleTimeout$TimeoutMainObserver(AbstractC9851u<? super T> uVar, AbstractC9852v<? extends T> vVar) {
        this.actual = uVar;
        this.other = vVar;
        if (vVar != null) {
            this.fallback = new TimeoutFallbackObserver<>(uVar);
        } else {
            this.fallback = null;
        }
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        DisposableHelper.dispose(this);
        DisposableHelper.dispose(this.task);
        TimeoutFallbackObserver<T> timeoutFallbackObserver = this.fallback;
        if (timeoutFallbackObserver != null) {
            DisposableHelper.dispose(timeoutFallbackObserver);
        }
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(get());
    }

    @Override // p530d.p541c.AbstractC9851u
    public void onError(Throwable th) {
        AbstractC9861b bVar = get();
        DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
        if (bVar == disposableHelper || !compareAndSet(bVar, disposableHelper)) {
            C9815a.m1923b(th);
            return;
        }
        DisposableHelper.dispose(this.task);
        this.actual.onError(th);
    }

    @Override // p530d.p541c.AbstractC9851u
    public void onSubscribe(AbstractC9861b bVar) {
        DisposableHelper.setOnce(this, bVar);
    }

    @Override // p530d.p541c.AbstractC9851u
    public void onSuccess(T t) {
        AbstractC9861b bVar = get();
        DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
        if (bVar != disposableHelper && compareAndSet(bVar, disposableHelper)) {
            DisposableHelper.dispose(this.task);
            this.actual.onSuccess(t);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        AbstractC9861b bVar = get();
        DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
        if (bVar != disposableHelper && compareAndSet(bVar, disposableHelper)) {
            if (bVar != null) {
                bVar.dispose();
            }
            AbstractC9852v<? extends T> vVar = this.other;
            if (vVar == null) {
                this.actual.onError(new TimeoutException());
                return;
            }
            this.other = null;
            vVar.mo1841a(this.fallback);
        }
    }
}

package io.reactivex.internal.operators.mixed;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9836k;
import p530d.p541c.AbstractC9838m;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p542a0.AbstractC9645h;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver.class */
public final class ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver<T, R> extends AtomicInteger implements AbstractC9844r<T>, AbstractC9861b {
    public static final SwitchMapMaybeObserver<Object> INNER_DISPOSED = new SwitchMapMaybeObserver<>(null);
    public static final long serialVersionUID = -5402190102429853762L;
    public volatile boolean cancelled;
    public final boolean delayErrors;
    public volatile boolean done;
    public final AbstractC9844r<? super R> downstream;
    public final AtomicThrowable errors = new AtomicThrowable();
    public final AtomicReference<SwitchMapMaybeObserver<R>> inner = new AtomicReference<>();
    public final AbstractC9645h<? super T, ? extends AbstractC9838m<? extends R>> mapper;
    public AbstractC9861b upstream;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver.class */
    public static final class SwitchMapMaybeObserver<R> extends AtomicReference<AbstractC9861b> implements AbstractC9836k<R> {
        public static final long serialVersionUID = 8042919737683345351L;
        public volatile R item;
        public final ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver<?, R> parent;

        public SwitchMapMaybeObserver(ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver<?, R> observableSwitchMapMaybe$SwitchMapMaybeMainObserver) {
            this.parent = observableSwitchMapMaybe$SwitchMapMaybeMainObserver;
        }

        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onComplete() {
            this.parent.innerComplete(this);
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onError(Throwable th) {
            this.parent.innerError(this, th);
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onSubscribe(AbstractC9861b bVar) {
            DisposableHelper.setOnce(this, bVar);
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onSuccess(R r) {
            this.item = r;
            this.parent.drain();
        }
    }

    public ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver(AbstractC9844r<? super R> rVar, AbstractC9645h<? super T, ? extends AbstractC9838m<? extends R>> hVar, boolean z) {
        this.downstream = rVar;
        this.mapper = hVar;
        this.delayErrors = z;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        this.cancelled = true;
        this.upstream.dispose();
        disposeInner();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void disposeInner() {
        SwitchMapMaybeObserver<Object> switchMapMaybeObserver = (SwitchMapMaybeObserver) this.inner.getAndSet(INNER_DISPOSED);
        if (switchMapMaybeObserver != null && switchMapMaybeObserver != INNER_DISPOSED) {
            switchMapMaybeObserver.dispose();
        }
    }

    public void drain() {
        if (getAndIncrement() == 0) {
            AbstractC9844r<? super R> rVar = this.downstream;
            AtomicThrowable atomicThrowable = this.errors;
            AtomicReference<SwitchMapMaybeObserver<R>> atomicReference = this.inner;
            int i = 1;
            while (!this.cancelled) {
                if (atomicThrowable.get() == null || this.delayErrors) {
                    boolean z = this.done;
                    SwitchMapMaybeObserver<R> switchMapMaybeObserver = atomicReference.get();
                    boolean z2 = switchMapMaybeObserver == null;
                    if (z && z2) {
                        Throwable terminate = atomicThrowable.terminate();
                        if (terminate != null) {
                            rVar.onError(terminate);
                            return;
                        } else {
                            rVar.onComplete();
                            return;
                        }
                    } else if (z2 || switchMapMaybeObserver.item == null) {
                        int addAndGet = addAndGet(-i);
                        i = addAndGet;
                        if (addAndGet == 0) {
                            return;
                        }
                    } else {
                        atomicReference.compareAndSet(switchMapMaybeObserver, null);
                        rVar.onNext((R) switchMapMaybeObserver.item);
                    }
                } else {
                    rVar.onError(atomicThrowable.terminate());
                    return;
                }
            }
        }
    }

    public void innerComplete(SwitchMapMaybeObserver<R> switchMapMaybeObserver) {
        if (this.inner.compareAndSet(switchMapMaybeObserver, null)) {
            drain();
        }
    }

    public void innerError(SwitchMapMaybeObserver<R> switchMapMaybeObserver, Throwable th) {
        if (!this.inner.compareAndSet(switchMapMaybeObserver, null) || !this.errors.addThrowable(th)) {
            C9815a.m1923b(th);
            return;
        }
        if (!this.delayErrors) {
            this.upstream.dispose();
            disposeInner();
        }
        drain();
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return this.cancelled;
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onComplete() {
        this.done = true;
        drain();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onError(Throwable th) {
        if (this.errors.addThrowable(th)) {
            if (!this.delayErrors) {
                disposeInner();
            }
            this.done = true;
            drain();
            return;
        }
        C9815a.m1923b(th);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p530d.p541c.AbstractC9844r
    public void onNext(T t) {
        SwitchMapMaybeObserver<R> switchMapMaybeObserver;
        SwitchMapMaybeObserver<R> switchMapMaybeObserver2 = this.inner.get();
        if (switchMapMaybeObserver2 != null) {
            switchMapMaybeObserver2.dispose();
        }
        try {
            Object apply = this.mapper.apply(t);
            C9650a.m2095a(apply, "The mapper returned a null MaybeSource");
            AbstractC9838m mVar = (AbstractC9838m) apply;
            SwitchMapMaybeObserver<R> switchMapMaybeObserver3 = new SwitchMapMaybeObserver<>(this);
            do {
                switchMapMaybeObserver = this.inner.get();
                if (switchMapMaybeObserver == INNER_DISPOSED) {
                    return;
                }
            } while (!this.inner.compareAndSet(switchMapMaybeObserver, switchMapMaybeObserver3));
            mVar.mo1876a(switchMapMaybeObserver3);
        } catch (Throwable th) {
            C9863a.m1822b(th);
            this.upstream.dispose();
            this.inner.getAndSet(INNER_DISPOSED);
            onError(th);
        }
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onSubscribe(AbstractC9861b bVar) {
        if (DisposableHelper.validate(this.upstream, bVar)) {
            this.upstream = bVar;
            this.downstream.onSubscribe(this);
        }
    }
}

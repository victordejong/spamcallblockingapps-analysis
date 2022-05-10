package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9836k;
import p530d.p541c.AbstractC9838m;
import p530d.p541c.AbstractC9840o;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p542a0.AbstractC9645h;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p543b0.p554f.C9772a;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p568x.C9860a;
import p530d.p541c.p569y.C9863a;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableFlatMapMaybe$FlatMapMaybeObserver.class */
public final class ObservableFlatMapMaybe$FlatMapMaybeObserver<T, R> extends AtomicInteger implements AbstractC9844r<T>, AbstractC9861b {
    public static final long serialVersionUID = 8600231336733376951L;
    public final AbstractC9844r<? super R> actual;
    public volatile boolean cancelled;

    /* renamed from: d */
    public AbstractC9861b f38504d;
    public final boolean delayErrors;
    public final AbstractC9645h<? super T, ? extends AbstractC9838m<? extends R>> mapper;
    public final C9860a set = new C9860a();
    public final AtomicThrowable errors = new AtomicThrowable();
    public final AtomicInteger active = new AtomicInteger(1);
    public final AtomicReference<C9772a<R>> queue = new AtomicReference<>();

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableFlatMapMaybe$FlatMapMaybeObserver$InnerObserver.class */
    public final class InnerObserver extends AtomicReference<AbstractC9861b> implements AbstractC9836k<R>, AbstractC9861b {
        public static final long serialVersionUID = -502562646270949838L;

        public InnerObserver() {
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onComplete() {
            ObservableFlatMapMaybe$FlatMapMaybeObserver.this.innerComplete(this);
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onError(Throwable th) {
            ObservableFlatMapMaybe$FlatMapMaybeObserver.this.innerError(this, th);
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onSubscribe(AbstractC9861b bVar) {
            DisposableHelper.setOnce(this, bVar);
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onSuccess(R r) {
            ObservableFlatMapMaybe$FlatMapMaybeObserver.this.innerSuccess(this, r);
        }
    }

    public ObservableFlatMapMaybe$FlatMapMaybeObserver(AbstractC9844r<? super R> rVar, AbstractC9645h<? super T, ? extends AbstractC9838m<? extends R>> hVar, boolean z) {
        this.actual = rVar;
        this.mapper = hVar;
        this.delayErrors = z;
    }

    public void clear() {
        C9772a<R> aVar = this.queue.get();
        if (aVar != null) {
            aVar.clear();
        }
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        this.cancelled = true;
        this.f38504d.dispose();
        this.set.dispose();
    }

    public void drain() {
        if (getAndIncrement() == 0) {
            drainLoop();
        }
    }

    public void drainLoop() {
        AbstractC9844r<? super R> rVar = this.actual;
        AtomicInteger atomicInteger = this.active;
        AtomicReference<C9772a<R>> atomicReference = this.queue;
        int i = 1;
        while (!this.cancelled) {
            if (this.delayErrors || this.errors.get() == null) {
                boolean z = false;
                boolean z2 = atomicInteger.get() == 0;
                C9772a<R> aVar = atomicReference.get();
                R poll = aVar != null ? aVar.poll() : (Object) null;
                if (poll == null) {
                    z = true;
                }
                if (z2 && z) {
                    Throwable terminate = this.errors.terminate();
                    if (terminate != null) {
                        rVar.onError(terminate);
                        return;
                    } else {
                        rVar.onComplete();
                        return;
                    }
                } else if (z) {
                    int addAndGet = addAndGet(-i);
                    i = addAndGet;
                    if (addAndGet == 0) {
                        return;
                    }
                } else {
                    rVar.onNext(poll);
                }
            } else {
                Throwable terminate2 = this.errors.terminate();
                clear();
                rVar.onError(terminate2);
                return;
            }
        }
        clear();
    }

    public C9772a<R> getOrCreateQueue() {
        C9772a<R> aVar;
        do {
            C9772a<R> aVar2 = this.queue.get();
            if (aVar2 != null) {
                return aVar2;
            }
            aVar = new C9772a<>(AbstractC9840o.m1870a());
        } while (!this.queue.compareAndSet(null, aVar));
        return aVar;
    }

    public void innerComplete(ObservableFlatMapMaybe$FlatMapMaybeObserver<T, R>.InnerObserver innerObserver) {
        this.set.mo1827c(innerObserver);
        if (get() == 0) {
            boolean z = true;
            if (compareAndSet(0, 1)) {
                if (this.active.decrementAndGet() != 0) {
                    z = false;
                }
                C9772a<R> aVar = this.queue.get();
                if (z && (aVar == null || aVar.isEmpty())) {
                    Throwable terminate = this.errors.terminate();
                    if (terminate != null) {
                        this.actual.onError(terminate);
                        return;
                    } else {
                        this.actual.onComplete();
                        return;
                    }
                } else if (decrementAndGet() != 0) {
                    drainLoop();
                    return;
                } else {
                    return;
                }
            }
        }
        this.active.decrementAndGet();
        drain();
    }

    public void innerError(ObservableFlatMapMaybe$FlatMapMaybeObserver<T, R>.InnerObserver innerObserver, Throwable th) {
        this.set.mo1827c(innerObserver);
        if (this.errors.addThrowable(th)) {
            if (!this.delayErrors) {
                this.f38504d.dispose();
                this.set.dispose();
            }
            this.active.decrementAndGet();
            drain();
            return;
        }
        C9815a.m1923b(th);
    }

    public void innerSuccess(ObservableFlatMapMaybe$FlatMapMaybeObserver<T, R>.InnerObserver innerObserver, R r) {
        this.set.mo1827c(innerObserver);
        if (get() == 0) {
            boolean z = true;
            if (compareAndSet(0, 1)) {
                this.actual.onNext(r);
                if (this.active.decrementAndGet() != 0) {
                    z = false;
                }
                C9772a<R> aVar = this.queue.get();
                if (!z || (aVar != null && !aVar.isEmpty())) {
                    if (decrementAndGet() == 0) {
                        return;
                    }
                    drainLoop();
                }
                Throwable terminate = this.errors.terminate();
                if (terminate != null) {
                    this.actual.onError(terminate);
                    return;
                } else {
                    this.actual.onComplete();
                    return;
                }
            }
        }
        C9772a<R> orCreateQueue = getOrCreateQueue();
        synchronized (orCreateQueue) {
            orCreateQueue.offer(r);
        }
        this.active.decrementAndGet();
        if (getAndIncrement() != 0) {
            return;
        }
        drainLoop();
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return this.cancelled;
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onComplete() {
        this.active.decrementAndGet();
        drain();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onError(Throwable th) {
        this.active.decrementAndGet();
        if (this.errors.addThrowable(th)) {
            if (!this.delayErrors) {
                this.set.dispose();
            }
            drain();
            return;
        }
        C9815a.m1923b(th);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onNext(T t) {
        try {
            Object apply = this.mapper.apply(t);
            C9650a.m2095a(apply, "The mapper returned a null MaybeSource");
            AbstractC9838m mVar = (AbstractC9838m) apply;
            this.active.getAndIncrement();
            InnerObserver innerObserver = new InnerObserver();
            if (!this.cancelled && this.set.mo1828b(innerObserver)) {
                mVar.mo1876a(innerObserver);
            }
        } catch (Throwable th) {
            C9863a.m1822b(th);
            this.f38504d.dispose();
            onError(th);
        }
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onSubscribe(AbstractC9861b bVar) {
        if (DisposableHelper.validate(this.f38504d, bVar)) {
            this.f38504d = bVar;
            this.actual.onSubscribe(this);
        }
    }
}

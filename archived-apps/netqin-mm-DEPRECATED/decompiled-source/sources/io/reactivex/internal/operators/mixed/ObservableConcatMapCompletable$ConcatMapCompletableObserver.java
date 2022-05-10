package io.reactivex.internal.operators.mixed;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.ErrorMode;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9647b;
import p530d.p541c.AbstractC9809c;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p542a0.AbstractC9645h;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p543b0.p546c.AbstractC9656e;
import p530d.p541c.p543b0.p546c.AbstractC9661j;
import p530d.p541c.p543b0.p554f.C9772a;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver.class */
public final class ObservableConcatMapCompletable$ConcatMapCompletableObserver<T> extends AtomicInteger implements AbstractC9844r<T>, AbstractC9861b {
    public static final long serialVersionUID = 3610901111000061034L;
    public volatile boolean active;
    public volatile boolean disposed;
    public volatile boolean done;
    public final AbstractC9647b downstream;
    public final ErrorMode errorMode;
    public final AtomicThrowable errors = new AtomicThrowable();
    public final ConcatMapInnerObserver inner = new ConcatMapInnerObserver(this);
    public final AbstractC9645h<? super T, ? extends AbstractC9809c> mapper;
    public final int prefetch;
    public AbstractC9661j<T> queue;
    public AbstractC9861b upstream;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver$ConcatMapInnerObserver.class */
    public static final class ConcatMapInnerObserver extends AtomicReference<AbstractC9861b> implements AbstractC9647b {
        public static final long serialVersionUID = 5638352172918776687L;
        public final ObservableConcatMapCompletable$ConcatMapCompletableObserver<?> parent;

        public ConcatMapInnerObserver(ObservableConcatMapCompletable$ConcatMapCompletableObserver<?> observableConcatMapCompletable$ConcatMapCompletableObserver) {
            this.parent = observableConcatMapCompletable$ConcatMapCompletableObserver;
        }

        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // p530d.p541c.AbstractC9647b
        public void onComplete() {
            this.parent.innerComplete();
        }

        @Override // p530d.p541c.AbstractC9647b
        public void onError(Throwable th) {
            this.parent.innerError(th);
        }

        @Override // p530d.p541c.AbstractC9647b
        public void onSubscribe(AbstractC9861b bVar) {
            DisposableHelper.replace(this, bVar);
        }
    }

    public ObservableConcatMapCompletable$ConcatMapCompletableObserver(AbstractC9647b bVar, AbstractC9645h<? super T, ? extends AbstractC9809c> hVar, ErrorMode errorMode, int i) {
        this.downstream = bVar;
        this.mapper = hVar;
        this.errorMode = errorMode;
        this.prefetch = i;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        this.disposed = true;
        this.upstream.dispose();
        this.inner.dispose();
        if (getAndIncrement() == 0) {
            this.queue.clear();
        }
    }

    public void drain() {
        boolean z;
        if (getAndIncrement() == 0) {
            AtomicThrowable atomicThrowable = this.errors;
            ErrorMode errorMode = this.errorMode;
            while (!this.disposed) {
                if (!this.active) {
                    if (errorMode != ErrorMode.BOUNDARY || atomicThrowable.get() == null) {
                        boolean z2 = this.done;
                        AbstractC9809c cVar = null;
                        try {
                            T poll = this.queue.poll();
                            if (poll != null) {
                                Object apply = this.mapper.apply(poll);
                                C9650a.m2095a(apply, "The mapper returned a null CompletableSource");
                                cVar = (AbstractC9809c) apply;
                                z = false;
                            } else {
                                z = true;
                            }
                            if (z2 && z) {
                                this.disposed = true;
                                Throwable terminate = atomicThrowable.terminate();
                                if (terminate != null) {
                                    this.downstream.onError(terminate);
                                    return;
                                } else {
                                    this.downstream.onComplete();
                                    return;
                                }
                            } else if (!z) {
                                this.active = true;
                                cVar.mo1980a(this.inner);
                            }
                        } catch (Throwable th) {
                            C9863a.m1822b(th);
                            this.disposed = true;
                            this.queue.clear();
                            this.upstream.dispose();
                            atomicThrowable.addThrowable(th);
                            this.downstream.onError(atomicThrowable.terminate());
                            return;
                        }
                    } else {
                        this.disposed = true;
                        this.queue.clear();
                        this.downstream.onError(atomicThrowable.terminate());
                        return;
                    }
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            }
            this.queue.clear();
        }
    }

    public void innerComplete() {
        this.active = false;
        drain();
    }

    public void innerError(Throwable th) {
        if (!this.errors.addThrowable(th)) {
            C9815a.m1923b(th);
        } else if (this.errorMode == ErrorMode.IMMEDIATE) {
            this.disposed = true;
            this.upstream.dispose();
            Throwable terminate = this.errors.terminate();
            if (terminate != ExceptionHelper.f38570a) {
                this.downstream.onError(terminate);
            }
            if (getAndIncrement() == 0) {
                this.queue.clear();
            }
        } else {
            this.active = false;
            drain();
        }
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return this.disposed;
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onComplete() {
        this.done = true;
        drain();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onError(Throwable th) {
        if (!this.errors.addThrowable(th)) {
            C9815a.m1923b(th);
        } else if (this.errorMode == ErrorMode.IMMEDIATE) {
            this.disposed = true;
            this.inner.dispose();
            Throwable terminate = this.errors.terminate();
            if (terminate != ExceptionHelper.f38570a) {
                this.downstream.onError(terminate);
            }
            if (getAndIncrement() == 0) {
                this.queue.clear();
            }
        } else {
            this.done = true;
            drain();
        }
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onNext(T t) {
        if (t != null) {
            this.queue.offer(t);
        }
        drain();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onSubscribe(AbstractC9861b bVar) {
        if (DisposableHelper.validate(this.upstream, bVar)) {
            this.upstream = bVar;
            if (bVar instanceof AbstractC9656e) {
                AbstractC9656e eVar = (AbstractC9656e) bVar;
                int requestFusion = eVar.requestFusion(3);
                if (requestFusion == 1) {
                    this.queue = eVar;
                    this.done = true;
                    this.downstream.onSubscribe(this);
                    drain();
                    return;
                } else if (requestFusion == 2) {
                    this.queue = eVar;
                    this.downstream.onSubscribe(this);
                    return;
                }
            }
            this.queue = new C9772a(this.prefetch);
            this.downstream.onSubscribe(this);
        }
    }
}

package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.observers.InnerQueuedObserver;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.ErrorMode;
import java.util.ArrayDeque;
import java.util.concurrent.atomic.AtomicInteger;
import p530d.p541c.AbstractC9843q;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p542a0.AbstractC9645h;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p543b0.p546c.AbstractC9656e;
import p530d.p541c.p543b0.p546c.AbstractC9661j;
import p530d.p541c.p543b0.p547d.AbstractC9664c;
import p530d.p541c.p543b0.p554f.C9772a;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver.class */
public final class ObservableConcatMapEager$ConcatMapEagerMainObserver<T, R> extends AtomicInteger implements AbstractC9844r<T>, AbstractC9861b, AbstractC9664c<R> {
    public static final long serialVersionUID = 8080567949447303262L;
    public int activeCount;
    public final AbstractC9844r<? super R> actual;
    public volatile boolean cancelled;
    public InnerQueuedObserver<R> current;

    /* renamed from: d */
    public AbstractC9861b f38488d;
    public volatile boolean done;
    public final ErrorMode errorMode;
    public final AbstractC9645h<? super T, ? extends AbstractC9843q<? extends R>> mapper;
    public final int maxConcurrency;
    public final int prefetch;
    public AbstractC9661j<T> queue;
    public int sourceMode;
    public final AtomicThrowable error = new AtomicThrowable();
    public final ArrayDeque<InnerQueuedObserver<R>> observers = new ArrayDeque<>();

    public ObservableConcatMapEager$ConcatMapEagerMainObserver(AbstractC9844r<? super R> rVar, AbstractC9645h<? super T, ? extends AbstractC9843q<? extends R>> hVar, int i, int i2, ErrorMode errorMode) {
        this.actual = rVar;
        this.mapper = hVar;
        this.maxConcurrency = i;
        this.prefetch = i2;
        this.errorMode = errorMode;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        this.cancelled = true;
        if (getAndIncrement() == 0) {
            this.queue.clear();
            disposeAll();
        }
    }

    public void disposeAll() {
        InnerQueuedObserver<R> innerQueuedObserver = this.current;
        if (innerQueuedObserver != null) {
            innerQueuedObserver.dispose();
        }
        while (true) {
            InnerQueuedObserver<R> poll = this.observers.poll();
            if (poll != null) {
                poll.dispose();
            } else {
                return;
            }
        }
    }

    @Override // p530d.p541c.p543b0.p547d.AbstractC9664c
    public void drain() {
        R poll;
        boolean z;
        if (getAndIncrement() == 0) {
            AbstractC9661j<T> jVar = this.queue;
            ArrayDeque<InnerQueuedObserver<R>> arrayDeque = this.observers;
            AbstractC9844r<? super R> rVar = this.actual;
            ErrorMode errorMode = this.errorMode;
            int i = 1;
            while (true) {
                int i2 = this.activeCount;
                while (i2 != this.maxConcurrency) {
                    if (this.cancelled) {
                        jVar.clear();
                        disposeAll();
                        return;
                    } else if (errorMode != ErrorMode.IMMEDIATE || this.error.get() == null) {
                        try {
                            T poll2 = jVar.poll();
                            if (poll2 == null) {
                                break;
                            }
                            Object apply = this.mapper.apply(poll2);
                            C9650a.m2095a(apply, "The mapper returned a null ObservableSource");
                            AbstractC9843q qVar = (AbstractC9843q) apply;
                            InnerQueuedObserver<R> innerQueuedObserver = new InnerQueuedObserver<>(this, this.prefetch);
                            arrayDeque.offer(innerQueuedObserver);
                            qVar.subscribe(innerQueuedObserver);
                            i2++;
                        } catch (Throwable th) {
                            C9863a.m1822b(th);
                            this.f38488d.dispose();
                            jVar.clear();
                            disposeAll();
                            this.error.addThrowable(th);
                            rVar.onError(this.error.terminate());
                            return;
                        }
                    } else {
                        jVar.clear();
                        disposeAll();
                        rVar.onError(this.error.terminate());
                        return;
                    }
                }
                this.activeCount = i2;
                if (this.cancelled) {
                    jVar.clear();
                    disposeAll();
                    return;
                } else if (errorMode != ErrorMode.IMMEDIATE || this.error.get() == null) {
                    InnerQueuedObserver<R> innerQueuedObserver2 = this.current;
                    InnerQueuedObserver<R> innerQueuedObserver3 = innerQueuedObserver2;
                    if (innerQueuedObserver2 == null) {
                        if (errorMode != ErrorMode.BOUNDARY || this.error.get() == null) {
                            boolean z2 = this.done;
                            innerQueuedObserver3 = arrayDeque.poll();
                            boolean z3 = innerQueuedObserver3 == null;
                            if (!z2 || !z3) {
                                if (!z3) {
                                    this.current = innerQueuedObserver3;
                                }
                            } else if (this.error.get() != null) {
                                jVar.clear();
                                disposeAll();
                                rVar.onError(this.error.terminate());
                                return;
                            } else {
                                rVar.onComplete();
                                return;
                            }
                        } else {
                            jVar.clear();
                            disposeAll();
                            rVar.onError(this.error.terminate());
                            return;
                        }
                    }
                    if (innerQueuedObserver3 != null) {
                        AbstractC9661j<R> queue = innerQueuedObserver3.queue();
                        while (!this.cancelled) {
                            boolean isDone = innerQueuedObserver3.isDone();
                            if (errorMode != ErrorMode.IMMEDIATE || this.error.get() == null) {
                                try {
                                    poll = queue.poll();
                                    z = poll == null;
                                } catch (Throwable th2) {
                                    C9863a.m1822b(th2);
                                    this.error.addThrowable(th2);
                                    this.current = null;
                                    this.activeCount--;
                                }
                                if (isDone && z) {
                                    this.current = null;
                                    this.activeCount--;
                                } else if (!z) {
                                    rVar.onNext(poll);
                                }
                            } else {
                                jVar.clear();
                                disposeAll();
                                rVar.onError(this.error.terminate());
                                return;
                            }
                        }
                        jVar.clear();
                        disposeAll();
                        return;
                    }
                    int addAndGet = addAndGet(-i);
                    i = addAndGet;
                    if (addAndGet == 0) {
                        return;
                    }
                } else {
                    jVar.clear();
                    disposeAll();
                    rVar.onError(this.error.terminate());
                    return;
                }
            }
        }
    }

    @Override // p530d.p541c.p543b0.p547d.AbstractC9664c
    public void innerComplete(InnerQueuedObserver<R> innerQueuedObserver) {
        innerQueuedObserver.setDone();
        drain();
    }

    @Override // p530d.p541c.p543b0.p547d.AbstractC9664c
    public void innerError(InnerQueuedObserver<R> innerQueuedObserver, Throwable th) {
        if (this.error.addThrowable(th)) {
            if (this.errorMode == ErrorMode.IMMEDIATE) {
                this.f38488d.dispose();
            }
            innerQueuedObserver.setDone();
            drain();
            return;
        }
        C9815a.m1923b(th);
    }

    @Override // p530d.p541c.p543b0.p547d.AbstractC9664c
    public void innerNext(InnerQueuedObserver<R> innerQueuedObserver, R r) {
        innerQueuedObserver.queue().offer(r);
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
        if (this.error.addThrowable(th)) {
            this.done = true;
            drain();
            return;
        }
        C9815a.m1923b(th);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onNext(T t) {
        if (this.sourceMode == 0) {
            this.queue.offer(t);
        }
        drain();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onSubscribe(AbstractC9861b bVar) {
        if (DisposableHelper.validate(this.f38488d, bVar)) {
            this.f38488d = bVar;
            if (bVar instanceof AbstractC9656e) {
                AbstractC9656e eVar = (AbstractC9656e) bVar;
                int requestFusion = eVar.requestFusion(3);
                if (requestFusion == 1) {
                    this.sourceMode = requestFusion;
                    this.queue = eVar;
                    this.done = true;
                    this.actual.onSubscribe(this);
                    drain();
                    return;
                } else if (requestFusion == 2) {
                    this.sourceMode = requestFusion;
                    this.queue = eVar;
                    this.actual.onSubscribe(this);
                    return;
                }
            }
            this.queue = new C9772a(this.prefetch);
            this.actual.onSubscribe(this);
        }
    }
}

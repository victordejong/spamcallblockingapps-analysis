package io.reactivex.internal.operators.mixed;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.ErrorMode;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9647b;
import p530d.p541c.AbstractC9809c;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.p542a0.AbstractC9645h;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p543b0.p546c.AbstractC9660i;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver.class */
public final class FlowableConcatMapCompletable$ConcatMapCompletableObserver<T> extends AtomicInteger implements AbstractC9829h<T>, AbstractC9861b {
    public static final long serialVersionUID = 3610901111000061034L;
    public volatile boolean active;
    public int consumed;
    public volatile boolean disposed;
    public volatile boolean done;
    public final AbstractC9647b downstream;
    public final ErrorMode errorMode;
    public final AtomicThrowable errors = new AtomicThrowable();
    public final ConcatMapInnerObserver inner = new ConcatMapInnerObserver(this);
    public final AbstractC9645h<? super T, ? extends AbstractC9809c> mapper;
    public final int prefetch;
    public final AbstractC9660i<T> queue;
    public AbstractC10434d upstream;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/mixed/FlowableConcatMapCompletable$ConcatMapCompletableObserver$ConcatMapInnerObserver.class */
    public static final class ConcatMapInnerObserver extends AtomicReference<AbstractC9861b> implements AbstractC9647b {
        public static final long serialVersionUID = 5638352172918776687L;
        public final FlowableConcatMapCompletable$ConcatMapCompletableObserver<?> parent;

        public ConcatMapInnerObserver(FlowableConcatMapCompletable$ConcatMapCompletableObserver<?> flowableConcatMapCompletable$ConcatMapCompletableObserver) {
            this.parent = flowableConcatMapCompletable$ConcatMapCompletableObserver;
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

    public FlowableConcatMapCompletable$ConcatMapCompletableObserver(AbstractC9647b bVar, AbstractC9645h<? super T, ? extends AbstractC9809c> hVar, ErrorMode errorMode, int i) {
        this.downstream = bVar;
        this.mapper = hVar;
        this.errorMode = errorMode;
        this.prefetch = i;
        this.queue = new SpscArrayQueue(i);
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        this.disposed = true;
        this.upstream.cancel();
        this.inner.dispose();
        if (getAndIncrement() == 0) {
            this.queue.clear();
        }
    }

    public void drain() {
        if (getAndIncrement() == 0) {
            while (!this.disposed) {
                if (!this.active) {
                    if (this.errorMode != ErrorMode.BOUNDARY || this.errors.get() == null) {
                        boolean z = this.done;
                        T poll = this.queue.poll();
                        boolean z2 = poll == null;
                        if (z && z2) {
                            Throwable terminate = this.errors.terminate();
                            if (terminate != null) {
                                this.downstream.onError(terminate);
                                return;
                            } else {
                                this.downstream.onComplete();
                                return;
                            }
                        } else if (!z2) {
                            int i = this.prefetch;
                            int i2 = i - (i >> 1);
                            int i3 = this.consumed + 1;
                            if (i3 == i2) {
                                this.consumed = 0;
                                this.upstream.request(i2);
                            } else {
                                this.consumed = i3;
                            }
                            try {
                                Object apply = this.mapper.apply(poll);
                                C9650a.m2095a(apply, "The mapper returned a null CompletableSource");
                                AbstractC9809c cVar = (AbstractC9809c) apply;
                                this.active = true;
                                cVar.mo1980a(this.inner);
                            } catch (Throwable th) {
                                C9863a.m1822b(th);
                                this.queue.clear();
                                this.upstream.cancel();
                                this.errors.addThrowable(th);
                                this.downstream.onError(this.errors.terminate());
                                return;
                            }
                        }
                    } else {
                        this.queue.clear();
                        this.downstream.onError(this.errors.terminate());
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
            this.upstream.cancel();
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

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        this.done = true;
        drain();
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        if (!this.errors.addThrowable(th)) {
            C9815a.m1923b(th);
        } else if (this.errorMode == ErrorMode.IMMEDIATE) {
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

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        if (this.queue.offer(t)) {
            drain();
            return;
        }
        this.upstream.cancel();
        onError(new MissingBackpressureException("Queue full?!"));
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        if (SubscriptionHelper.validate(this.upstream, dVar)) {
            this.upstream = dVar;
            this.downstream.onSubscribe(this);
            dVar.request(this.prefetch);
        }
    }
}

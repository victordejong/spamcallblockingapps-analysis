package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9840o;
import p530d.p541c.AbstractC9843q;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p542a0.AbstractC9645h;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p543b0.p554f.C9772a;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p568x.C9860a;
import p530d.p541c.p569y.C9863a;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver.class */
public final class ObservableBufferBoundary$BufferBoundaryObserver<T, C extends Collection<? super T>, Open, Close> extends AtomicInteger implements AbstractC9844r<T>, AbstractC9861b {
    public static final long serialVersionUID = -8466418554264089604L;
    public final AbstractC9844r<? super C> actual;
    public final AbstractC9645h<? super Open, ? extends AbstractC9843q<? extends Close>> bufferClose;
    public final AbstractC9843q<? extends Open> bufferOpen;
    public final Callable<C> bufferSupplier;
    public volatile boolean cancelled;
    public volatile boolean done;
    public long index;
    public final C9772a<C> queue = new C9772a<>(AbstractC9840o.m1870a());
    public final C9860a observers = new C9860a();
    public final AtomicReference<AbstractC9861b> upstream = new AtomicReference<>();
    public Map<Long, C> buffers = new LinkedHashMap();
    public final AtomicThrowable errors = new AtomicThrowable();

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableBufferBoundary$BufferBoundaryObserver$BufferOpenObserver.class */
    public static final class BufferOpenObserver<Open> extends AtomicReference<AbstractC9861b> implements AbstractC9844r<Open>, AbstractC9861b {
        public static final long serialVersionUID = -8498650778633225126L;
        public final ObservableBufferBoundary$BufferBoundaryObserver<?, ?, Open, ?> parent;

        public BufferOpenObserver(ObservableBufferBoundary$BufferBoundaryObserver<?, ?, Open, ?> observableBufferBoundary$BufferBoundaryObserver) {
            this.parent = observableBufferBoundary$BufferBoundaryObserver;
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public boolean isDisposed() {
            return get() == DisposableHelper.DISPOSED;
        }

        @Override // p530d.p541c.AbstractC9844r
        public void onComplete() {
            lazySet(DisposableHelper.DISPOSED);
            this.parent.openComplete(this);
        }

        @Override // p530d.p541c.AbstractC9844r
        public void onError(Throwable th) {
            lazySet(DisposableHelper.DISPOSED);
            this.parent.boundaryError(this, th);
        }

        @Override // p530d.p541c.AbstractC9844r
        public void onNext(Open open) {
            this.parent.open(open);
        }

        @Override // p530d.p541c.AbstractC9844r
        public void onSubscribe(AbstractC9861b bVar) {
            DisposableHelper.setOnce(this, bVar);
        }
    }

    public ObservableBufferBoundary$BufferBoundaryObserver(AbstractC9844r<? super C> rVar, AbstractC9843q<? extends Open> qVar, AbstractC9645h<? super Open, ? extends AbstractC9843q<? extends Close>> hVar, Callable<C> callable) {
        this.actual = rVar;
        this.bufferSupplier = callable;
        this.bufferOpen = qVar;
        this.bufferClose = hVar;
    }

    public void boundaryError(AbstractC9861b bVar, Throwable th) {
        DisposableHelper.dispose(this.upstream);
        this.observers.mo1827c(bVar);
        onError(th);
    }

    public void close(ObservableBufferBoundary$BufferCloseObserver<T, C> observableBufferBoundary$BufferCloseObserver, long j) {
        boolean z;
        this.observers.mo1827c(observableBufferBoundary$BufferCloseObserver);
        if (this.observers.m1831a() == 0) {
            DisposableHelper.dispose(this.upstream);
            z = true;
        } else {
            z = false;
        }
        synchronized (this) {
            if (this.buffers != null) {
                this.queue.offer(this.buffers.remove(Long.valueOf(j)));
                if (z) {
                    this.done = true;
                }
                drain();
            }
        }
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        if (DisposableHelper.dispose(this.upstream)) {
            this.cancelled = true;
            this.observers.dispose();
            synchronized (this) {
                this.buffers = null;
            }
            if (getAndIncrement() != 0) {
                this.queue.clear();
            }
        }
    }

    public void drain() {
        if (getAndIncrement() == 0) {
            AbstractC9844r<? super C> rVar = this.actual;
            C9772a<C> aVar = this.queue;
            int i = 1;
            while (!this.cancelled) {
                boolean z = this.done;
                if (!z || this.errors.get() == null) {
                    C poll = aVar.poll();
                    boolean z2 = poll == null;
                    if (z && z2) {
                        rVar.onComplete();
                        return;
                    } else if (z2) {
                        int addAndGet = addAndGet(-i);
                        i = addAndGet;
                        if (addAndGet == 0) {
                            return;
                        }
                    } else {
                        rVar.onNext(poll);
                    }
                } else {
                    aVar.clear();
                    rVar.onError(this.errors.terminate());
                    return;
                }
            }
            aVar.clear();
        }
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(this.upstream.get());
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onComplete() {
        this.observers.dispose();
        synchronized (this) {
            try {
                Map<Long, C> map = this.buffers;
                if (map != null) {
                    for (C c : map.values()) {
                        this.queue.offer(c);
                    }
                    this.buffers = null;
                    this.done = true;
                    drain();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onError(Throwable th) {
        if (this.errors.addThrowable(th)) {
            this.observers.dispose();
            synchronized (this) {
                this.buffers = null;
            }
            this.done = true;
            drain();
            return;
        }
        C9815a.m1923b(th);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onNext(T t) {
        synchronized (this) {
            try {
                Map<Long, C> map = this.buffers;
                if (map != null) {
                    for (C c : map.values()) {
                        c.add(t);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onSubscribe(AbstractC9861b bVar) {
        if (DisposableHelper.setOnce(this.upstream, bVar)) {
            BufferOpenObserver bufferOpenObserver = new BufferOpenObserver(this);
            this.observers.mo1828b(bufferOpenObserver);
            this.bufferOpen.subscribe(bufferOpenObserver);
        }
    }

    public void open(Open open) {
        try {
            C call = this.bufferSupplier.call();
            C9650a.m2095a(call, "The bufferSupplier returned a null Collection");
            C c = call;
            Object apply = this.bufferClose.apply(open);
            C9650a.m2095a(apply, "The bufferClose returned a null ObservableSource");
            AbstractC9843q qVar = (AbstractC9843q) apply;
            long j = this.index;
            this.index = 1 + j;
            synchronized (this) {
                Map<Long, C> map = this.buffers;
                if (map != null) {
                    map.put(Long.valueOf(j), c);
                    ObservableBufferBoundary$BufferCloseObserver observableBufferBoundary$BufferCloseObserver = new ObservableBufferBoundary$BufferCloseObserver(this, j);
                    this.observers.mo1828b(observableBufferBoundary$BufferCloseObserver);
                    qVar.subscribe(observableBufferBoundary$BufferCloseObserver);
                }
            }
        } catch (Throwable th) {
            C9863a.m1822b(th);
            DisposableHelper.dispose(this.upstream);
            onError(th);
        }
    }

    public void openComplete(BufferOpenObserver<Open> bufferOpenObserver) {
        this.observers.mo1827c(bufferOpenObserver);
        if (this.observers.m1831a() == 0) {
            DisposableHelper.dispose(this.upstream);
            this.done = true;
            drain();
        }
    }
}

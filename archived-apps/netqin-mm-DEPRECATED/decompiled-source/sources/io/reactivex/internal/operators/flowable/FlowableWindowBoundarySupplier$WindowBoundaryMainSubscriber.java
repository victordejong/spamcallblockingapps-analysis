package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.queue.MpscLinkedQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.processors.UnicastProcessor;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9814e;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p543b0.p548e.p550b.C9711y;
import p530d.p541c.p543b0.p557i.C9800b;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
import p611j.p612a.AbstractC10432b;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber.class */
public final class FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber<T, B> extends AtomicInteger implements AbstractC9829h<T>, AbstractC10434d, Runnable {
    public static final C9711y<Object, Object> BOUNDARY_DISPOSED = new C9711y<>(null);
    public static final Object NEXT_WINDOW = new Object();
    public static final long serialVersionUID = 2233020065421370272L;
    public final int capacityHint;
    public volatile boolean done;
    public final AbstractC10433c<? super AbstractC9814e<T>> downstream;
    public long emitted;
    public final Callable<? extends AbstractC10432b<B>> other;
    public AbstractC10434d upstream;
    public UnicastProcessor<T> window;
    public final AtomicReference<C9711y<T, B>> boundarySubscriber = new AtomicReference<>();
    public final AtomicInteger windows = new AtomicInteger(1);
    public final MpscLinkedQueue<Object> queue = new MpscLinkedQueue<>();
    public final AtomicThrowable errors = new AtomicThrowable();
    public final AtomicBoolean stopWindows = new AtomicBoolean();
    public final AtomicLong requested = new AtomicLong();

    public FlowableWindowBoundarySupplier$WindowBoundaryMainSubscriber(AbstractC10433c<? super AbstractC9814e<T>> cVar, int i, Callable<? extends AbstractC10432b<B>> callable) {
        this.downstream = cVar;
        this.capacityHint = i;
        this.other = callable;
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
        if (this.stopWindows.compareAndSet(false, true)) {
            disposeBoundary();
            if (this.windows.decrementAndGet() == 0) {
                this.upstream.cancel();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void disposeBoundary() {
        AbstractC9861b bVar = (AbstractC9861b) this.boundarySubscriber.getAndSet(BOUNDARY_DISPOSED);
        if (bVar != null && bVar != BOUNDARY_DISPOSED) {
            bVar.dispose();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void drain() {
        if (getAndIncrement() == 0) {
            AbstractC10433c<? super AbstractC9814e<T>> cVar = this.downstream;
            MpscLinkedQueue<Object> mpscLinkedQueue = this.queue;
            AtomicThrowable atomicThrowable = this.errors;
            long j = this.emitted;
            int i = 1;
            while (this.windows.get() != 0) {
                UnicastProcessor<T> unicastProcessor = this.window;
                boolean z = this.done;
                if (!z || atomicThrowable.get() == null) {
                    Object poll = mpscLinkedQueue.poll();
                    boolean z2 = poll == null;
                    if (z && z2) {
                        Throwable terminate = atomicThrowable.terminate();
                        if (terminate == null) {
                            if (unicastProcessor != 0) {
                                this.window = null;
                                unicastProcessor.onComplete();
                            }
                            cVar.onComplete();
                            return;
                        }
                        if (unicastProcessor != 0) {
                            this.window = null;
                            unicastProcessor.onError(terminate);
                        }
                        cVar.onError(terminate);
                        return;
                    } else if (z2) {
                        this.emitted = j;
                        int addAndGet = addAndGet(-i);
                        i = addAndGet;
                        if (addAndGet == 0) {
                            return;
                        }
                    } else if (poll != NEXT_WINDOW) {
                        unicastProcessor.onNext(poll);
                    } else {
                        if (unicastProcessor != 0) {
                            this.window = null;
                            unicastProcessor.onComplete();
                        }
                        if (!this.stopWindows.get()) {
                            if (j != this.requested.get()) {
                                UnicastProcessor<T> a = UnicastProcessor.m214a(this.capacityHint, this);
                                this.window = a;
                                this.windows.getAndIncrement();
                                try {
                                    Object call = this.other.call();
                                    C9650a.m2095a(call, "The other Callable returned a null Publisher");
                                    AbstractC10432b bVar = (AbstractC10432b) call;
                                    C9711y<T, B> yVar = new C9711y<>(this);
                                    if (this.boundarySubscriber.compareAndSet(null, yVar)) {
                                        bVar.subscribe(yVar);
                                        j++;
                                        cVar.onNext(a);
                                    }
                                } catch (Throwable th) {
                                    C9863a.m1822b(th);
                                    atomicThrowable.addThrowable(th);
                                    this.done = true;
                                }
                            } else {
                                this.upstream.cancel();
                                disposeBoundary();
                                atomicThrowable.addThrowable(new MissingBackpressureException("Could not deliver a window due to lack of requests"));
                                this.done = true;
                            }
                        }
                    }
                } else {
                    mpscLinkedQueue.clear();
                    Throwable terminate2 = atomicThrowable.terminate();
                    if (unicastProcessor != 0) {
                        this.window = null;
                        unicastProcessor.onError(terminate2);
                    }
                    cVar.onError(terminate2);
                    return;
                }
            }
            mpscLinkedQueue.clear();
            this.window = null;
        }
    }

    public void innerComplete() {
        this.upstream.cancel();
        this.done = true;
        drain();
    }

    public void innerError(Throwable th) {
        this.upstream.cancel();
        if (this.errors.addThrowable(th)) {
            this.done = true;
            drain();
            return;
        }
        C9815a.m1923b(th);
    }

    public void innerNext(C9711y<T, B> yVar) {
        this.boundarySubscriber.compareAndSet(yVar, null);
        this.queue.offer(NEXT_WINDOW);
        drain();
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        disposeBoundary();
        this.done = true;
        drain();
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        disposeBoundary();
        if (this.errors.addThrowable(th)) {
            this.done = true;
            drain();
            return;
        }
        C9815a.m1923b(th);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        this.queue.offer(t);
        drain();
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        if (SubscriptionHelper.validate(this.upstream, dVar)) {
            this.upstream = dVar;
            this.downstream.onSubscribe(this);
            this.queue.offer(NEXT_WINDOW);
            drain();
            dVar.request(Long.MAX_VALUE);
        }
    }

    @Override // p611j.p612a.AbstractC10434d
    public void request(long j) {
        C9800b.m2012a(this.requested, j);
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.windows.decrementAndGet() == 0) {
            this.upstream.cancel();
        }
    }
}

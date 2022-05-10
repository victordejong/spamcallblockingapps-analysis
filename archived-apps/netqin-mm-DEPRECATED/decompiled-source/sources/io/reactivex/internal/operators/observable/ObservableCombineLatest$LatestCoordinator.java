package io.reactivex.internal.operators.observable;

import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import p530d.p541c.AbstractC9843q;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p542a0.AbstractC9645h;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p543b0.p554f.C9772a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator.class */
public final class ObservableCombineLatest$LatestCoordinator<T, R> extends AtomicInteger implements AbstractC9861b {
    public static final long serialVersionUID = 8567835998786448817L;
    public int active;
    public final AbstractC9844r<? super R> actual;
    public volatile boolean cancelled;
    public final AbstractC9645h<? super Object[], ? extends R> combiner;
    public int complete;
    public final boolean delayError;
    public volatile boolean done;
    public final AtomicThrowable errors = new AtomicThrowable();
    public Object[] latest;
    public final ObservableCombineLatest$CombinerObserver<T, R>[] observers;
    public final C9772a<Object[]> queue;

    public ObservableCombineLatest$LatestCoordinator(AbstractC9844r<? super R> rVar, AbstractC9645h<? super Object[], ? extends R> hVar, int i, int i2, boolean z) {
        this.actual = rVar;
        this.combiner = hVar;
        this.delayError = z;
        this.latest = new Object[i];
        ObservableCombineLatest$CombinerObserver<T, R>[] observableCombineLatest$CombinerObserverArr = new ObservableCombineLatest$CombinerObserver[i];
        for (int i3 = 0; i3 < i; i3++) {
            observableCombineLatest$CombinerObserverArr[i3] = new ObservableCombineLatest$CombinerObserver<>(this, i3);
        }
        this.observers = observableCombineLatest$CombinerObserverArr;
        this.queue = new C9772a<>(i2);
    }

    public void cancelSources() {
        for (ObservableCombineLatest$CombinerObserver<T, R> observableCombineLatest$CombinerObserver : this.observers) {
            observableCombineLatest$CombinerObserver.dispose();
        }
    }

    public void clear(C9772a<?> aVar) {
        synchronized (this) {
            this.latest = null;
        }
        aVar.clear();
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        if (!this.cancelled) {
            this.cancelled = true;
            cancelSources();
            if (getAndIncrement() == 0) {
                clear(this.queue);
            }
        }
    }

    public void drain() {
        if (getAndIncrement() == 0) {
            C9772a<Object[]> aVar = this.queue;
            AbstractC9844r<? super R> rVar = this.actual;
            boolean z = this.delayError;
            int i = 1;
            while (!this.cancelled) {
                if (z || this.errors.get() == null) {
                    boolean z2 = this.done;
                    Object[] poll = aVar.poll();
                    boolean z3 = poll == null;
                    if (z2 && z3) {
                        clear(aVar);
                        Throwable terminate = this.errors.terminate();
                        if (terminate == null) {
                            rVar.onComplete();
                            return;
                        } else {
                            rVar.onError(terminate);
                            return;
                        }
                    } else if (z3) {
                        int addAndGet = addAndGet(-i);
                        i = addAndGet;
                        if (addAndGet == 0) {
                            return;
                        }
                    } else {
                        try {
                            Object obj = (Object) this.combiner.apply(poll);
                            C9650a.m2095a(obj, "The combiner returned a null value");
                            rVar.onNext(obj);
                        } catch (Throwable th) {
                            C9863a.m1822b(th);
                            this.errors.addThrowable(th);
                            cancelSources();
                            clear(aVar);
                            rVar.onError(this.errors.terminate());
                            return;
                        }
                    }
                } else {
                    cancelSources();
                    clear(aVar);
                    rVar.onError(this.errors.terminate());
                    return;
                }
            }
            clear(aVar);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x002e, code lost:
        if (r0 == r0.length) goto L_0x0031;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void innerComplete(int r4) {
        /*
            r3 = this;
            r0 = r3
            monitor-enter(r0)
            r0 = r3
            java.lang.Object[] r0 = r0.latest     // Catch: all -> 0x0045
            r5 = r0
            r0 = r5
            if (r0 != 0) goto L_0x000e
            r0 = r3
            monitor-exit(r0)     // Catch: all -> 0x0045
            return
        L_0x000e:
            r0 = r5
            r1 = r4
            r0 = r0[r1]
            if (r0 != 0) goto L_0x0019
            r0 = 1
            r4 = r0
            goto L_0x001b
        L_0x0019:
            r0 = 0
            r4 = r0
        L_0x001b:
            r0 = r4
            if (r0 != 0) goto L_0x0031
            r0 = r3
            int r0 = r0.complete     // Catch: all -> 0x0045
            r1 = 1
            int r0 = r0 + r1
            r6 = r0
            r0 = r3
            r1 = r6
            r0.complete = r1     // Catch: all -> 0x0045
            r0 = r6
            r1 = r5
            int r1 = r1.length     // Catch: all -> 0x0045
            if (r0 != r1) goto L_0x0036
        L_0x0031:
            r0 = r3
            r1 = 1
            r0.done = r1     // Catch: all -> 0x0045
        L_0x0036:
            r0 = r3
            monitor-exit(r0)     // Catch: all -> 0x0045
            r0 = r4
            if (r0 == 0) goto L_0x0040
            r0 = r3
            r0.cancelSources()
        L_0x0040:
            r0 = r3
            r0.drain()
            return
        L_0x0045:
            r5 = move-exception
            r0 = r3
            monitor-exit(r0)     // Catch: all -> 0x0045
            r0 = r5
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.observable.ObservableCombineLatest$LatestCoordinator.innerComplete(int):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0048, code lost:
        if (r0 == r0.length) goto L_0x004b;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void innerError(int r4, java.lang.Throwable r5) {
        /*
            r3 = this;
            r0 = r3
            io.reactivex.internal.util.AtomicThrowable r0 = r0.errors
            r1 = r5
            boolean r0 = r0.addThrowable(r1)
            if (r0 == 0) goto L_0x006d
            r0 = r3
            boolean r0 = r0.delayError
            r6 = r0
            r0 = 1
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L_0x005d
            r0 = r3
            monitor-enter(r0)
            r0 = r3
            java.lang.Object[] r0 = r0.latest     // Catch: all -> 0x0058
            r5 = r0
            r0 = r5
            if (r0 != 0) goto L_0x0025
            r0 = r3
            monitor-exit(r0)     // Catch: all -> 0x0058
            return
        L_0x0025:
            r0 = r5
            r1 = r4
            r0 = r0[r1]
            if (r0 != 0) goto L_0x0030
            r0 = 1
            r4 = r0
            goto L_0x0032
        L_0x0030:
            r0 = 0
            r4 = r0
        L_0x0032:
            r0 = r4
            if (r0 != 0) goto L_0x004b
            r0 = r3
            int r0 = r0.complete     // Catch: all -> 0x0058
            r1 = 1
            int r0 = r0 + r1
            r7 = r0
            r0 = r3
            r1 = r7
            r0.complete = r1     // Catch: all -> 0x0058
            r0 = r7
            r1 = r5
            int r1 = r1.length     // Catch: all -> 0x0058
            if (r0 != r1) goto L_0x0050
        L_0x004b:
            r0 = r3
            r1 = 1
            r0.done = r1     // Catch: all -> 0x0058
        L_0x0050:
            r0 = r3
            monitor-exit(r0)     // Catch: all -> 0x0058
            r0 = r4
            r7 = r0
            goto L_0x005d
        L_0x0058:
            r5 = move-exception
            r0 = r3
            monitor-exit(r0)     // Catch: all -> 0x0058
            r0 = r5
            throw r0
        L_0x005d:
            r0 = r7
            if (r0 == 0) goto L_0x0066
            r0 = r3
            r0.cancelSources()
        L_0x0066:
            r0 = r3
            r0.drain()
            goto L_0x0071
        L_0x006d:
            r0 = r5
            p530d.p541c.p560e0.C9815a.m1923b(r0)
        L_0x0071:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.observable.ObservableCombineLatest$LatestCoordinator.innerError(int, java.lang.Throwable):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void innerNext(int i, T t) {
        boolean z;
        synchronized (this) {
            Object[] objArr = this.latest;
            if (objArr != null) {
                Object obj = objArr[i];
                int i2 = this.active;
                int i3 = i2;
                if (obj == null) {
                    i3 = i2 + 1;
                    this.active = i3;
                }
                objArr[i] = t;
                if (i3 == objArr.length) {
                    this.queue.offer(objArr.clone());
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    drain();
                }
            }
        }
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return this.cancelled;
    }

    public void subscribe(AbstractC9843q<? extends T>[] qVarArr) {
        ObservableCombineLatest$CombinerObserver<T, R>[] observableCombineLatest$CombinerObserverArr = this.observers;
        int length = observableCombineLatest$CombinerObserverArr.length;
        this.actual.onSubscribe(this);
        for (int i = 0; i < length && !this.done && !this.cancelled; i++) {
            qVarArr[i].subscribe(observableCombineLatest$CombinerObserverArr[i]);
        }
    }
}

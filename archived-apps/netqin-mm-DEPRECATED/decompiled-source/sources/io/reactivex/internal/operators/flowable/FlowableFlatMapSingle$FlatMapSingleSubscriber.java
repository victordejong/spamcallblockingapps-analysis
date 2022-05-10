package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9814e;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.AbstractC9851u;
import p530d.p541c.AbstractC9852v;
import p530d.p541c.p542a0.AbstractC9645h;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p543b0.p554f.C9772a;
import p530d.p541c.p543b0.p557i.C9800b;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p568x.C9860a;
import p530d.p541c.p569y.C9863a;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber.class */
public final class FlowableFlatMapSingle$FlatMapSingleSubscriber<T, R> extends AtomicInteger implements AbstractC9829h<T>, AbstractC10434d {
    public static final long serialVersionUID = 8600231336733376951L;
    public final AbstractC10433c<? super R> actual;
    public volatile boolean cancelled;
    public final boolean delayErrors;
    public final AbstractC9645h<? super T, ? extends AbstractC9852v<? extends R>> mapper;
    public final int maxConcurrency;

    /* renamed from: s */
    public AbstractC10434d f38382s;
    public final AtomicLong requested = new AtomicLong();
    public final C9860a set = new C9860a();
    public final AtomicThrowable errors = new AtomicThrowable();
    public final AtomicInteger active = new AtomicInteger(1);
    public final AtomicReference<C9772a<R>> queue = new AtomicReference<>();

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableFlatMapSingle$FlatMapSingleSubscriber$InnerObserver.class */
    public final class InnerObserver extends AtomicReference<AbstractC9861b> implements AbstractC9851u<R>, AbstractC9861b {
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

        @Override // p530d.p541c.AbstractC9851u
        public void onError(Throwable th) {
            FlowableFlatMapSingle$FlatMapSingleSubscriber.this.innerError(this, th);
        }

        @Override // p530d.p541c.AbstractC9851u
        public void onSubscribe(AbstractC9861b bVar) {
            DisposableHelper.setOnce(this, bVar);
        }

        @Override // p530d.p541c.AbstractC9851u
        public void onSuccess(R r) {
            FlowableFlatMapSingle$FlatMapSingleSubscriber.this.innerSuccess(this, r);
        }
    }

    public FlowableFlatMapSingle$FlatMapSingleSubscriber(AbstractC10433c<? super R> cVar, AbstractC9645h<? super T, ? extends AbstractC9852v<? extends R>> hVar, boolean z, int i) {
        this.actual = cVar;
        this.mapper = hVar;
        this.delayErrors = z;
        this.maxConcurrency = i;
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
        this.cancelled = true;
        this.f38382s.cancel();
        this.set.dispose();
    }

    public void clear() {
        C9772a<R> aVar = this.queue.get();
        if (aVar != null) {
            aVar.clear();
        }
    }

    public void drain() {
        if (getAndIncrement() == 0) {
            drainLoop();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x00e0, code lost:
        if (r0 != r0) goto L_0x0170;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00e7, code lost:
        if (r5.cancelled == false) goto L_0x00ef;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00ea, code lost:
        clear();
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00ee, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00f3, code lost:
        if (r5.delayErrors != false) goto L_0x0119;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0100, code lost:
        if (r5.errors.get() == null) goto L_0x0119;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0103, code lost:
        r0 = r5.errors.terminate();
        clear();
        r0.onError(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0118, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x011d, code lost:
        if (r0.get() != 0) goto L_0x0126;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0120, code lost:
        r16 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0126, code lost:
        r16 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0129, code lost:
        r0 = r0.get();
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0134, code lost:
        if (r0 == null) goto L_0x0143;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0140, code lost:
        if (r0.isEmpty() == false) goto L_0x0146;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0143, code lost:
        r17 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0148, code lost:
        if (r16 == false) goto L_0x0170;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x014d, code lost:
        if (r17 == false) goto L_0x0170;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0150, code lost:
        r0 = r5.errors.terminate();
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x015b, code lost:
        if (r0 == null) goto L_0x0169;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x015e, code lost:
        r0.onError(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0169, code lost:
        r0.onComplete();
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x016f, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0174, code lost:
        if (r0 == 0) goto L_0x0195;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0177, code lost:
        p530d.p541c.p543b0.p557i.C9800b.m2009c(r5.requested, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0187, code lost:
        if (r5.maxConcurrency == Integer.MAX_VALUE) goto L_0x0195;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x018a, code lost:
        r5.f38382s.request(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0195, code lost:
        r0 = addAndGet(-r9);
        r9 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:?, code lost:
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void drainLoop() {
        /*
            Method dump skipped, instructions count: 424
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableFlatMapSingle$FlatMapSingleSubscriber.drainLoop():void");
    }

    public C9772a<R> getOrCreateQueue() {
        C9772a<R> aVar;
        do {
            C9772a<R> aVar2 = this.queue.get();
            if (aVar2 != null) {
                return aVar2;
            }
            aVar = new C9772a<>(AbstractC9814e.m1946g());
        } while (!this.queue.compareAndSet(null, aVar));
        return aVar;
    }

    public void innerError(FlowableFlatMapSingle$FlatMapSingleSubscriber<T, R>.InnerObserver innerObserver, Throwable th) {
        this.set.mo1827c(innerObserver);
        if (this.errors.addThrowable(th)) {
            if (!this.delayErrors) {
                this.f38382s.cancel();
                this.set.dispose();
            } else if (this.maxConcurrency != Integer.MAX_VALUE) {
                this.f38382s.request(1L);
            }
            this.active.decrementAndGet();
            drain();
            return;
        }
        C9815a.m1923b(th);
    }

    public void innerSuccess(FlowableFlatMapSingle$FlatMapSingleSubscriber<T, R>.InnerObserver innerObserver, R r) {
        this.set.mo1827c(innerObserver);
        if (get() == 0) {
            boolean z = true;
            if (compareAndSet(0, 1)) {
                if (this.active.decrementAndGet() != 0) {
                    z = false;
                }
                if (this.requested.get() != 0) {
                    this.actual.onNext(r);
                    C9772a<R> aVar = this.queue.get();
                    if (!z || (aVar != null && !aVar.isEmpty())) {
                        C9800b.m2009c(this.requested, 1L);
                        if (this.maxConcurrency != Integer.MAX_VALUE) {
                            this.f38382s.request(1L);
                        }
                    } else {
                        Throwable terminate = this.errors.terminate();
                        if (terminate != null) {
                            this.actual.onError(terminate);
                            return;
                        } else {
                            this.actual.onComplete();
                            return;
                        }
                    }
                } else {
                    C9772a<R> orCreateQueue = getOrCreateQueue();
                    synchronized (orCreateQueue) {
                        orCreateQueue.offer(r);
                    }
                }
                if (decrementAndGet() == 0) {
                    return;
                }
                drainLoop();
            }
        }
        C9772a<R> orCreateQueue2 = getOrCreateQueue();
        synchronized (orCreateQueue2) {
            orCreateQueue2.offer(r);
        }
        this.active.decrementAndGet();
        if (getAndIncrement() != 0) {
            return;
        }
        drainLoop();
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        this.active.decrementAndGet();
        drain();
    }

    @Override // p611j.p612a.AbstractC10433c
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

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        try {
            Object apply = this.mapper.apply(t);
            C9650a.m2095a(apply, "The mapper returned a null SingleSource");
            AbstractC9852v vVar = (AbstractC9852v) apply;
            this.active.getAndIncrement();
            InnerObserver innerObserver = new InnerObserver();
            if (!this.cancelled && this.set.mo1828b(innerObserver)) {
                vVar.mo1841a(innerObserver);
            }
        } catch (Throwable th) {
            C9863a.m1822b(th);
            this.f38382s.cancel();
            onError(th);
        }
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        if (SubscriptionHelper.validate(this.f38382s, dVar)) {
            this.f38382s = dVar;
            this.actual.onSubscribe(this);
            int i = this.maxConcurrency;
            if (i == Integer.MAX_VALUE) {
                dVar.request(Long.MAX_VALUE);
            } else {
                dVar.request(i);
            }
        }
    }

    @Override // p611j.p612a.AbstractC10434d
    public void request(long j) {
        if (SubscriptionHelper.validate(j)) {
            C9800b.m2012a(this.requested, j);
            drain();
        }
    }
}

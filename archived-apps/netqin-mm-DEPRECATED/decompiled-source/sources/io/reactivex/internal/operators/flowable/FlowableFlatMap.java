package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9814e;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.p542a0.AbstractC9645h;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p543b0.p546c.AbstractC9658g;
import p530d.p541c.p543b0.p546c.AbstractC9660i;
import p530d.p541c.p543b0.p546c.AbstractC9661j;
import p530d.p541c.p543b0.p548e.p550b.AbstractC9677a;
import p530d.p541c.p543b0.p548e.p550b.C9701q;
import p530d.p541c.p543b0.p554f.C9772a;
import p530d.p541c.p543b0.p557i.C9800b;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
import p611j.p612a.AbstractC10432b;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableFlatMap.class */
public final class FlowableFlatMap<T, U> extends AbstractC9677a<T, U> {

    /* renamed from: c */
    public final AbstractC9645h<? super T, ? extends AbstractC10432b<? extends U>> f38371c;

    /* renamed from: d */
    public final boolean f38372d;

    /* renamed from: e */
    public final int f38373e;

    /* renamed from: f */
    public final int f38374f;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableFlatMap$InnerSubscriber.class */
    public static final class InnerSubscriber<T, U> extends AtomicReference<AbstractC10434d> implements AbstractC9829h<U>, AbstractC9861b {
        public static final long serialVersionUID = -4606175640614850599L;
        public final int bufferSize;
        public volatile boolean done;
        public int fusionMode;

        /* renamed from: id */
        public final long f38375id;
        public final int limit;
        public final MergeSubscriber<T, U> parent;
        public long produced;
        public volatile AbstractC9661j<U> queue;

        public InnerSubscriber(MergeSubscriber<T, U> mergeSubscriber, long j) {
            this.f38375id = j;
            this.parent = mergeSubscriber;
            int i = mergeSubscriber.bufferSize;
            this.bufferSize = i;
            this.limit = i >> 2;
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public void dispose() {
            SubscriptionHelper.cancel(this);
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public boolean isDisposed() {
            return get() == SubscriptionHelper.CANCELLED;
        }

        @Override // p611j.p612a.AbstractC10433c
        public void onComplete() {
            this.done = true;
            this.parent.drain();
        }

        @Override // p611j.p612a.AbstractC10433c
        public void onError(Throwable th) {
            lazySet(SubscriptionHelper.CANCELLED);
            this.parent.innerError(this, th);
        }

        @Override // p611j.p612a.AbstractC10433c
        public void onNext(U u) {
            if (this.fusionMode != 2) {
                this.parent.tryEmit(u, this);
            } else {
                this.parent.drain();
            }
        }

        @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
        public void onSubscribe(AbstractC10434d dVar) {
            if (SubscriptionHelper.setOnce(this, dVar)) {
                if (dVar instanceof AbstractC9658g) {
                    AbstractC9658g gVar = (AbstractC9658g) dVar;
                    int requestFusion = gVar.requestFusion(7);
                    if (requestFusion == 1) {
                        this.fusionMode = requestFusion;
                        this.queue = gVar;
                        this.done = true;
                        this.parent.drain();
                        return;
                    } else if (requestFusion == 2) {
                        this.fusionMode = requestFusion;
                        this.queue = gVar;
                    }
                }
                dVar.request(this.bufferSize);
            }
        }

        public void requestMore(long j) {
            if (this.fusionMode != 1) {
                long j2 = this.produced + j;
                if (j2 >= this.limit) {
                    this.produced = 0L;
                    get().request(j2);
                    return;
                }
                this.produced = j2;
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber.class */
    public static final class MergeSubscriber<T, U> extends AtomicInteger implements AbstractC9829h<T>, AbstractC10434d {
        public static final long serialVersionUID = -2117620485640801370L;
        public final AbstractC10433c<? super U> actual;
        public final int bufferSize;
        public volatile boolean cancelled;
        public final boolean delayErrors;
        public volatile boolean done;
        public long lastId;
        public int lastIndex;
        public final AbstractC9645h<? super T, ? extends AbstractC10432b<? extends U>> mapper;
        public final int maxConcurrency;
        public volatile AbstractC9660i<U> queue;
        public int scalarEmitted;
        public final int scalarLimit;
        public long uniqueId;
        public AbstractC10434d upstream;
        public static final InnerSubscriber<?, ?>[] EMPTY = new InnerSubscriber[0];
        public static final InnerSubscriber<?, ?>[] CANCELLED = new InnerSubscriber[0];
        public final AtomicThrowable errs = new AtomicThrowable();
        public final AtomicReference<InnerSubscriber<?, ?>[]> subscribers = new AtomicReference<>();
        public final AtomicLong requested = new AtomicLong();

        public MergeSubscriber(AbstractC10433c<? super U> cVar, AbstractC9645h<? super T, ? extends AbstractC10432b<? extends U>> hVar, boolean z, int i, int i2) {
            this.actual = cVar;
            this.mapper = hVar;
            this.delayErrors = z;
            this.maxConcurrency = i;
            this.bufferSize = i2;
            this.scalarLimit = Math.max(1, i >> 1);
            this.subscribers.lazySet(EMPTY);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public boolean addInner(InnerSubscriber<T, U> innerSubscriber) {
            InnerSubscriber<?, ?>[] innerSubscriberArr;
            InnerSubscriber[] innerSubscriberArr2;
            do {
                innerSubscriberArr = this.subscribers.get();
                if (innerSubscriberArr == CANCELLED) {
                    innerSubscriber.dispose();
                    return false;
                }
                int length = innerSubscriberArr.length;
                innerSubscriberArr2 = new InnerSubscriber[length + 1];
                System.arraycopy(innerSubscriberArr, 0, innerSubscriberArr2, 0, length);
                innerSubscriberArr2[length] = innerSubscriber;
            } while (!this.subscribers.compareAndSet(innerSubscriberArr, innerSubscriberArr2));
            return true;
        }

        @Override // p611j.p612a.AbstractC10434d
        public void cancel() {
            AbstractC9660i<U> iVar;
            if (!this.cancelled) {
                this.cancelled = true;
                this.upstream.cancel();
                disposeAll();
                if (getAndIncrement() == 0 && (iVar = this.queue) != null) {
                    iVar.clear();
                }
            }
        }

        public boolean checkTerminate() {
            if (this.cancelled) {
                clearScalarQueue();
                return true;
            } else if (this.delayErrors || this.errs.get() == null) {
                return false;
            } else {
                clearScalarQueue();
                Throwable terminate = this.errs.terminate();
                if (terminate == ExceptionHelper.f38570a) {
                    return true;
                }
                this.actual.onError(terminate);
                return true;
            }
        }

        public void clearScalarQueue() {
            AbstractC9660i<U> iVar = this.queue;
            if (iVar != null) {
                iVar.clear();
            }
        }

        public void disposeAll() {
            InnerSubscriber<?, ?>[] andSet;
            InnerSubscriber<?, ?>[] innerSubscriberArr = this.subscribers.get();
            InnerSubscriber<?, ?>[] innerSubscriberArr2 = CANCELLED;
            if (!(innerSubscriberArr == innerSubscriberArr2 || (andSet = this.subscribers.getAndSet(innerSubscriberArr2)) == CANCELLED)) {
                for (InnerSubscriber<?, ?> innerSubscriber : andSet) {
                    innerSubscriber.dispose();
                }
                Throwable terminate = this.errs.terminate();
                if (!(terminate == null || terminate == ExceptionHelper.f38570a)) {
                    C9815a.m1923b(terminate);
                }
            }
        }

        public void drain() {
            if (getAndIncrement() == 0) {
                drainLoop();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:115:0x02dd, code lost:
            if (r0.isEmpty() != false) goto L_0x02e0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x0144, code lost:
            if (r18[r0].f38375id != r0) goto L_0x0147;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v38, types: [j.a.d] */
        /* JADX WARN: Type inference failed for: r12v10 */
        /* JADX WARN: Type inference failed for: r12v11 */
        /* JADX WARN: Type inference failed for: r12v7, types: [long] */
        /* JADX WARN: Type inference failed for: r16v26 */
        /* JADX WARN: Type inference failed for: r16v29 */
        /* JADX WARN: Type inference failed for: r9v0, types: [long] */
        /* JADX WARN: Type inference failed for: r9v1, types: [long] */
        /* JADX WARN: Type inference failed for: r9v12, types: [long] */
        /* JADX WARN: Type inference failed for: r9v14 */
        /* JADX WARN: Type inference failed for: r9v2 */
        /* JADX WARN: Type inference failed for: r9v24 */
        /* JADX WARN: Type inference failed for: r9v25 */
        /* JADX WARN: Type inference failed for: r9v28 */
        /* JADX WARN: Type inference failed for: r9v30 */
        /* JADX WARN: Unknown variable types count: 4 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void drainLoop() {
            /*
                Method dump skipped, instructions count: 934
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableFlatMap.MergeSubscriber.drainLoop():void");
        }

        public AbstractC9661j<U> getInnerQueue(InnerSubscriber<T, U> innerSubscriber) {
            AbstractC9661j<U> jVar = innerSubscriber.queue;
            AbstractC9661j<U> jVar2 = jVar;
            if (jVar == null) {
                jVar2 = new SpscArrayQueue<>(this.bufferSize);
                innerSubscriber.queue = jVar2;
            }
            return jVar2;
        }

        public AbstractC9661j<U> getMainQueue() {
            AbstractC9660i<U> iVar = this.queue;
            AbstractC9660i<U> iVar2 = iVar;
            if (iVar == null) {
                iVar2 = this.maxConcurrency == Integer.MAX_VALUE ? new C9772a<>(this.bufferSize) : new SpscArrayQueue<>(this.maxConcurrency);
                this.queue = iVar2;
            }
            return iVar2;
        }

        public void innerError(InnerSubscriber<T, U> innerSubscriber, Throwable th) {
            if (this.errs.addThrowable(th)) {
                innerSubscriber.done = true;
                if (!this.delayErrors) {
                    this.upstream.cancel();
                    for (InnerSubscriber<?, ?> innerSubscriber2 : this.subscribers.getAndSet(CANCELLED)) {
                        innerSubscriber2.dispose();
                    }
                }
                drain();
                return;
            }
            C9815a.m1923b(th);
        }

        @Override // p611j.p612a.AbstractC10433c
        public void onComplete() {
            if (!this.done) {
                this.done = true;
                drain();
            }
        }

        @Override // p611j.p612a.AbstractC10433c
        public void onError(Throwable th) {
            if (this.done) {
                C9815a.m1923b(th);
            } else if (this.errs.addThrowable(th)) {
                this.done = true;
                drain();
            } else {
                C9815a.m1923b(th);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // p611j.p612a.AbstractC10433c
        public void onNext(T t) {
            if (!this.done) {
                try {
                    Object apply = this.mapper.apply(t);
                    C9650a.m2095a(apply, "The mapper returned a null Publisher");
                    AbstractC10432b bVar = (AbstractC10432b) apply;
                    if (bVar instanceof Callable) {
                        try {
                            Object call = ((Callable) bVar).call();
                            if (call != null) {
                                tryEmitScalar(call);
                            } else if (this.maxConcurrency != Integer.MAX_VALUE && !this.cancelled) {
                                int i = this.scalarEmitted + 1;
                                this.scalarEmitted = i;
                                int i2 = this.scalarLimit;
                                if (i == i2) {
                                    this.scalarEmitted = 0;
                                    this.upstream.request(i2);
                                }
                            }
                        } catch (Throwable th) {
                            C9863a.m1822b(th);
                            this.errs.addThrowable(th);
                            drain();
                        }
                    } else {
                        long j = this.uniqueId;
                        this.uniqueId = 1 + j;
                        InnerSubscriber innerSubscriber = new InnerSubscriber(this, j);
                        if (addInner(innerSubscriber)) {
                            bVar.subscribe(innerSubscriber);
                        }
                    }
                } catch (Throwable th2) {
                    C9863a.m1822b(th2);
                    this.upstream.cancel();
                    onError(th2);
                }
            }
        }

        @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
        public void onSubscribe(AbstractC10434d dVar) {
            if (SubscriptionHelper.validate(this.upstream, dVar)) {
                this.upstream = dVar;
                this.actual.onSubscribe(this);
                if (!this.cancelled) {
                    int i = this.maxConcurrency;
                    if (i == Integer.MAX_VALUE) {
                        dVar.request(Long.MAX_VALUE);
                    } else {
                        dVar.request(i);
                    }
                }
            }
        }

        public void removeInner(InnerSubscriber<T, U> innerSubscriber) {
            InnerSubscriber<?, ?>[] innerSubscriberArr;
            InnerSubscriber<?, ?>[] innerSubscriberArr2;
            do {
                innerSubscriberArr = this.subscribers.get();
                int length = innerSubscriberArr.length;
                if (length != 0) {
                    int i = -1;
                    int i2 = 0;
                    while (true) {
                        if (i2 >= length) {
                            break;
                        } else if (innerSubscriberArr[i2] == innerSubscriber) {
                            i = i2;
                            break;
                        } else {
                            i2++;
                        }
                    }
                    if (i >= 0) {
                        if (length == 1) {
                            innerSubscriberArr2 = EMPTY;
                        } else {
                            innerSubscriberArr2 = new InnerSubscriber[length - 1];
                            System.arraycopy(innerSubscriberArr, 0, innerSubscriberArr2, 0, i);
                            System.arraycopy(innerSubscriberArr, i + 1, innerSubscriberArr2, i, (length - i) - 1);
                        }
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            } while (!this.subscribers.compareAndSet(innerSubscriberArr, innerSubscriberArr2));
        }

        @Override // p611j.p612a.AbstractC10434d
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                C9800b.m2012a(this.requested, j);
                drain();
            }
        }

        public void tryEmit(U u, InnerSubscriber<T, U> innerSubscriber) {
            if (get() != 0 || !compareAndSet(0, 1)) {
                AbstractC9661j<U> jVar = innerSubscriber.queue;
                AbstractC9661j<U> jVar2 = jVar;
                if (jVar == null) {
                    jVar2 = new SpscArrayQueue<>(this.bufferSize);
                    innerSubscriber.queue = jVar2;
                }
                if (!jVar2.offer(u)) {
                    onError(new MissingBackpressureException("Inner queue full?!"));
                    return;
                } else if (getAndIncrement() != 0) {
                    return;
                }
            } else {
                long j = this.requested.get();
                AbstractC9661j<U> jVar3 = innerSubscriber.queue;
                if (j == 0 || (jVar3 != null && !jVar3.isEmpty())) {
                    AbstractC9661j<U> jVar4 = jVar3;
                    if (jVar3 == null) {
                        jVar4 = getInnerQueue(innerSubscriber);
                    }
                    if (!jVar4.offer(u)) {
                        onError(new MissingBackpressureException("Inner queue full?!"));
                        return;
                    }
                } else {
                    this.actual.onNext(u);
                    if (j != Long.MAX_VALUE) {
                        this.requested.decrementAndGet();
                    }
                    innerSubscriber.requestMore(1L);
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            }
            drainLoop();
        }

        public void tryEmitScalar(U u) {
            if (get() == 0 && compareAndSet(0, 1)) {
                long j = this.requested.get();
                AbstractC9660i<U> iVar = this.queue;
                if (j == 0 || (iVar != null && !iVar.isEmpty())) {
                    AbstractC9661j<U> jVar = iVar;
                    if (iVar == null) {
                        jVar = getMainQueue();
                    }
                    if (!jVar.offer(u)) {
                        onError(new IllegalStateException("Scalar queue full?!"));
                        return;
                    }
                } else {
                    this.actual.onNext(u);
                    if (j != Long.MAX_VALUE) {
                        this.requested.decrementAndGet();
                    }
                    if (this.maxConcurrency != Integer.MAX_VALUE && !this.cancelled) {
                        int i = this.scalarEmitted + 1;
                        this.scalarEmitted = i;
                        int i2 = this.scalarLimit;
                        if (i == i2) {
                            this.scalarEmitted = 0;
                            this.upstream.request(i2);
                        }
                    }
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            } else if (!getMainQueue().offer(u)) {
                onError(new IllegalStateException("Scalar queue full?!"));
                return;
            } else if (getAndIncrement() != 0) {
                return;
            }
            drainLoop();
        }
    }

    public FlowableFlatMap(AbstractC9814e<T> eVar, AbstractC9645h<? super T, ? extends AbstractC10432b<? extends U>> hVar, boolean z, int i, int i2) {
        super(eVar);
        this.f38371c = hVar;
        this.f38372d = z;
        this.f38373e = i;
        this.f38374f = i2;
    }

    /* renamed from: a */
    public static <T, U> AbstractC9829h<T> m252a(AbstractC10433c<? super U> cVar, AbstractC9645h<? super T, ? extends AbstractC10432b<? extends U>> hVar, boolean z, int i, int i2) {
        return new MergeSubscriber(cVar, hVar, z, i, i2);
    }

    @Override // p530d.p541c.AbstractC9814e
    /* renamed from: a */
    public void mo213a(AbstractC10433c<? super U> cVar) {
        if (!C9701q.m2082a(this.f36754b, cVar, this.f38371c)) {
            this.f36754b.m1965a((AbstractC9829h) m252a(cVar, this.f38371c, this.f38372d, this.f38373e, this.f38374f));
        }
    }
}

package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9843q;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p542a0.AbstractC9645h;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p543b0.p546c.AbstractC9656e;
import p530d.p541c.p543b0.p546c.AbstractC9660i;
import p530d.p541c.p543b0.p546c.AbstractC9661j;
import p530d.p541c.p543b0.p548e.p552d.AbstractC9734a;
import p530d.p541c.p543b0.p554f.C9772a;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableFlatMap.class */
public final class ObservableFlatMap<T, U> extends AbstractC9734a<T, U> {

    /* renamed from: b */
    public final AbstractC9645h<? super T, ? extends AbstractC9843q<? extends U>> f38491b;

    /* renamed from: c */
    public final boolean f38492c;

    /* renamed from: d */
    public final int f38493d;

    /* renamed from: e */
    public final int f38494e;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver.class */
    public static final class InnerObserver<T, U> extends AtomicReference<AbstractC9861b> implements AbstractC9844r<U> {
        public static final long serialVersionUID = -4606175640614850599L;
        public volatile boolean done;
        public int fusionMode;

        /* renamed from: id */
        public final long f38495id;
        public final MergeObserver<T, U> parent;
        public volatile AbstractC9661j<U> queue;

        public InnerObserver(MergeObserver<T, U> mergeObserver, long j) {
            this.f38495id = j;
            this.parent = mergeObserver;
        }

        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // p530d.p541c.AbstractC9844r
        public void onComplete() {
            this.done = true;
            this.parent.drain();
        }

        @Override // p530d.p541c.AbstractC9844r
        public void onError(Throwable th) {
            if (this.parent.errors.addThrowable(th)) {
                MergeObserver<T, U> mergeObserver = this.parent;
                if (!mergeObserver.delayErrors) {
                    mergeObserver.disposeAll();
                }
                this.done = true;
                this.parent.drain();
                return;
            }
            C9815a.m1923b(th);
        }

        @Override // p530d.p541c.AbstractC9844r
        public void onNext(U u) {
            if (this.fusionMode == 0) {
                this.parent.tryEmit(u, this);
            } else {
                this.parent.drain();
            }
        }

        @Override // p530d.p541c.AbstractC9844r
        public void onSubscribe(AbstractC9861b bVar) {
            if (DisposableHelper.setOnce(this, bVar) && (bVar instanceof AbstractC9656e)) {
                AbstractC9656e eVar = (AbstractC9656e) bVar;
                int requestFusion = eVar.requestFusion(7);
                if (requestFusion == 1) {
                    this.fusionMode = requestFusion;
                    this.queue = eVar;
                    this.done = true;
                    this.parent.drain();
                } else if (requestFusion == 2) {
                    this.fusionMode = requestFusion;
                    this.queue = eVar;
                }
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver.class */
    public static final class MergeObserver<T, U> extends AtomicInteger implements AbstractC9861b, AbstractC9844r<T> {
        public static final long serialVersionUID = -2117620485640801370L;
        public final AbstractC9844r<? super U> actual;
        public final int bufferSize;
        public volatile boolean cancelled;
        public final boolean delayErrors;
        public volatile boolean done;
        public final AtomicThrowable errors = new AtomicThrowable();
        public long lastId;
        public int lastIndex;
        public final AbstractC9645h<? super T, ? extends AbstractC9843q<? extends U>> mapper;
        public final int maxConcurrency;
        public final AtomicReference<InnerObserver<?, ?>[]> observers;
        public volatile AbstractC9660i<U> queue;

        /* renamed from: s */
        public AbstractC9861b f38496s;
        public Queue<AbstractC9843q<? extends U>> sources;
        public long uniqueId;
        public int wip;
        public static final InnerObserver<?, ?>[] EMPTY = new InnerObserver[0];
        public static final InnerObserver<?, ?>[] CANCELLED = new InnerObserver[0];

        public MergeObserver(AbstractC9844r<? super U> rVar, AbstractC9645h<? super T, ? extends AbstractC9843q<? extends U>> hVar, boolean z, int i, int i2) {
            this.actual = rVar;
            this.mapper = hVar;
            this.delayErrors = z;
            this.maxConcurrency = i;
            this.bufferSize = i2;
            if (i != Integer.MAX_VALUE) {
                this.sources = new ArrayDeque(i);
            }
            this.observers = new AtomicReference<>(EMPTY);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public boolean addInner(InnerObserver<T, U> innerObserver) {
            InnerObserver<?, ?>[] innerObserverArr;
            InnerObserver[] innerObserverArr2;
            do {
                innerObserverArr = this.observers.get();
                if (innerObserverArr == CANCELLED) {
                    innerObserver.dispose();
                    return false;
                }
                int length = innerObserverArr.length;
                innerObserverArr2 = new InnerObserver[length + 1];
                System.arraycopy(innerObserverArr, 0, innerObserverArr2, 0, length);
                innerObserverArr2[length] = innerObserver;
            } while (!this.observers.compareAndSet(innerObserverArr, innerObserverArr2));
            return true;
        }

        public boolean checkTerminate() {
            if (this.cancelled) {
                return true;
            }
            Throwable th = this.errors.get();
            if (this.delayErrors || th == null) {
                return false;
            }
            disposeAll();
            Throwable terminate = this.errors.terminate();
            if (terminate == ExceptionHelper.f38570a) {
                return true;
            }
            this.actual.onError(terminate);
            return true;
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public void dispose() {
            Throwable terminate;
            if (!this.cancelled) {
                this.cancelled = true;
                if (disposeAll() && (terminate = this.errors.terminate()) != null && terminate != ExceptionHelper.f38570a) {
                    C9815a.m1923b(terminate);
                }
            }
        }

        public boolean disposeAll() {
            InnerObserver<?, ?>[] andSet;
            this.f38496s.dispose();
            InnerObserver<?, ?>[] innerObserverArr = this.observers.get();
            InnerObserver<?, ?>[] innerObserverArr2 = CANCELLED;
            if (innerObserverArr == innerObserverArr2 || (andSet = this.observers.getAndSet(innerObserverArr2)) == CANCELLED) {
                return false;
            }
            for (InnerObserver<?, ?> innerObserver : andSet) {
                innerObserver.dispose();
            }
            return true;
        }

        public void drain() {
            if (getAndIncrement() == 0) {
                drainLoop();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:51:0x00f1, code lost:
            if (r0[r0].f38495id != r0) goto L_0x00f4;
         */
        /* JADX WARN: Code restructure failed: missing block: B:80:0x0191, code lost:
            if (r0 != null) goto L_0x016a;
         */
        /* JADX WARN: Code restructure failed: missing block: B:86:0x01bb, code lost:
            if (r0.isEmpty() != false) goto L_0x01be;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void drainLoop() {
            /*
                Method dump skipped, instructions count: 669
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.observable.ObservableFlatMap.MergeObserver.drainLoop():void");
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public boolean isDisposed() {
            return this.cancelled;
        }

        @Override // p530d.p541c.AbstractC9844r
        public void onComplete() {
            if (!this.done) {
                this.done = true;
                drain();
            }
        }

        @Override // p530d.p541c.AbstractC9844r
        public void onError(Throwable th) {
            if (this.done) {
                C9815a.m1923b(th);
            } else if (this.errors.addThrowable(th)) {
                this.done = true;
                drain();
            } else {
                C9815a.m1923b(th);
            }
        }

        @Override // p530d.p541c.AbstractC9844r
        public void onNext(T t) {
            if (!this.done) {
                try {
                    Object apply = this.mapper.apply(t);
                    C9650a.m2095a(apply, "The mapper returned a null ObservableSource");
                    AbstractC9843q<? extends U> qVar = (AbstractC9843q) apply;
                    if (this.maxConcurrency != Integer.MAX_VALUE) {
                        synchronized (this) {
                            if (this.wip == this.maxConcurrency) {
                                this.sources.offer(qVar);
                                return;
                            }
                            this.wip++;
                        }
                    }
                    subscribeInner(qVar);
                } catch (Throwable th) {
                    C9863a.m1822b(th);
                    this.f38496s.dispose();
                    onError(th);
                }
            }
        }

        @Override // p530d.p541c.AbstractC9844r
        public void onSubscribe(AbstractC9861b bVar) {
            if (DisposableHelper.validate(this.f38496s, bVar)) {
                this.f38496s = bVar;
                this.actual.onSubscribe(this);
            }
        }

        public void removeInner(InnerObserver<T, U> innerObserver) {
            InnerObserver<?, ?>[] innerObserverArr;
            InnerObserver<?, ?>[] innerObserverArr2;
            do {
                innerObserverArr = this.observers.get();
                int length = innerObserverArr.length;
                if (length != 0) {
                    int i = -1;
                    int i2 = 0;
                    while (true) {
                        if (i2 >= length) {
                            break;
                        } else if (innerObserverArr[i2] == innerObserver) {
                            i = i2;
                            break;
                        } else {
                            i2++;
                        }
                    }
                    if (i >= 0) {
                        if (length == 1) {
                            innerObserverArr2 = EMPTY;
                        } else {
                            innerObserverArr2 = new InnerObserver[length - 1];
                            System.arraycopy(innerObserverArr, 0, innerObserverArr2, 0, i);
                            System.arraycopy(innerObserverArr, i + 1, innerObserverArr2, i, (length - i) - 1);
                        }
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            } while (!this.observers.compareAndSet(innerObserverArr, innerObserverArr2));
        }

        public void subscribeInner(AbstractC9843q<? extends U> qVar) {
            while (qVar instanceof Callable) {
                if (tryEmitScalar((Callable) qVar) && this.maxConcurrency != Integer.MAX_VALUE) {
                    boolean z = false;
                    synchronized (this) {
                        qVar = this.sources.poll();
                        if (qVar == null) {
                            this.wip--;
                            z = true;
                        }
                    }
                    if (z) {
                        drain();
                        return;
                    }
                } else {
                    return;
                }
            }
            long j = this.uniqueId;
            this.uniqueId = 1 + j;
            InnerObserver<T, U> innerObserver = new InnerObserver<>(this, j);
            if (addInner(innerObserver)) {
                qVar.subscribe(innerObserver);
            }
        }

        public void tryEmit(U u, InnerObserver<T, U> innerObserver) {
            if (get() != 0 || !compareAndSet(0, 1)) {
                AbstractC9661j<U> jVar = innerObserver.queue;
                AbstractC9661j<U> jVar2 = jVar;
                if (jVar == null) {
                    jVar2 = new C9772a<>(this.bufferSize);
                    innerObserver.queue = jVar2;
                }
                jVar2.offer(u);
                if (getAndIncrement() != 0) {
                    return;
                }
            } else {
                this.actual.onNext(u);
                if (decrementAndGet() == 0) {
                    return;
                }
            }
            drainLoop();
        }

        public boolean tryEmitScalar(Callable<? extends U> callable) {
            try {
                Object call = callable.call();
                if (call == null) {
                    return true;
                }
                if (get() != 0 || !compareAndSet(0, 1)) {
                    AbstractC9660i<U> iVar = this.queue;
                    C9772a aVar = iVar;
                    if (iVar == null) {
                        aVar = this.maxConcurrency == Integer.MAX_VALUE ? new C9772a(this.bufferSize) : new SpscArrayQueue<>(this.maxConcurrency);
                        this.queue = aVar;
                    }
                    if (!aVar.offer(call)) {
                        onError(new IllegalStateException("Scalar queue full?!"));
                        return true;
                    } else if (getAndIncrement() != 0) {
                        return false;
                    }
                } else {
                    this.actual.onNext(call);
                    if (decrementAndGet() == 0) {
                        return true;
                    }
                }
                drainLoop();
                return true;
            } catch (Throwable th) {
                C9863a.m1822b(th);
                this.errors.addThrowable(th);
                drain();
                return true;
            }
        }
    }

    public ObservableFlatMap(AbstractC9843q<T> qVar, AbstractC9645h<? super T, ? extends AbstractC9843q<? extends U>> hVar, boolean z, int i, int i2) {
        super(qVar);
        this.f38491b = hVar;
        this.f38492c = z;
        this.f38493d = i;
        this.f38494e = i2;
    }

    @Override // p530d.p541c.AbstractC9840o
    /* renamed from: a */
    public void mo192a(AbstractC9844r<? super U> rVar) {
        if (!ObservableScalarXMap.m234a(this.f36843a, rVar, this.f38491b)) {
            this.f36843a.subscribe(new MergeObserver(rVar, this.f38491b, this.f38492c, this.f38493d, this.f38494e));
        }
    }
}

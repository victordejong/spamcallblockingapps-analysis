package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionArbiter;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.ErrorMode;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import p530d.p541c.AbstractC9814e;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.p542a0.AbstractC9645h;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p543b0.p546c.AbstractC9658g;
import p530d.p541c.p543b0.p546c.AbstractC9661j;
import p530d.p541c.p543b0.p548e.p550b.AbstractC9677a;
import p530d.p541c.p543b0.p548e.p550b.C9701q;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p569y.C9863a;
import p611j.p612a.AbstractC10432b;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableConcatMap.class */
public final class FlowableConcatMap<T, R> extends AbstractC9677a<T, R> {

    /* renamed from: c */
    public final AbstractC9645h<? super T, ? extends AbstractC10432b<? extends R>> f38343c;

    /* renamed from: d */
    public final int f38344d;

    /* renamed from: e */
    public final ErrorMode f38345e;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableConcatMap$BaseConcatMapSubscriber.class */
    public static abstract class BaseConcatMapSubscriber<T, R> extends AtomicInteger implements AbstractC9829h<T>, AbstractC10401b<R>, AbstractC10434d {
        public static final long serialVersionUID = -3511336836796789179L;
        public volatile boolean active;
        public volatile boolean cancelled;
        public int consumed;
        public volatile boolean done;
        public final int limit;
        public final AbstractC9645h<? super T, ? extends AbstractC10432b<? extends R>> mapper;
        public final int prefetch;
        public AbstractC9661j<T> queue;

        /* renamed from: s */
        public AbstractC10434d f38346s;
        public int sourceMode;
        public final ConcatMapInner<R> inner = new ConcatMapInner<>(this);
        public final AtomicThrowable errors = new AtomicThrowable();

        public BaseConcatMapSubscriber(AbstractC9645h<? super T, ? extends AbstractC10432b<? extends R>> hVar, int i) {
            this.mapper = hVar;
            this.prefetch = i;
            this.limit = i - (i >> 2);
        }

        public abstract void drain();

        @Override // io.reactivex.internal.operators.flowable.FlowableConcatMap.AbstractC10401b
        public final void innerComplete() {
            this.active = false;
            drain();
        }

        @Override // p611j.p612a.AbstractC10433c
        public final void onComplete() {
            this.done = true;
            drain();
        }

        @Override // p611j.p612a.AbstractC10433c
        public final void onNext(T t) {
            if (this.sourceMode == 2 || this.queue.offer(t)) {
                drain();
                return;
            }
            this.f38346s.cancel();
            onError(new IllegalStateException("Queue full?!"));
        }

        @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
        public final void onSubscribe(AbstractC10434d dVar) {
            if (SubscriptionHelper.validate(this.f38346s, dVar)) {
                this.f38346s = dVar;
                if (dVar instanceof AbstractC9658g) {
                    AbstractC9658g gVar = (AbstractC9658g) dVar;
                    int requestFusion = gVar.requestFusion(3);
                    if (requestFusion == 1) {
                        this.sourceMode = requestFusion;
                        this.queue = gVar;
                        this.done = true;
                        subscribeActual();
                        drain();
                        return;
                    } else if (requestFusion == 2) {
                        this.sourceMode = requestFusion;
                        this.queue = gVar;
                        subscribeActual();
                        dVar.request(this.prefetch);
                        return;
                    }
                }
                this.queue = new SpscArrayQueue(this.prefetch);
                subscribeActual();
                dVar.request(this.prefetch);
            }
        }

        public abstract void subscribeActual();
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapDelayed.class */
    public static final class ConcatMapDelayed<T, R> extends BaseConcatMapSubscriber<T, R> {
        public static final long serialVersionUID = -2945777694260521066L;
        public final AbstractC10433c<? super R> actual;
        public final boolean veryEnd;

        public ConcatMapDelayed(AbstractC10433c<? super R> cVar, AbstractC9645h<? super T, ? extends AbstractC10432b<? extends R>> hVar, int i, boolean z) {
            super(hVar, i);
            this.actual = cVar;
            this.veryEnd = z;
        }

        @Override // p611j.p612a.AbstractC10434d
        public void cancel() {
            if (!this.cancelled) {
                this.cancelled = true;
                this.inner.cancel();
                this.f38346s.cancel();
            }
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableConcatMap.BaseConcatMapSubscriber
        public void drain() {
            if (getAndIncrement() == 0) {
                while (!this.cancelled) {
                    if (!this.active) {
                        boolean z = this.done;
                        if (!z || this.veryEnd || this.errors.get() == null) {
                            try {
                                T poll = this.queue.poll();
                                boolean z2 = poll == null;
                                if (z && z2) {
                                    Throwable terminate = this.errors.terminate();
                                    if (terminate != null) {
                                        this.actual.onError(terminate);
                                        return;
                                    } else {
                                        this.actual.onComplete();
                                        return;
                                    }
                                } else if (!z2) {
                                    try {
                                        Object apply = this.mapper.apply(poll);
                                        C9650a.m2095a(apply, "The mapper returned a null Publisher");
                                        AbstractC10432b bVar = (AbstractC10432b) apply;
                                        if (this.sourceMode != 1) {
                                            int i = this.consumed + 1;
                                            if (i == this.limit) {
                                                this.consumed = 0;
                                                this.f38346s.request(i);
                                            } else {
                                                this.consumed = i;
                                            }
                                        }
                                        if (bVar instanceof Callable) {
                                            try {
                                                Object call = ((Callable) bVar).call();
                                                if (call == null) {
                                                    continue;
                                                } else if (this.inner.isUnbounded()) {
                                                    this.actual.onNext(call);
                                                } else {
                                                    this.active = true;
                                                    ConcatMapInner<R> concatMapInner = this.inner;
                                                    concatMapInner.setSubscription(new C10402c(call, concatMapInner));
                                                }
                                            } catch (Throwable th) {
                                                C9863a.m1822b(th);
                                                this.f38346s.cancel();
                                                this.errors.addThrowable(th);
                                                this.actual.onError(this.errors.terminate());
                                                return;
                                            }
                                        } else {
                                            this.active = true;
                                            bVar.subscribe(this.inner);
                                        }
                                    } catch (Throwable th2) {
                                        C9863a.m1822b(th2);
                                        this.f38346s.cancel();
                                        this.errors.addThrowable(th2);
                                        this.actual.onError(this.errors.terminate());
                                        return;
                                    }
                                }
                            } catch (Throwable th3) {
                                C9863a.m1822b(th3);
                                this.f38346s.cancel();
                                this.errors.addThrowable(th3);
                                this.actual.onError(this.errors.terminate());
                                return;
                            }
                        } else {
                            this.actual.onError(this.errors.terminate());
                            return;
                        }
                    }
                    if (decrementAndGet() == 0) {
                        return;
                    }
                }
            }
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableConcatMap.AbstractC10401b
        public void innerError(Throwable th) {
            if (this.errors.addThrowable(th)) {
                if (!this.veryEnd) {
                    this.f38346s.cancel();
                    this.done = true;
                }
                this.active = false;
                drain();
                return;
            }
            C9815a.m1923b(th);
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableConcatMap.AbstractC10401b
        public void innerNext(R r) {
            this.actual.onNext(r);
        }

        @Override // p611j.p612a.AbstractC10433c
        public void onError(Throwable th) {
            if (this.errors.addThrowable(th)) {
                this.done = true;
                drain();
                return;
            }
            C9815a.m1923b(th);
        }

        @Override // p611j.p612a.AbstractC10434d
        public void request(long j) {
            this.inner.request(j);
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableConcatMap.BaseConcatMapSubscriber
        public void subscribeActual() {
            this.actual.onSubscribe(this);
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapImmediate.class */
    public static final class ConcatMapImmediate<T, R> extends BaseConcatMapSubscriber<T, R> {
        public static final long serialVersionUID = 7898995095634264146L;
        public final AbstractC10433c<? super R> actual;
        public final AtomicInteger wip = new AtomicInteger();

        public ConcatMapImmediate(AbstractC10433c<? super R> cVar, AbstractC9645h<? super T, ? extends AbstractC10432b<? extends R>> hVar, int i) {
            super(hVar, i);
            this.actual = cVar;
        }

        @Override // p611j.p612a.AbstractC10434d
        public void cancel() {
            if (!this.cancelled) {
                this.cancelled = true;
                this.inner.cancel();
                this.f38346s.cancel();
            }
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableConcatMap.BaseConcatMapSubscriber
        public void drain() {
            if (this.wip.getAndIncrement() == 0) {
                while (!this.cancelled) {
                    if (!this.active) {
                        boolean z = this.done;
                        try {
                            T poll = this.queue.poll();
                            boolean z2 = poll == null;
                            if (z && z2) {
                                this.actual.onComplete();
                                return;
                            } else if (!z2) {
                                try {
                                    Object apply = this.mapper.apply(poll);
                                    C9650a.m2095a(apply, "The mapper returned a null Publisher");
                                    AbstractC10432b bVar = (AbstractC10432b) apply;
                                    if (this.sourceMode != 1) {
                                        int i = this.consumed + 1;
                                        if (i == this.limit) {
                                            this.consumed = 0;
                                            this.f38346s.request(i);
                                        } else {
                                            this.consumed = i;
                                        }
                                    }
                                    if (bVar instanceof Callable) {
                                        try {
                                            Object call = ((Callable) bVar).call();
                                            if (call == null) {
                                                continue;
                                            } else if (!this.inner.isUnbounded()) {
                                                this.active = true;
                                                ConcatMapInner<R> concatMapInner = this.inner;
                                                concatMapInner.setSubscription(new C10402c(call, concatMapInner));
                                            } else if (get() == 0 && compareAndSet(0, 1)) {
                                                this.actual.onNext(call);
                                                if (!compareAndSet(1, 0)) {
                                                    this.actual.onError(this.errors.terminate());
                                                    return;
                                                }
                                            }
                                        } catch (Throwable th) {
                                            C9863a.m1822b(th);
                                            this.f38346s.cancel();
                                            this.errors.addThrowable(th);
                                            this.actual.onError(this.errors.terminate());
                                            return;
                                        }
                                    } else {
                                        this.active = true;
                                        bVar.subscribe(this.inner);
                                    }
                                } catch (Throwable th2) {
                                    C9863a.m1822b(th2);
                                    this.f38346s.cancel();
                                    this.errors.addThrowable(th2);
                                    this.actual.onError(this.errors.terminate());
                                    return;
                                }
                            }
                        } catch (Throwable th3) {
                            C9863a.m1822b(th3);
                            this.f38346s.cancel();
                            this.errors.addThrowable(th3);
                            this.actual.onError(this.errors.terminate());
                            return;
                        }
                    }
                    if (this.wip.decrementAndGet() == 0) {
                        return;
                    }
                }
            }
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableConcatMap.AbstractC10401b
        public void innerError(Throwable th) {
            if (this.errors.addThrowable(th)) {
                this.f38346s.cancel();
                if (getAndIncrement() == 0) {
                    this.actual.onError(this.errors.terminate());
                    return;
                }
                return;
            }
            C9815a.m1923b(th);
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableConcatMap.AbstractC10401b
        public void innerNext(R r) {
            if (get() == 0 && compareAndSet(0, 1)) {
                this.actual.onNext(r);
                if (!compareAndSet(1, 0)) {
                    this.actual.onError(this.errors.terminate());
                }
            }
        }

        @Override // p611j.p612a.AbstractC10433c
        public void onError(Throwable th) {
            if (this.errors.addThrowable(th)) {
                this.inner.cancel();
                if (getAndIncrement() == 0) {
                    this.actual.onError(this.errors.terminate());
                    return;
                }
                return;
            }
            C9815a.m1923b(th);
        }

        @Override // p611j.p612a.AbstractC10434d
        public void request(long j) {
            this.inner.request(j);
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableConcatMap.BaseConcatMapSubscriber
        public void subscribeActual() {
            this.actual.onSubscribe(this);
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableConcatMap$ConcatMapInner.class */
    public static final class ConcatMapInner<R> extends SubscriptionArbiter implements AbstractC9829h<R> {
        public static final long serialVersionUID = 897683679971470653L;
        public final AbstractC10401b<R> parent;
        public long produced;

        public ConcatMapInner(AbstractC10401b<R> bVar) {
            this.parent = bVar;
        }

        @Override // p611j.p612a.AbstractC10433c
        public void onComplete() {
            long j = this.produced;
            if (j != 0) {
                this.produced = 0L;
                produced(j);
            }
            this.parent.innerComplete();
        }

        @Override // p611j.p612a.AbstractC10433c
        public void onError(Throwable th) {
            long j = this.produced;
            if (j != 0) {
                this.produced = 0L;
                produced(j);
            }
            this.parent.innerError(th);
        }

        @Override // p611j.p612a.AbstractC10433c
        public void onNext(R r) {
            this.produced++;
            this.parent.innerNext(r);
        }

        @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
        public void onSubscribe(AbstractC10434d dVar) {
            setSubscription(dVar);
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.FlowableConcatMap$a */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableConcatMap$a.class */
    public static /* synthetic */ class C10400a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f38347a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[ErrorMode.values().length];
            f38347a = iArr;
            try {
                iArr[ErrorMode.BOUNDARY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f38347a[ErrorMode.END.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.FlowableConcatMap$b */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableConcatMap$b.class */
    public interface AbstractC10401b<T> {
        void innerComplete();

        void innerError(Throwable th);

        void innerNext(T t);
    }

    /* renamed from: io.reactivex.internal.operators.flowable.FlowableConcatMap$c */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableConcatMap$c.class */
    public static final class C10402c<T> implements AbstractC10434d {

        /* renamed from: a */
        public final AbstractC10433c<? super T> f38348a;

        /* renamed from: b */
        public final T f38349b;

        /* renamed from: c */
        public boolean f38350c;

        public C10402c(T t, AbstractC10433c<? super T> cVar) {
            this.f38349b = t;
            this.f38348a = cVar;
        }

        @Override // p611j.p612a.AbstractC10434d
        public void cancel() {
        }

        @Override // p611j.p612a.AbstractC10434d
        public void request(long j) {
            if (j > 0 && !this.f38350c) {
                this.f38350c = true;
                AbstractC10433c<? super T> cVar = this.f38348a;
                cVar.onNext((T) this.f38349b);
                cVar.onComplete();
            }
        }
    }

    public FlowableConcatMap(AbstractC9814e<T> eVar, AbstractC9645h<? super T, ? extends AbstractC10432b<? extends R>> hVar, int i, ErrorMode errorMode) {
        super(eVar);
        this.f38343c = hVar;
        this.f38344d = i;
        this.f38345e = errorMode;
    }

    /* renamed from: a */
    public static <T, R> AbstractC10433c<T> m254a(AbstractC10433c<? super R> cVar, AbstractC9645h<? super T, ? extends AbstractC10432b<? extends R>> hVar, int i, ErrorMode errorMode) {
        int i2 = C10400a.f38347a[errorMode.ordinal()];
        return i2 != 1 ? i2 != 2 ? new ConcatMapImmediate(cVar, hVar, i) : new ConcatMapDelayed(cVar, hVar, i, true) : new ConcatMapDelayed(cVar, hVar, i, false);
    }

    @Override // p530d.p541c.AbstractC9814e
    /* renamed from: a */
    public void mo213a(AbstractC10433c<? super R> cVar) {
        if (!C9701q.m2082a(this.f36754b, cVar, this.f38343c)) {
            this.f36754b.subscribe(m254a(cVar, this.f38343c, this.f38344d, this.f38345e));
        }
    }
}

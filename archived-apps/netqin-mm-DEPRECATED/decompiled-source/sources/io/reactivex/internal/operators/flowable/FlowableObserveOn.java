package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;
import p530d.p541c.AbstractC9814e;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.AbstractC9845s;
import p530d.p541c.p543b0.p546c.AbstractC9652a;
import p530d.p541c.p543b0.p546c.AbstractC9658g;
import p530d.p541c.p543b0.p546c.AbstractC9661j;
import p530d.p541c.p543b0.p548e.p550b.AbstractC9677a;
import p530d.p541c.p543b0.p557i.C9800b;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p569y.C9863a;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableObserveOn.class */
public final class FlowableObserveOn<T> extends AbstractC9677a<T, T> {

    /* renamed from: c */
    public final AbstractC9845s f38390c;

    /* renamed from: d */
    public final boolean f38391d;

    /* renamed from: e */
    public final int f38392e;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableObserveOn$BaseObserveOnSubscriber.class */
    public static abstract class BaseObserveOnSubscriber<T> extends BasicIntQueueSubscription<T> implements AbstractC9829h<T>, Runnable {
        public static final long serialVersionUID = -8241002408341274697L;
        public volatile boolean cancelled;
        public final boolean delayError;
        public volatile boolean done;
        public Throwable error;
        public final int limit;
        public boolean outputFused;
        public final int prefetch;
        public long produced;
        public AbstractC9661j<T> queue;
        public final AtomicLong requested = new AtomicLong();

        /* renamed from: s */
        public AbstractC10434d f38393s;
        public int sourceMode;
        public final AbstractC9845s.AbstractC9848c worker;

        public BaseObserveOnSubscriber(AbstractC9845s.AbstractC9848c cVar, boolean z, int i) {
            this.worker = cVar;
            this.delayError = z;
            this.prefetch = i;
            this.limit = i - (i >> 2);
        }

        @Override // p611j.p612a.AbstractC10434d
        public final void cancel() {
            if (!this.cancelled) {
                this.cancelled = true;
                this.f38393s.cancel();
                this.worker.dispose();
                if (getAndIncrement() == 0) {
                    this.queue.clear();
                }
            }
        }

        public final boolean checkTerminated(boolean z, boolean z2, AbstractC10433c<?> cVar) {
            if (this.cancelled) {
                clear();
                return true;
            } else if (!z) {
                return false;
            } else {
                if (!this.delayError) {
                    Throwable th = this.error;
                    if (th != null) {
                        clear();
                        cVar.onError(th);
                        this.worker.dispose();
                        return true;
                    } else if (!z2) {
                        return false;
                    } else {
                        cVar.onComplete();
                        this.worker.dispose();
                        return true;
                    }
                } else if (!z2) {
                    return false;
                } else {
                    Throwable th2 = this.error;
                    if (th2 != null) {
                        cVar.onError(th2);
                    } else {
                        cVar.onComplete();
                    }
                    this.worker.dispose();
                    return true;
                }
            }
        }

        @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
        public final void clear() {
            this.queue.clear();
        }

        @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
        public final boolean isEmpty() {
            return this.queue.isEmpty();
        }

        @Override // p611j.p612a.AbstractC10433c
        public final void onComplete() {
            if (!this.done) {
                this.done = true;
                trySchedule();
            }
        }

        @Override // p611j.p612a.AbstractC10433c
        public final void onError(Throwable th) {
            if (this.done) {
                C9815a.m1923b(th);
                return;
            }
            this.error = th;
            this.done = true;
            trySchedule();
        }

        @Override // p611j.p612a.AbstractC10433c
        public final void onNext(T t) {
            if (!this.done) {
                if (this.sourceMode == 2) {
                    trySchedule();
                    return;
                }
                if (!this.queue.offer(t)) {
                    this.f38393s.cancel();
                    this.error = new MissingBackpressureException("Queue is full?!");
                    this.done = true;
                }
                trySchedule();
            }
        }

        @Override // p611j.p612a.AbstractC10434d
        public final void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                C9800b.m2012a(this.requested, j);
                trySchedule();
            }
        }

        @Override // p530d.p541c.p543b0.p546c.AbstractC9657f
        public final int requestFusion(int i) {
            if ((i & 2) == 0) {
                return 0;
            }
            this.outputFused = true;
            return 2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.outputFused) {
                runBackfused();
            } else if (this.sourceMode == 1) {
                runSync();
            } else {
                runAsync();
            }
        }

        public abstract void runAsync();

        public abstract void runBackfused();

        public abstract void runSync();

        public final void trySchedule() {
            if (getAndIncrement() == 0) {
                this.worker.mo1851a(this);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber.class */
    public static final class ObserveOnConditionalSubscriber<T> extends BaseObserveOnSubscriber<T> {
        public static final long serialVersionUID = 644624475404284533L;
        public final AbstractC9652a<? super T> actual;
        public long consumed;

        public ObserveOnConditionalSubscriber(AbstractC9652a<? super T> aVar, AbstractC9845s.AbstractC9848c cVar, boolean z, int i) {
            super(cVar, z, i);
            this.actual = aVar;
        }

        @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
        public void onSubscribe(AbstractC10434d dVar) {
            if (SubscriptionHelper.validate(this.f38393s, dVar)) {
                this.f38393s = dVar;
                if (dVar instanceof AbstractC9658g) {
                    AbstractC9658g gVar = (AbstractC9658g) dVar;
                    int requestFusion = gVar.requestFusion(7);
                    if (requestFusion == 1) {
                        this.sourceMode = 1;
                        this.queue = gVar;
                        this.done = true;
                        this.actual.onSubscribe(this);
                        return;
                    } else if (requestFusion == 2) {
                        this.sourceMode = 2;
                        this.queue = gVar;
                        this.actual.onSubscribe(this);
                        dVar.request(this.prefetch);
                        return;
                    }
                }
                this.queue = new SpscArrayQueue(this.prefetch);
                this.actual.onSubscribe(this);
                dVar.request(this.prefetch);
            }
        }

        @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
        public T poll() throws Exception {
            T poll = this.queue.poll();
            if (!(poll == null || this.sourceMode == 1)) {
                long j = this.consumed + 1;
                if (j == this.limit) {
                    this.consumed = 0L;
                    this.f38393s.request(j);
                } else {
                    this.consumed = j;
                }
            }
            return poll;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v47, types: [long] */
        /* JADX WARN: Type inference failed for: r0v53, types: [j.a.d] */
        /* JADX WARN: Type inference failed for: r10v0, types: [long] */
        /* JADX WARN: Type inference failed for: r10v1 */
        /* JADX WARN: Type inference failed for: r10v2, types: [long] */
        /* JADX WARN: Type inference failed for: r10v3 */
        /* JADX WARN: Type inference failed for: r10v4 */
        /* JADX WARN: Type inference failed for: r10v5 */
        /* JADX WARN: Type inference failed for: r18v0 */
        /* JADX WARN: Type inference failed for: r18v1 */
        /* JADX WARN: Type inference failed for: r18v3 */
        /* JADX WARN: Type inference failed for: r5v0, types: [io.reactivex.internal.operators.flowable.FlowableObserveOn$ObserveOnConditionalSubscriber<T>, io.reactivex.internal.operators.flowable.FlowableObserveOn$BaseObserveOnSubscriber, java.util.concurrent.atomic.AtomicInteger, io.reactivex.internal.operators.flowable.FlowableObserveOn$ObserveOnConditionalSubscriber] */
        /* JADX WARN: Type inference failed for: r8v0, types: [long] */
        /* JADX WARN: Type inference failed for: r8v1 */
        /* JADX WARN: Type inference failed for: r8v2, types: [long] */
        /* JADX WARN: Type inference failed for: r8v3 */
        /* JADX WARN: Type inference failed for: r8v4 */
        /* JADX WARN: Type inference failed for: r8v5 */
        /* JADX WARN: Unknown variable types count: 4 */
        @Override // io.reactivex.internal.operators.flowable.FlowableObserveOn.BaseObserveOnSubscriber
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void runAsync() {
            /*
                Method dump skipped, instructions count: 268
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableObserveOn.ObserveOnConditionalSubscriber.runAsync():void");
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableObserveOn.BaseObserveOnSubscriber
        public void runBackfused() {
            int i = 1;
            while (!this.cancelled) {
                boolean z = this.done;
                this.actual.onNext(null);
                if (z) {
                    Throwable th = this.error;
                    if (th != null) {
                        this.actual.onError(th);
                    } else {
                        this.actual.onComplete();
                    }
                    this.worker.dispose();
                    return;
                }
                int addAndGet = addAndGet(-i);
                i = addAndGet;
                if (addAndGet == 0) {
                    return;
                }
            }
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableObserveOn.BaseObserveOnSubscriber
        public void runSync() {
            AbstractC9652a<? super T> aVar = this.actual;
            AbstractC9661j<T> jVar = this.queue;
            long j = this.produced;
            int i = 1;
            while (true) {
                long j2 = this.requested.get();
                while (j != j2) {
                    try {
                        Object obj = (T) jVar.poll();
                        if (!this.cancelled) {
                            if (obj == null) {
                                aVar.onComplete();
                                this.worker.dispose();
                                return;
                            } else if (aVar.tryOnNext(obj)) {
                                j++;
                            }
                        } else {
                            return;
                        }
                    } catch (Throwable th) {
                        C9863a.m1822b(th);
                        this.f38393s.cancel();
                        aVar.onError(th);
                        this.worker.dispose();
                        return;
                    }
                }
                if (!this.cancelled) {
                    if (jVar.isEmpty()) {
                        aVar.onComplete();
                        this.worker.dispose();
                        return;
                    }
                    int i2 = get();
                    if (i == i2) {
                        this.produced = j;
                        int addAndGet = addAndGet(-i);
                        i = addAndGet;
                        if (addAndGet == 0) {
                            return;
                        }
                    } else {
                        i = i2;
                    }
                } else {
                    return;
                }
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber.class */
    public static final class ObserveOnSubscriber<T> extends BaseObserveOnSubscriber<T> implements AbstractC9829h<T> {
        public static final long serialVersionUID = -4547113800637756442L;
        public final AbstractC10433c<? super T> actual;

        public ObserveOnSubscriber(AbstractC10433c<? super T> cVar, AbstractC9845s.AbstractC9848c cVar2, boolean z, int i) {
            super(cVar2, z, i);
            this.actual = cVar;
        }

        @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
        public void onSubscribe(AbstractC10434d dVar) {
            if (SubscriptionHelper.validate(this.f38393s, dVar)) {
                this.f38393s = dVar;
                if (dVar instanceof AbstractC9658g) {
                    AbstractC9658g gVar = (AbstractC9658g) dVar;
                    int requestFusion = gVar.requestFusion(7);
                    if (requestFusion == 1) {
                        this.sourceMode = 1;
                        this.queue = gVar;
                        this.done = true;
                        this.actual.onSubscribe(this);
                        return;
                    } else if (requestFusion == 2) {
                        this.sourceMode = 2;
                        this.queue = gVar;
                        this.actual.onSubscribe(this);
                        dVar.request(this.prefetch);
                        return;
                    }
                }
                this.queue = new SpscArrayQueue(this.prefetch);
                this.actual.onSubscribe(this);
                dVar.request(this.prefetch);
            }
        }

        @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
        public T poll() throws Exception {
            T poll = this.queue.poll();
            if (!(poll == null || this.sourceMode == 1)) {
                long j = this.produced + 1;
                if (j == this.limit) {
                    this.produced = 0L;
                    this.f38393s.request(j);
                } else {
                    this.produced = j;
                }
            }
            return poll;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v42, types: [long] */
        /* JADX WARN: Type inference failed for: r0v50, types: [j.a.d] */
        /* JADX WARN: Type inference failed for: r11v0, types: [long] */
        /* JADX WARN: Type inference failed for: r11v1, types: [long] */
        /* JADX WARN: Type inference failed for: r11v2 */
        /* JADX WARN: Type inference failed for: r11v3 */
        /* JADX WARN: Type inference failed for: r18v0 */
        /* JADX WARN: Type inference failed for: r18v3 */
        /* JADX WARN: Type inference failed for: r8v0, types: [long] */
        /* JADX WARN: Type inference failed for: r8v1 */
        /* JADX WARN: Type inference failed for: r8v2, types: [long] */
        /* JADX WARN: Type inference failed for: r8v3 */
        /* JADX WARN: Type inference failed for: r8v4 */
        /* JADX WARN: Type inference failed for: r8v5 */
        /* JADX WARN: Unknown variable types count: 3 */
        @Override // io.reactivex.internal.operators.flowable.FlowableObserveOn.BaseObserveOnSubscriber
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void runAsync() {
            /*
                Method dump skipped, instructions count: 265
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableObserveOn.ObserveOnSubscriber.runAsync():void");
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableObserveOn.BaseObserveOnSubscriber
        public void runBackfused() {
            int i = 1;
            while (!this.cancelled) {
                boolean z = this.done;
                this.actual.onNext(null);
                if (z) {
                    Throwable th = this.error;
                    if (th != null) {
                        this.actual.onError(th);
                    } else {
                        this.actual.onComplete();
                    }
                    this.worker.dispose();
                    return;
                }
                int addAndGet = addAndGet(-i);
                i = addAndGet;
                if (addAndGet == 0) {
                    return;
                }
            }
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableObserveOn.BaseObserveOnSubscriber
        public void runSync() {
            AbstractC10433c<? super T> cVar = this.actual;
            AbstractC9661j<T> jVar = this.queue;
            long j = this.produced;
            int i = 1;
            while (true) {
                long j2 = this.requested.get();
                while (j != j2) {
                    try {
                        Object obj = (T) jVar.poll();
                        if (!this.cancelled) {
                            if (obj == null) {
                                cVar.onComplete();
                                this.worker.dispose();
                                return;
                            }
                            cVar.onNext(obj);
                            j++;
                        } else {
                            return;
                        }
                    } catch (Throwable th) {
                        C9863a.m1822b(th);
                        this.f38393s.cancel();
                        cVar.onError(th);
                        this.worker.dispose();
                        return;
                    }
                }
                if (!this.cancelled) {
                    if (jVar.isEmpty()) {
                        cVar.onComplete();
                        this.worker.dispose();
                        return;
                    }
                    int i2 = get();
                    if (i == i2) {
                        this.produced = j;
                        int addAndGet = addAndGet(-i);
                        i = addAndGet;
                        if (addAndGet == 0) {
                            return;
                        }
                    } else {
                        i = i2;
                    }
                } else {
                    return;
                }
            }
        }
    }

    public FlowableObserveOn(AbstractC9814e<T> eVar, AbstractC9845s sVar, boolean z, int i) {
        super(eVar);
        this.f38390c = sVar;
        this.f38391d = z;
        this.f38392e = i;
    }

    @Override // p530d.p541c.AbstractC9814e
    /* renamed from: a */
    public void mo213a(AbstractC10433c<? super T> cVar) {
        AbstractC9845s.AbstractC9848c a = this.f38390c.mo1834a();
        if (cVar instanceof AbstractC9652a) {
            this.f36754b.m1965a((AbstractC9829h) new ObserveOnConditionalSubscriber((AbstractC9652a) cVar, a, this.f38391d, this.f38392e));
        } else {
            this.f36754b.m1965a((AbstractC9829h) new ObserveOnSubscriber(cVar, a, this.f38391d, this.f38392e));
        }
    }
}

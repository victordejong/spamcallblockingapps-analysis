package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.Iterator;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9814e;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.p542a0.AbstractC9645h;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p543b0.p546c.AbstractC9658g;
import p530d.p541c.p543b0.p546c.AbstractC9661j;
import p530d.p541c.p543b0.p548e.p550b.AbstractC9677a;
import p530d.p541c.p543b0.p557i.C9800b;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p569y.C9863a;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableFlattenIterable.class */
public final class FlowableFlattenIterable<T, R> extends AbstractC9677a<T, R> {

    /* renamed from: c */
    public final AbstractC9645h<? super T, ? extends Iterable<? extends R>> f38383c;

    /* renamed from: d */
    public final int f38384d;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableFlattenIterable$FlattenIterableSubscriber.class */
    public static final class FlattenIterableSubscriber<T, R> extends BasicIntQueueSubscription<R> implements AbstractC9829h<T> {
        public static final long serialVersionUID = -3096000382929934955L;
        public final AbstractC10433c<? super R> actual;
        public volatile boolean cancelled;
        public int consumed;
        public Iterator<? extends R> current;
        public volatile boolean done;
        public int fusionMode;
        public final int limit;
        public final AbstractC9645h<? super T, ? extends Iterable<? extends R>> mapper;
        public final int prefetch;
        public AbstractC9661j<T> queue;

        /* renamed from: s */
        public AbstractC10434d f38385s;
        public final AtomicReference<Throwable> error = new AtomicReference<>();
        public final AtomicLong requested = new AtomicLong();

        public FlattenIterableSubscriber(AbstractC10433c<? super R> cVar, AbstractC9645h<? super T, ? extends Iterable<? extends R>> hVar, int i) {
            this.actual = cVar;
            this.mapper = hVar;
            this.prefetch = i;
            this.limit = i - (i >> 2);
        }

        @Override // p611j.p612a.AbstractC10434d
        public void cancel() {
            if (!this.cancelled) {
                this.cancelled = true;
                this.f38385s.cancel();
                if (getAndIncrement() == 0) {
                    this.queue.clear();
                }
            }
        }

        public boolean checkTerminated(boolean z, boolean z2, AbstractC10433c<?> cVar, AbstractC9661j<?> jVar) {
            if (this.cancelled) {
                this.current = null;
                jVar.clear();
                return true;
            } else if (!z) {
                return false;
            } else {
                if (this.error.get() != null) {
                    Throwable a = ExceptionHelper.m224a(this.error);
                    this.current = null;
                    jVar.clear();
                    cVar.onError(a);
                    return true;
                } else if (!z2) {
                    return false;
                } else {
                    cVar.onComplete();
                    return true;
                }
            }
        }

        @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
        public void clear() {
            this.current = null;
            this.queue.clear();
        }

        public void consumedOne(boolean z) {
            if (z) {
                int i = this.consumed + 1;
                if (i == this.limit) {
                    this.consumed = 0;
                    this.f38385s.request(i);
                    return;
                }
                this.consumed = i;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r18v0 */
        /* JADX WARN: Type inference failed for: r18v1, types: [long] */
        /* JADX WARN: Type inference failed for: r18v2, types: [long] */
        /* JADX WARN: Type inference failed for: r18v3 */
        /* JADX WARN: Type inference failed for: r6v0, types: [java.util.concurrent.atomic.AtomicInteger, io.reactivex.internal.operators.flowable.FlowableFlattenIterable$FlattenIterableSubscriber<T, R>, io.reactivex.internal.operators.flowable.FlowableFlattenIterable$FlattenIterableSubscriber] */
        /* JADX WARN: Unknown variable types count: 2 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void drain() {
            /*
                Method dump skipped, instructions count: 593
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableFlattenIterable.FlattenIterableSubscriber.drain():void");
        }

        @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
        public boolean isEmpty() {
            return this.current == null && this.queue.isEmpty();
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
            if (this.done || !ExceptionHelper.m223a(this.error, th)) {
                C9815a.m1923b(th);
                return;
            }
            this.done = true;
            drain();
        }

        @Override // p611j.p612a.AbstractC10433c
        public void onNext(T t) {
            if (!this.done) {
                if (this.fusionMode != 0 || this.queue.offer(t)) {
                    drain();
                } else {
                    onError(new MissingBackpressureException("Queue is full?!"));
                }
            }
        }

        @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
        public void onSubscribe(AbstractC10434d dVar) {
            if (SubscriptionHelper.validate(this.f38385s, dVar)) {
                this.f38385s = dVar;
                if (dVar instanceof AbstractC9658g) {
                    AbstractC9658g gVar = (AbstractC9658g) dVar;
                    int requestFusion = gVar.requestFusion(3);
                    if (requestFusion == 1) {
                        this.fusionMode = requestFusion;
                        this.queue = gVar;
                        this.done = true;
                        this.actual.onSubscribe(this);
                        return;
                    } else if (requestFusion == 2) {
                        this.fusionMode = requestFusion;
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
        public R poll() throws Exception {
            Iterator<? extends R> it;
            Iterator<? extends R> it2 = this.current;
            while (true) {
                it = it2;
                if (it2 == null) {
                    T poll = this.queue.poll();
                    if (poll != null) {
                        it = ((Iterable) this.mapper.apply(poll)).iterator();
                        if (it.hasNext()) {
                            this.current = it;
                            break;
                        }
                        it2 = null;
                    } else {
                        return null;
                    }
                } else {
                    break;
                }
            }
            R r = (R) it.next();
            C9650a.m2095a(r, "The iterator returned a null value");
            if (!it.hasNext()) {
                this.current = null;
            }
            return r;
        }

        @Override // p611j.p612a.AbstractC10434d
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                C9800b.m2012a(this.requested, j);
                drain();
            }
        }

        @Override // p530d.p541c.p543b0.p546c.AbstractC9657f
        public int requestFusion(int i) {
            return ((i & 1) == 0 || this.fusionMode != 1) ? 0 : 1;
        }
    }

    public FlowableFlattenIterable(AbstractC9814e<T> eVar, AbstractC9645h<? super T, ? extends Iterable<? extends R>> hVar, int i) {
        super(eVar);
        this.f38383c = hVar;
        this.f38384d = i;
    }

    @Override // p530d.p541c.AbstractC9814e
    /* renamed from: a */
    public void mo213a(AbstractC10433c<? super R> cVar) {
        AbstractC9814e<T> eVar = this.f36754b;
        if (eVar instanceof Callable) {
            try {
                Object call = ((Callable) eVar).call();
                if (call == null) {
                    EmptySubscription.complete(cVar);
                    return;
                }
                try {
                    FlowableFromIterable.m251a(cVar, ((Iterable) this.f38383c.apply(call)).iterator());
                } catch (Throwable th) {
                    C9863a.m1822b(th);
                    EmptySubscription.error(th, cVar);
                }
            } catch (Throwable th2) {
                C9863a.m1822b(th2);
                EmptySubscription.error(th2, cVar);
            }
        } else {
            eVar.m1965a((AbstractC9829h) new FlattenIterableSubscriber(cVar, this.f38383c, this.f38384d));
        }
    }
}

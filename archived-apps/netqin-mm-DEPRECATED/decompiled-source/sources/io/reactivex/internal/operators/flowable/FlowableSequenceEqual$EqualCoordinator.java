package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import p530d.p541c.p542a0.AbstractC9641d;
import p530d.p541c.p543b0.p546c.AbstractC9661j;
import p530d.p541c.p543b0.p548e.p550b.AbstractC9703r;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p569y.C9863a;
import p611j.p612a.AbstractC10432b;
import p611j.p612a.AbstractC10433c;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator.class */
public final class FlowableSequenceEqual$EqualCoordinator<T> extends DeferredScalarSubscription<Boolean> implements AbstractC9703r {
    public static final long serialVersionUID = -6178010334400373240L;
    public final AbstractC9641d<? super T, ? super T> comparer;
    public final FlowableSequenceEqual$EqualSubscriber<T> first;
    public final FlowableSequenceEqual$EqualSubscriber<T> second;

    /* renamed from: v1 */
    public T f38419v1;

    /* renamed from: v2 */
    public T f38420v2;
    public final AtomicInteger wip = new AtomicInteger();
    public final AtomicThrowable error = new AtomicThrowable();

    public FlowableSequenceEqual$EqualCoordinator(AbstractC10433c<? super Boolean> cVar, int i, AbstractC9641d<? super T, ? super T> dVar) {
        super(cVar);
        this.comparer = dVar;
        this.first = new FlowableSequenceEqual$EqualSubscriber<>(this, i);
        this.second = new FlowableSequenceEqual$EqualSubscriber<>(this, i);
    }

    @Override // io.reactivex.internal.subscriptions.DeferredScalarSubscription, p611j.p612a.AbstractC10434d
    public void cancel() {
        super.cancel();
        this.first.cancel();
        this.second.cancel();
        if (this.wip.getAndIncrement() == 0) {
            this.first.clear();
            this.second.clear();
        }
    }

    public void cancelAndClear() {
        this.first.cancel();
        this.first.clear();
        this.second.cancel();
        this.second.clear();
    }

    @Override // p530d.p541c.p543b0.p548e.p550b.AbstractC9703r
    public void drain() {
        int addAndGet;
        if (this.wip.getAndIncrement() == 0) {
            int i = 1;
            do {
                AbstractC9661j<T> jVar = this.first.queue;
                AbstractC9661j<T> jVar2 = this.second.queue;
                if (jVar != null && jVar2 != null) {
                    while (!isCancelled()) {
                        if (this.error.get() != null) {
                            cancelAndClear();
                            this.actual.onError(this.error.terminate());
                            return;
                        }
                        boolean z = this.first.done;
                        T t = this.f38419v1;
                        T t2 = t;
                        if (t == null) {
                            try {
                                t2 = jVar.poll();
                                this.f38419v1 = t2;
                            } catch (Throwable th) {
                                C9863a.m1822b(th);
                                cancelAndClear();
                                this.error.addThrowable(th);
                                this.actual.onError(this.error.terminate());
                                return;
                            }
                        }
                        boolean z2 = t2 == null;
                        boolean z3 = this.second.done;
                        T t3 = this.f38420v2;
                        T t4 = t3;
                        if (t3 == null) {
                            try {
                                t4 = jVar2.poll();
                                this.f38420v2 = t4;
                            } catch (Throwable th2) {
                                C9863a.m1822b(th2);
                                cancelAndClear();
                                this.error.addThrowable(th2);
                                this.actual.onError(this.error.terminate());
                                return;
                            }
                        }
                        boolean z4 = t4 == null;
                        if (z && z3 && z2 && z4) {
                            complete(true);
                            return;
                        } else if (z && z3 && z2 != z4) {
                            cancelAndClear();
                            complete(false);
                            return;
                        } else if (!z2 && !z4) {
                            try {
                                if (!this.comparer.mo2094a(t2, t4)) {
                                    cancelAndClear();
                                    complete(false);
                                    return;
                                }
                                this.f38419v1 = null;
                                this.f38420v2 = null;
                                this.first.request();
                                this.second.request();
                            } catch (Throwable th3) {
                                C9863a.m1822b(th3);
                                cancelAndClear();
                                this.error.addThrowable(th3);
                                this.actual.onError(this.error.terminate());
                                return;
                            }
                        }
                    }
                    this.first.clear();
                    this.second.clear();
                    return;
                } else if (isCancelled()) {
                    this.first.clear();
                    this.second.clear();
                    return;
                } else if (this.error.get() != null) {
                    cancelAndClear();
                    this.actual.onError(this.error.terminate());
                    return;
                }
                addAndGet = this.wip.addAndGet(-i);
                i = addAndGet;
            } while (addAndGet != 0);
        }
    }

    @Override // p530d.p541c.p543b0.p548e.p550b.AbstractC9703r
    public void innerError(Throwable th) {
        if (this.error.addThrowable(th)) {
            drain();
        } else {
            C9815a.m1923b(th);
        }
    }

    public void subscribe(AbstractC10432b<? extends T> bVar, AbstractC10432b<? extends T> bVar2) {
        bVar.subscribe(this.first);
        bVar2.subscribe(this.second);
    }
}

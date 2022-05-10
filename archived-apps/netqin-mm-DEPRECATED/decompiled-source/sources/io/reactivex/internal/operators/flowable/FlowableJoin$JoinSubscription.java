package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9814e;
import p530d.p541c.p542a0.AbstractC9640c;
import p530d.p541c.p542a0.AbstractC9645h;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p543b0.p546c.AbstractC9661j;
import p530d.p541c.p543b0.p548e.p550b.AbstractC9692j;
import p530d.p541c.p543b0.p554f.C9772a;
import p530d.p541c.p543b0.p557i.C9800b;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.C9860a;
import p530d.p541c.p569y.C9863a;
import p611j.p612a.AbstractC10432b;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableJoin$JoinSubscription.class */
public final class FlowableJoin$JoinSubscription<TLeft, TRight, TLeftEnd, TRightEnd, R> extends AtomicInteger implements AbstractC10434d, AbstractC9692j {
    public static final long serialVersionUID = -6071216598687999801L;
    public final AbstractC10433c<? super R> actual;
    public volatile boolean cancelled;
    public final AbstractC9645h<? super TLeft, ? extends AbstractC10432b<TLeftEnd>> leftEnd;
    public int leftIndex;
    public final AbstractC9640c<? super TLeft, ? super TRight, ? extends R> resultSelector;
    public final AbstractC9645h<? super TRight, ? extends AbstractC10432b<TRightEnd>> rightEnd;
    public int rightIndex;
    public static final Integer LEFT_VALUE = 1;
    public static final Integer RIGHT_VALUE = 2;
    public static final Integer LEFT_CLOSE = 3;
    public static final Integer RIGHT_CLOSE = 4;
    public final AtomicLong requested = new AtomicLong();
    public final C9860a disposables = new C9860a();
    public final C9772a<Object> queue = new C9772a<>(AbstractC9814e.m1946g());
    public final Map<Integer, TLeft> lefts = new LinkedHashMap();
    public final Map<Integer, TRight> rights = new LinkedHashMap();
    public final AtomicReference<Throwable> error = new AtomicReference<>();
    public final AtomicInteger active = new AtomicInteger(2);

    public FlowableJoin$JoinSubscription(AbstractC10433c<? super R> cVar, AbstractC9645h<? super TLeft, ? extends AbstractC10432b<TLeftEnd>> hVar, AbstractC9645h<? super TRight, ? extends AbstractC10432b<TRightEnd>> hVar2, AbstractC9640c<? super TLeft, ? super TRight, ? extends R> cVar2) {
        this.actual = cVar;
        this.leftEnd = hVar;
        this.rightEnd = hVar2;
        this.resultSelector = cVar2;
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
        if (!this.cancelled) {
            this.cancelled = true;
            cancelAll();
            if (getAndIncrement() == 0) {
                this.queue.clear();
            }
        }
    }

    public void cancelAll() {
        this.disposables.dispose();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void drain() {
        if (getAndIncrement() == 0) {
            C9772a<Object> aVar = this.queue;
            AbstractC10433c<? super R> cVar = this.actual;
            int i = 1;
            while (!this.cancelled) {
                if (this.error.get() != null) {
                    aVar.clear();
                    cancelAll();
                    errorAll(cVar);
                    return;
                }
                boolean z = this.active.get() == 0;
                Integer num = (Integer) aVar.poll();
                boolean z2 = num == null;
                if (z && z2) {
                    this.lefts.clear();
                    this.rights.clear();
                    this.disposables.dispose();
                    cVar.onComplete();
                    return;
                } else if (z2) {
                    int addAndGet = addAndGet(-i);
                    i = addAndGet;
                    if (addAndGet == 0) {
                        return;
                    }
                } else {
                    Object poll = aVar.poll();
                    if (num == LEFT_VALUE) {
                        int i2 = this.leftIndex;
                        this.leftIndex = i2 + 1;
                        this.lefts.put(Integer.valueOf(i2), poll);
                        try {
                            Object apply = this.leftEnd.apply(poll);
                            C9650a.m2095a(apply, "The leftEnd returned a null Publisher");
                            AbstractC10432b bVar = (AbstractC10432b) apply;
                            FlowableGroupJoin$LeftRightEndSubscriber flowableGroupJoin$LeftRightEndSubscriber = new FlowableGroupJoin$LeftRightEndSubscriber(this, true, i2);
                            this.disposables.mo1828b(flowableGroupJoin$LeftRightEndSubscriber);
                            bVar.subscribe(flowableGroupJoin$LeftRightEndSubscriber);
                            if (this.error.get() != null) {
                                aVar.clear();
                                cancelAll();
                                errorAll(cVar);
                                return;
                            }
                            long j = this.requested.get();
                            long j2 = 0;
                            for (TRight tright : this.rights.values()) {
                                try {
                                    Object obj = (Object) this.resultSelector.apply(poll, tright);
                                    C9650a.m2095a(obj, "The resultSelector returned a null value");
                                    if (j2 != j) {
                                        cVar.onNext(obj);
                                        j2++;
                                    } else {
                                        ExceptionHelper.m223a(this.error, new MissingBackpressureException("Could not emit value due to lack of requests"));
                                        aVar.clear();
                                        cancelAll();
                                        errorAll(cVar);
                                        return;
                                    }
                                } catch (Throwable th) {
                                    fail(th, cVar, aVar);
                                    return;
                                }
                            }
                            if (j2 != 0) {
                                C9800b.m2009c(this.requested, j2);
                            }
                        } catch (Throwable th2) {
                            fail(th2, cVar, aVar);
                            return;
                        }
                    } else if (num == RIGHT_VALUE) {
                        int i3 = this.rightIndex;
                        this.rightIndex = i3 + 1;
                        this.rights.put(Integer.valueOf(i3), poll);
                        try {
                            Object apply2 = this.rightEnd.apply(poll);
                            C9650a.m2095a(apply2, "The rightEnd returned a null Publisher");
                            AbstractC10432b bVar2 = (AbstractC10432b) apply2;
                            FlowableGroupJoin$LeftRightEndSubscriber flowableGroupJoin$LeftRightEndSubscriber2 = new FlowableGroupJoin$LeftRightEndSubscriber(this, false, i3);
                            this.disposables.mo1828b(flowableGroupJoin$LeftRightEndSubscriber2);
                            bVar2.subscribe(flowableGroupJoin$LeftRightEndSubscriber2);
                            if (this.error.get() != null) {
                                aVar.clear();
                                cancelAll();
                                errorAll(cVar);
                                return;
                            }
                            long j3 = this.requested.get();
                            long j4 = 0;
                            for (TLeft tleft : this.lefts.values()) {
                                try {
                                    Object obj2 = (Object) this.resultSelector.apply(tleft, poll);
                                    C9650a.m2095a(obj2, "The resultSelector returned a null value");
                                    if (j4 != j3) {
                                        cVar.onNext(obj2);
                                        j4++;
                                    } else {
                                        ExceptionHelper.m223a(this.error, new MissingBackpressureException("Could not emit value due to lack of requests"));
                                        aVar.clear();
                                        cancelAll();
                                        errorAll(cVar);
                                        return;
                                    }
                                } catch (Throwable th3) {
                                    fail(th3, cVar, aVar);
                                    return;
                                }
                            }
                            if (j4 != 0) {
                                C9800b.m2009c(this.requested, j4);
                            }
                        } catch (Throwable th4) {
                            fail(th4, cVar, aVar);
                            return;
                        }
                    } else if (num == LEFT_CLOSE) {
                        FlowableGroupJoin$LeftRightEndSubscriber flowableGroupJoin$LeftRightEndSubscriber3 = (FlowableGroupJoin$LeftRightEndSubscriber) poll;
                        this.lefts.remove(Integer.valueOf(flowableGroupJoin$LeftRightEndSubscriber3.index));
                        this.disposables.mo1829a(flowableGroupJoin$LeftRightEndSubscriber3);
                    } else if (num == RIGHT_CLOSE) {
                        FlowableGroupJoin$LeftRightEndSubscriber flowableGroupJoin$LeftRightEndSubscriber4 = (FlowableGroupJoin$LeftRightEndSubscriber) poll;
                        this.rights.remove(Integer.valueOf(flowableGroupJoin$LeftRightEndSubscriber4.index));
                        this.disposables.mo1829a(flowableGroupJoin$LeftRightEndSubscriber4);
                    }
                }
            }
            aVar.clear();
        }
    }

    public void errorAll(AbstractC10433c<?> cVar) {
        Throwable a = ExceptionHelper.m224a(this.error);
        this.lefts.clear();
        this.rights.clear();
        cVar.onError(a);
    }

    public void fail(Throwable th, AbstractC10433c<?> cVar, AbstractC9661j<?> jVar) {
        C9863a.m1822b(th);
        ExceptionHelper.m223a(this.error, th);
        jVar.clear();
        cancelAll();
        errorAll(cVar);
    }

    @Override // p530d.p541c.p543b0.p548e.p550b.AbstractC9692j
    public void innerClose(boolean z, FlowableGroupJoin$LeftRightEndSubscriber flowableGroupJoin$LeftRightEndSubscriber) {
        synchronized (this) {
            this.queue.m2065a(z ? LEFT_CLOSE : RIGHT_CLOSE, (Integer) flowableGroupJoin$LeftRightEndSubscriber);
        }
        drain();
    }

    @Override // p530d.p541c.p543b0.p548e.p550b.AbstractC9692j
    public void innerCloseError(Throwable th) {
        if (ExceptionHelper.m223a(this.error, th)) {
            drain();
        } else {
            C9815a.m1923b(th);
        }
    }

    @Override // p530d.p541c.p543b0.p548e.p550b.AbstractC9692j
    public void innerComplete(FlowableGroupJoin$LeftRightSubscriber flowableGroupJoin$LeftRightSubscriber) {
        this.disposables.mo1827c(flowableGroupJoin$LeftRightSubscriber);
        this.active.decrementAndGet();
        drain();
    }

    @Override // p530d.p541c.p543b0.p548e.p550b.AbstractC9692j
    public void innerError(Throwable th) {
        if (ExceptionHelper.m223a(this.error, th)) {
            this.active.decrementAndGet();
            drain();
            return;
        }
        C9815a.m1923b(th);
    }

    @Override // p530d.p541c.p543b0.p548e.p550b.AbstractC9692j
    public void innerValue(boolean z, Object obj) {
        synchronized (this) {
            this.queue.m2065a(z ? LEFT_VALUE : RIGHT_VALUE, (Integer) obj);
        }
        drain();
    }

    @Override // p611j.p612a.AbstractC10434d
    public void request(long j) {
        if (SubscriptionHelper.validate(j)) {
            C9800b.m2012a(this.requested, j);
        }
    }
}

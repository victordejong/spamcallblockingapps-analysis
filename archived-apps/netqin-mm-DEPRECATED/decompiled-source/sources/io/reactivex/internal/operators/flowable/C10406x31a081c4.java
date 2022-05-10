package io.reactivex.internal.operators.flowable;

import io.reactivex.BackpressureOverflowStrategy;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.p542a0.AbstractC9638a;
import p530d.p541c.p543b0.p548e.p550b.C9697m;
import p530d.p541c.p543b0.p557i.C9800b;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p569y.C9863a;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* renamed from: io.reactivex.internal.operators.flowable.FlowableOnBackpressureBufferStrategy$OnBackpressureBufferStrategySubscriber */
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableOnBackpressureBufferStrategy$OnBackpressureBufferStrategySubscriber.class */
public final class C10406x31a081c4<T> extends AtomicInteger implements AbstractC9829h<T>, AbstractC10434d {
    public static final long serialVersionUID = 3240706908776709697L;
    public final AbstractC10433c<? super T> actual;
    public final long bufferSize;
    public volatile boolean cancelled;
    public volatile boolean done;
    public Throwable error;
    public final AbstractC9638a onOverflow;

    /* renamed from: s */
    public AbstractC10434d f38399s;
    public final BackpressureOverflowStrategy strategy;
    public final AtomicLong requested = new AtomicLong();
    public final Deque<T> deque = new ArrayDeque();

    public C10406x31a081c4(AbstractC10433c<? super T> cVar, AbstractC9638a aVar, BackpressureOverflowStrategy backpressureOverflowStrategy, long j) {
        this.actual = cVar;
        this.onOverflow = aVar;
        this.strategy = backpressureOverflowStrategy;
        this.bufferSize = j;
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
        this.cancelled = true;
        this.f38399s.cancel();
        if (getAndIncrement() == 0) {
            clear(this.deque);
        }
    }

    public void clear(Deque<T> deque) {
        synchronized (deque) {
            deque.clear();
        }
    }

    public void drain() {
        int addAndGet;
        boolean isEmpty;
        T poll;
        if (getAndIncrement() == 0) {
            Deque<T> deque = this.deque;
            AbstractC10433c<? super T> cVar = this.actual;
            int i = 1;
            do {
                long j = this.requested.get();
                long j2 = 0;
                while (j2 != j) {
                    if (this.cancelled) {
                        clear(deque);
                        return;
                    }
                    boolean z = this.done;
                    synchronized (deque) {
                        poll = deque.poll();
                    }
                    boolean z2 = poll == null;
                    if (z) {
                        Throwable th = this.error;
                        if (th != null) {
                            clear(deque);
                            cVar.onError(th);
                            return;
                        } else if (z2) {
                            cVar.onComplete();
                            return;
                        }
                    }
                    if (z2) {
                        break;
                    }
                    cVar.onNext(poll);
                    j2++;
                }
                if (j2 == j) {
                    if (this.cancelled) {
                        clear(deque);
                        return;
                    }
                    boolean z3 = this.done;
                    synchronized (deque) {
                        isEmpty = deque.isEmpty();
                    }
                    if (z3) {
                        Throwable th2 = this.error;
                        if (th2 != null) {
                            clear(deque);
                            cVar.onError(th2);
                            return;
                        } else if (isEmpty) {
                            cVar.onComplete();
                            return;
                        }
                    }
                }
                if (j2 != 0) {
                    C9800b.m2009c(this.requested, j2);
                }
                addAndGet = addAndGet(-i);
                i = addAndGet;
            } while (addAndGet != 0);
        }
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        this.done = true;
        drain();
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        if (this.done) {
            C9815a.m1923b(th);
            return;
        }
        this.error = th;
        this.done = true;
        drain();
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        boolean z;
        boolean z2;
        if (!this.done) {
            Deque<T> deque = this.deque;
            synchronized (deque) {
                z = false;
                z = false;
                z2 = true;
                if (deque.size() == this.bufferSize) {
                    int i = C9697m.f36786a[this.strategy.ordinal()];
                    if (i == 1) {
                        deque.pollLast();
                        deque.offer(t);
                    } else if (i == 2) {
                        deque.poll();
                        deque.offer(t);
                    }
                    z = true;
                } else {
                    deque.offer(t);
                }
                z2 = false;
            }
            if (z) {
                AbstractC9638a aVar = this.onOverflow;
                if (aVar != null) {
                    try {
                        aVar.run();
                    } catch (Throwable th) {
                        C9863a.m1822b(th);
                        this.f38399s.cancel();
                        onError(th);
                    }
                }
            } else if (z2) {
                this.f38399s.cancel();
                onError(new MissingBackpressureException());
            } else {
                drain();
            }
        }
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        if (SubscriptionHelper.validate(this.f38399s, dVar)) {
            this.f38399s = dVar;
            this.actual.onSubscribe(this);
            dVar.request(Long.MAX_VALUE);
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

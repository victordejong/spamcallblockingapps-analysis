package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.NotificationLite;
import java.util.concurrent.atomic.AtomicLong;
import p530d.p541c.AbstractC9836k;
import p530d.p541c.p543b0.p548e.p551c.AbstractC9731n;
import p530d.p541c.p543b0.p557i.C9800b;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p568x.C9860a;
import p611j.p612a.AbstractC10433c;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeMergeArray$MergeMaybeObserver.class */
public final class MaybeMergeArray$MergeMaybeObserver<T> extends BasicIntQueueSubscription<T> implements AbstractC9836k<T> {
    public static final long serialVersionUID = -660395290758764731L;
    public final AbstractC10433c<? super T> actual;
    public volatile boolean cancelled;
    public long consumed;
    public boolean outputFused;
    public final AbstractC9731n<Object> queue;
    public final int sourceCount;
    public final C9860a set = new C9860a();
    public final AtomicLong requested = new AtomicLong();
    public final AtomicThrowable error = new AtomicThrowable();

    public MaybeMergeArray$MergeMaybeObserver(AbstractC10433c<? super T> cVar, int i, AbstractC9731n<Object> nVar) {
        this.actual = cVar;
        this.sourceCount = i;
        this.queue = nVar;
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
        if (!this.cancelled) {
            this.cancelled = true;
            this.set.dispose();
            if (getAndIncrement() == 0) {
                this.queue.clear();
            }
        }
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public void clear() {
        this.queue.clear();
    }

    public void drain() {
        if (getAndIncrement() == 0) {
            if (this.outputFused) {
                drainFused();
            } else {
                drainNormal();
            }
        }
    }

    public void drainFused() {
        AbstractC10433c<? super T> cVar = this.actual;
        AbstractC9731n<Object> nVar = this.queue;
        int i = 1;
        while (!this.cancelled) {
            Throwable th = this.error.get();
            if (th != null) {
                nVar.clear();
                cVar.onError(th);
                return;
            }
            boolean z = nVar.producerIndex() == this.sourceCount;
            if (!nVar.isEmpty()) {
                cVar.onNext(null);
            }
            if (z) {
                cVar.onComplete();
                return;
            }
            int addAndGet = addAndGet(-i);
            i = addAndGet;
            if (addAndGet == 0) {
                return;
            }
        }
        nVar.clear();
    }

    public void drainNormal() {
        int addAndGet;
        AbstractC10433c<? super T> cVar = this.actual;
        AbstractC9731n<Object> nVar = this.queue;
        long j = this.consumed;
        int i = 1;
        do {
            long j2 = this.requested.get();
            while (j != j2) {
                if (this.cancelled) {
                    nVar.clear();
                    return;
                } else if (this.error.get() != null) {
                    nVar.clear();
                    cVar.onError(this.error.terminate());
                    return;
                } else if (nVar.consumerIndex() == this.sourceCount) {
                    cVar.onComplete();
                    return;
                } else {
                    Object poll = nVar.poll();
                    if (poll == null) {
                        break;
                    } else if (poll != NotificationLite.COMPLETE) {
                        cVar.onNext(poll);
                        j++;
                    }
                }
            }
            if (j == j2) {
                if (this.error.get() != null) {
                    nVar.clear();
                    cVar.onError(this.error.terminate());
                    return;
                }
                while (nVar.peek() == NotificationLite.COMPLETE) {
                    nVar.drop();
                }
                if (nVar.consumerIndex() == this.sourceCount) {
                    cVar.onComplete();
                    return;
                }
            }
            this.consumed = j;
            addAndGet = addAndGet(-i);
            i = addAndGet;
        } while (addAndGet != 0);
    }

    public boolean isCancelled() {
        return this.cancelled;
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public boolean isEmpty() {
        return this.queue.isEmpty();
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onComplete() {
        this.queue.offer(NotificationLite.COMPLETE);
        drain();
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onError(Throwable th) {
        if (this.error.addThrowable(th)) {
            this.set.dispose();
            this.queue.offer(NotificationLite.COMPLETE);
            drain();
            return;
        }
        C9815a.m1923b(th);
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onSubscribe(AbstractC9861b bVar) {
        this.set.mo1828b(bVar);
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onSuccess(T t) {
        this.queue.offer(t);
        drain();
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public T poll() throws Exception {
        T t;
        do {
            t = (T) this.queue.poll();
        } while (t == NotificationLite.COMPLETE);
        return t;
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
        if ((i & 2) == 0) {
            return 0;
        }
        this.outputFused = true;
        return 2;
    }
}

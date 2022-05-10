package io.reactivex.internal.operators.parallel;

import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import p530d.p541c.AbstractC9845s;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelRunOn$RunOnSubscriber.class */
public final class ParallelRunOn$RunOnSubscriber<T> extends ParallelRunOn$BaseRunOnSubscriber<T> {
    public static final long serialVersionUID = 1075119423897941642L;
    public final AbstractC10433c<? super T> actual;

    public ParallelRunOn$RunOnSubscriber(AbstractC10433c<? super T> cVar, int i, SpscArrayQueue<T> spscArrayQueue, AbstractC9845s.AbstractC9848c cVar2) {
        super(i, spscArrayQueue, cVar2);
        this.actual = cVar;
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        if (SubscriptionHelper.validate(this.f38542s, dVar)) {
            this.f38542s = dVar;
            this.actual.onSubscribe(this);
            dVar.request(this.prefetch);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        Throwable th;
        int i = this.consumed;
        SpscArrayQueue<T> spscArrayQueue = this.queue;
        AbstractC10433c<? super T> cVar = this.actual;
        int i2 = this.limit;
        int i3 = 1;
        while (true) {
            long j = this.requested.get();
            long j2 = 0;
            while (j2 != j) {
                if (this.cancelled) {
                    spscArrayQueue.clear();
                    return;
                }
                boolean z = this.done;
                if (!z || (th = this.error) == null) {
                    T poll = spscArrayQueue.poll();
                    boolean z2 = poll == null;
                    if (z && z2) {
                        cVar.onComplete();
                        this.worker.dispose();
                        return;
                    } else if (z2) {
                        break;
                    } else {
                        cVar.onNext(poll);
                        j2++;
                        i++;
                        if (i == i2) {
                            this.f38542s.request(i);
                            i = 0;
                        }
                    }
                } else {
                    spscArrayQueue.clear();
                    cVar.onError(th);
                    this.worker.dispose();
                    return;
                }
            }
            if (j2 == j) {
                if (this.cancelled) {
                    spscArrayQueue.clear();
                    return;
                } else if (this.done) {
                    Throwable th2 = this.error;
                    if (th2 != null) {
                        spscArrayQueue.clear();
                        cVar.onError(th2);
                        this.worker.dispose();
                        return;
                    } else if (spscArrayQueue.isEmpty()) {
                        cVar.onComplete();
                        this.worker.dispose();
                        return;
                    }
                }
            }
            if (!(j2 == 0 || j == Long.MAX_VALUE)) {
                this.requested.addAndGet(-j2);
            }
            int i4 = get();
            i3 = i4;
            if (i4 == i3) {
                this.consumed = i;
                int addAndGet = addAndGet(-i3);
                i3 = addAndGet;
                if (addAndGet == 0) {
                    return;
                }
            }
        }
    }
}

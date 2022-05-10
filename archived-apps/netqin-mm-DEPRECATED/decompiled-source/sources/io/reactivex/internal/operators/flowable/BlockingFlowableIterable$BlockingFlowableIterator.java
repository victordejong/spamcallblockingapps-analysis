package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.p543b0.p557i.C9801c;
import p530d.p541c.p568x.AbstractC9861b;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/BlockingFlowableIterable$BlockingFlowableIterator.class */
public final class BlockingFlowableIterable$BlockingFlowableIterator<T> extends AtomicReference<AbstractC10434d> implements AbstractC9829h<T>, Iterator<T>, Runnable, AbstractC9861b {
    public static final long serialVersionUID = 6695226475494099826L;
    public final long batchSize;
    public final Condition condition;
    public volatile boolean done;
    public Throwable error;
    public final long limit;
    public final Lock lock;
    public long produced;
    public final SpscArrayQueue<T> queue;

    public BlockingFlowableIterable$BlockingFlowableIterator(int i) {
        this.queue = new SpscArrayQueue<>(i);
        this.batchSize = i;
        this.limit = i - (i >> 2);
        ReentrantLock reentrantLock = new ReentrantLock();
        this.lock = reentrantLock;
        this.condition = reentrantLock.newCondition();
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        SubscriptionHelper.cancel(this);
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        while (true) {
            boolean z = this.done;
            boolean isEmpty = this.queue.isEmpty();
            if (z) {
                Throwable th = this.error;
                if (th != null) {
                    throw ExceptionHelper.m222b(th);
                } else if (isEmpty) {
                    return false;
                }
            }
            if (!isEmpty) {
                return true;
            }
            C9801c.m2007a();
            this.lock.lock();
            while (!this.done && this.queue.isEmpty()) {
                try {
                    try {
                        this.condition.await();
                    } catch (InterruptedException e) {
                        run();
                        throw ExceptionHelper.m222b(e);
                    }
                } finally {
                    this.lock.unlock();
                }
            }
        }
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return SubscriptionHelper.isCancelled(get());
    }

    @Override // java.util.Iterator
    public T next() {
        if (hasNext()) {
            T poll = this.queue.poll();
            long j = this.produced + 1;
            if (j == this.limit) {
                this.produced = 0L;
                get().request(j);
            } else {
                this.produced = j;
            }
            return poll;
        }
        throw new NoSuchElementException();
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        this.done = true;
        signalConsumer();
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        this.error = th;
        this.done = true;
        signalConsumer();
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        if (!this.queue.offer(t)) {
            SubscriptionHelper.cancel(this);
            onError(new MissingBackpressureException("Queue full?!"));
            return;
        }
        signalConsumer();
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        SubscriptionHelper.setOnce(this, dVar, this.batchSize);
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("remove");
    }

    @Override // java.lang.Runnable
    public void run() {
        SubscriptionHelper.cancel(this);
        signalConsumer();
    }

    public void signalConsumer() {
        this.lock.lock();
        try {
            this.condition.signalAll();
        } finally {
            this.lock.unlock();
        }
    }
}

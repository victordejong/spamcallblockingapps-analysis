package io.fabric.sdk.android.services.concurrency;

import io.fabric.sdk.android.services.concurrency.Dependency;
import io.fabric.sdk.android.services.concurrency.PriorityProvider;
import io.fabric.sdk.android.services.concurrency.Task;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Queue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;
/* loaded from: classes2-dex2jar.jar:io/fabric/sdk/android/services/concurrency/DependencyPriorityBlockingQueue.class */
public class DependencyPriorityBlockingQueue<E extends Dependency & Task & PriorityProvider> extends PriorityBlockingQueue<E> {
    static final int PEEK = 1;
    static final int POLL = 2;
    static final int POLL_WITH_TIMEOUT = 3;
    static final int TAKE = 0;
    final Queue<E> blockedQueue = new LinkedList();
    private final ReentrantLock lock = new ReentrantLock();

    boolean canProcess(E e) {
        return e.areDependenciesMet();
    }

    @Override // java.util.concurrent.PriorityBlockingQueue, java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
    public void clear() {
        try {
            this.lock.lock();
            this.blockedQueue.clear();
            super.clear();
        } finally {
            this.lock.unlock();
        }
    }

    <T> T[] concatenate(T[] tArr, T[] tArr2) {
        int length = tArr.length;
        int length2 = tArr2.length;
        T[] tArr3 = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), length + length2));
        System.arraycopy(tArr, 0, tArr3, 0, length);
        System.arraycopy(tArr2, 0, tArr3, length, length2);
        return tArr3;
    }

    @Override // java.util.concurrent.PriorityBlockingQueue, java.util.AbstractCollection, java.util.Collection, java.util.concurrent.BlockingQueue
    public boolean contains(Object obj) {
        boolean z;
        try {
            this.lock.lock();
            if (!super.contains(obj)) {
                if (!this.blockedQueue.contains(obj)) {
                    z = false;
                    return z;
                }
            }
            z = true;
            return z;
        } finally {
            this.lock.unlock();
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.util.concurrent.PriorityBlockingQueue, java.util.concurrent.BlockingQueue
    public int drainTo(Collection<? super E> collection) {
        try {
            this.lock.lock();
            int drainTo = super.drainTo(collection);
            int size = this.blockedQueue.size();
            while (!this.blockedQueue.isEmpty()) {
                collection.add(this.blockedQueue.poll());
            }
            this.lock.unlock();
            return drainTo + size;
        } catch (Throwable th) {
            this.lock.unlock();
            throw th;
        }
    }

    @Override // java.util.concurrent.PriorityBlockingQueue, java.util.concurrent.BlockingQueue
    public int drainTo(Collection<? super E> collection, int i) {
        try {
            this.lock.lock();
            int drainTo = super.drainTo(collection, i);
            while (!this.blockedQueue.isEmpty() && drainTo <= i) {
                collection.add(this.blockedQueue.poll());
                drainTo++;
            }
            return drainTo;
        } finally {
            this.lock.unlock();
        }
    }

    E get(int i, Long l, TimeUnit timeUnit) throws InterruptedException {
        E performOperation;
        while (true) {
            performOperation = performOperation(i, l, timeUnit);
            if (performOperation == null || canProcess(performOperation)) {
                break;
            }
            offerBlockedResult(i, performOperation);
        }
        return performOperation;
    }

    boolean offerBlockedResult(int i, E e) {
        try {
            this.lock.lock();
            if (i == 1) {
                super.remove(e);
            }
            return this.blockedQueue.offer(e);
        } finally {
            this.lock.unlock();
        }
    }

    @Override // java.util.concurrent.PriorityBlockingQueue, java.util.Queue
    public E peek() {
        try {
            return get(1, null, null);
        } catch (InterruptedException e) {
            return null;
        }
    }

    E performOperation(int i, Long l, TimeUnit timeUnit) throws InterruptedException {
        E e;
        switch (i) {
            case 0:
                e = (E) ((Dependency) super.take());
                break;
            case 1:
                e = (E) ((Dependency) super.peek());
                break;
            case 2:
                e = (E) ((Dependency) super.poll());
                break;
            case 3:
                e = (E) ((Dependency) super.poll(l.longValue(), timeUnit));
                break;
            default:
                return null;
        }
        return e;
    }

    @Override // java.util.concurrent.PriorityBlockingQueue, java.util.Queue
    public E poll() {
        try {
            return get(2, null, null);
        } catch (InterruptedException e) {
            return null;
        }
    }

    @Override // java.util.concurrent.PriorityBlockingQueue, java.util.concurrent.BlockingQueue
    public E poll(long j, TimeUnit timeUnit) throws InterruptedException {
        return get(3, Long.valueOf(j), timeUnit);
    }

    public void recycleBlockedQueue() {
        try {
            this.lock.lock();
            Iterator<E> it = this.blockedQueue.iterator();
            while (it.hasNext()) {
                E next = it.next();
                if (canProcess(next)) {
                    super.offer(next);
                    it.remove();
                }
            }
        } finally {
            this.lock.unlock();
        }
    }

    @Override // java.util.concurrent.PriorityBlockingQueue, java.util.AbstractCollection, java.util.Collection, java.util.concurrent.BlockingQueue
    public boolean remove(Object obj) {
        boolean z;
        try {
            this.lock.lock();
            if (!super.remove(obj)) {
                if (!this.blockedQueue.remove(obj)) {
                    z = false;
                    return z;
                }
            }
            z = true;
            return z;
        } finally {
            this.lock.unlock();
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        try {
            this.lock.lock();
            boolean removeAll = super.removeAll(collection);
            boolean removeAll2 = this.blockedQueue.removeAll(collection);
            this.lock.unlock();
            return removeAll2 | removeAll;
        } catch (Throwable th) {
            this.lock.unlock();
            throw th;
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.util.concurrent.PriorityBlockingQueue, java.util.AbstractCollection, java.util.Collection
    public int size() {
        try {
            this.lock.lock();
            int size = this.blockedQueue.size();
            int size2 = super.size();
            this.lock.unlock();
            return size + size2;
        } catch (Throwable th) {
            this.lock.unlock();
            throw th;
        }
    }

    @Override // java.util.concurrent.PriorityBlockingQueue, java.util.concurrent.BlockingQueue
    public E take() throws InterruptedException {
        return get(0, null, null);
    }

    @Override // java.util.concurrent.PriorityBlockingQueue, java.util.AbstractCollection, java.util.Collection
    public Object[] toArray() {
        try {
            this.lock.lock();
            return concatenate(super.toArray(), this.blockedQueue.toArray());
        } finally {
            this.lock.unlock();
        }
    }

    @Override // java.util.concurrent.PriorityBlockingQueue, java.util.AbstractCollection, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        try {
            this.lock.lock();
            return (T[]) concatenate(super.toArray(tArr), this.blockedQueue.toArray(tArr));
        } finally {
            this.lock.unlock();
        }
    }
}

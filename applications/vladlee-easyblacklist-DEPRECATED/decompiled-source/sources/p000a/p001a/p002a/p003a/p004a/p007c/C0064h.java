package p000a.p001a.p002a.p003a.p004a.p007c;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Queue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;
import p000a.p001a.p002a.p003a.p004a.p007c.AbstractC0063g;
import p000a.p001a.p002a.p003a.p004a.p007c.AbstractC0072o;
import p000a.p001a.p002a.p003a.p004a.p007c.AbstractC0076r;
/* renamed from: a.a.a.a.a.c.h */
/* loaded from: classes-dex2jar.jar:a/a/a/a/a/c/h.class */
public final class C0064h<E extends AbstractC0063g & AbstractC0076r & AbstractC0072o> extends PriorityBlockingQueue<E> {

    /* renamed from: a */
    final Queue<E> f139a = new LinkedList();

    /* renamed from: b */
    private final ReentrantLock f140b = new ReentrantLock();

    /* renamed from: a */
    private E m10267a(int i, Long l, TimeUnit timeUnit) {
        Object obj;
        if (i == 0) {
            obj = super.take();
        } else if (i == 1) {
            obj = super.peek();
        } else if (i == 2) {
            obj = super.poll();
        } else if (i != 3) {
            return null;
        } else {
            obj = super.poll(l.longValue(), timeUnit);
        }
        return (E) ((AbstractC0063g) obj);
    }

    /* renamed from: a */
    private boolean m10268a(int i, E e) {
        try {
            this.f140b.lock();
            if (i == 1) {
                super.remove(e);
            }
            return this.f139a.offer(e);
        } finally {
            this.f140b.unlock();
        }
    }

    /* renamed from: a */
    private static <T> T[] m10266a(T[] tArr, T[] tArr2) {
        int length = tArr.length;
        int length2 = tArr2.length;
        T[] tArr3 = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), length + length2));
        System.arraycopy(tArr, 0, tArr3, 0, length);
        System.arraycopy(tArr2, 0, tArr3, length, length2);
        return tArr3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public E peek() {
        try {
            return m10264b(1, null, null);
        } catch (InterruptedException e) {
            return null;
        }
    }

    /* renamed from: b */
    private E m10264b(int i, Long l, TimeUnit timeUnit) {
        E a;
        while (true) {
            a = m10267a(i, l, timeUnit);
            if (a == null || a.areDependenciesMet()) {
                break;
            }
            m10268a(i, (int) a);
        }
        return a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public E poll() {
        try {
            return m10264b(2, null, null);
        } catch (InterruptedException e) {
            return null;
        }
    }

    /* renamed from: a */
    public final void m10269a() {
        try {
            this.f140b.lock();
            Iterator<E> it = this.f139a.iterator();
            while (it.hasNext()) {
                E next = it.next();
                if (next.areDependenciesMet()) {
                    super.offer(next);
                    it.remove();
                }
            }
        } finally {
            this.f140b.unlock();
        }
    }

    @Override // java.util.concurrent.PriorityBlockingQueue, java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        try {
            this.f140b.lock();
            this.f139a.clear();
            super.clear();
        } finally {
            this.f140b.unlock();
        }
    }

    @Override // java.util.concurrent.PriorityBlockingQueue, java.util.AbstractCollection, java.util.Collection, java.util.concurrent.BlockingQueue
    public final boolean contains(Object obj) {
        boolean z;
        try {
            this.f140b.lock();
            if (!super.contains(obj)) {
                if (!this.f139a.contains(obj)) {
                    z = false;
                    return z;
                }
            }
            z = true;
            return z;
        } finally {
            this.f140b.unlock();
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.util.concurrent.PriorityBlockingQueue, java.util.concurrent.BlockingQueue
    public final int drainTo(Collection<? super E> collection) {
        try {
            this.f140b.lock();
            int drainTo = super.drainTo(collection);
            int size = this.f139a.size();
            while (!this.f139a.isEmpty()) {
                collection.add(this.f139a.poll());
            }
            this.f140b.unlock();
            return drainTo + size;
        } catch (Throwable th) {
            this.f140b.unlock();
            throw th;
        }
    }

    @Override // java.util.concurrent.PriorityBlockingQueue, java.util.concurrent.BlockingQueue
    public final int drainTo(Collection<? super E> collection, int i) {
        try {
            this.f140b.lock();
            int drainTo = super.drainTo(collection, i);
            while (!this.f139a.isEmpty() && drainTo <= i) {
                collection.add(this.f139a.poll());
                drainTo++;
            }
            return drainTo;
        } finally {
            this.f140b.unlock();
        }
    }

    @Override // java.util.concurrent.PriorityBlockingQueue, java.util.concurrent.BlockingQueue
    public final /* synthetic */ Object poll(long j, TimeUnit timeUnit) {
        return m10264b(3, Long.valueOf(j), timeUnit);
    }

    @Override // java.util.concurrent.PriorityBlockingQueue, java.util.AbstractCollection, java.util.Collection, java.util.concurrent.BlockingQueue
    public final boolean remove(Object obj) {
        boolean z;
        try {
            this.f140b.lock();
            if (!super.remove(obj)) {
                if (!this.f139a.remove(obj)) {
                    z = false;
                    return z;
                }
            }
            z = true;
            return z;
        } finally {
            this.f140b.unlock();
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean removeAll(Collection<?> collection) {
        try {
            this.f140b.lock();
            boolean removeAll = super.removeAll(collection);
            boolean removeAll2 = this.f139a.removeAll(collection);
            this.f140b.unlock();
            return removeAll2 | removeAll;
        } catch (Throwable th) {
            this.f140b.unlock();
            throw th;
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.util.concurrent.PriorityBlockingQueue, java.util.AbstractCollection, java.util.Collection
    public final int size() {
        try {
            this.f140b.lock();
            int size = this.f139a.size();
            int size2 = super.size();
            this.f140b.unlock();
            return size + size2;
        } catch (Throwable th) {
            this.f140b.unlock();
            throw th;
        }
    }

    @Override // java.util.concurrent.PriorityBlockingQueue, java.util.concurrent.BlockingQueue
    public final /* synthetic */ Object take() {
        return m10264b(0, null, null);
    }

    @Override // java.util.concurrent.PriorityBlockingQueue, java.util.AbstractCollection, java.util.Collection
    public final Object[] toArray() {
        try {
            this.f140b.lock();
            return m10266a(super.toArray(), this.f139a.toArray());
        } finally {
            this.f140b.unlock();
        }
    }

    @Override // java.util.concurrent.PriorityBlockingQueue, java.util.AbstractCollection, java.util.Collection
    public final <T> T[] toArray(T[] tArr) {
        try {
            this.f140b.lock();
            return (T[]) m10266a(super.toArray(tArr), this.f139a.toArray(tArr));
        } finally {
            this.f140b.unlock();
        }
    }
}

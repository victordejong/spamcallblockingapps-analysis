package com.google.a.b;

import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/google/a/b/k.class */
public abstract class k<E> implements Serializable, Collection<E> {
    static final k<Object> c = new b((byte) 0);

    /* renamed from: a  reason: collision with root package name */
    private transient m<E> f3700a;

    /* loaded from: classes-dex2jar.jar:com/google/a/b/k$a.class */
    public static abstract class a<E> {
        /* JADX WARN: Multi-variable type inference failed */
        public a<E> a(Iterable<? extends E> iterable) {
            Iterator<? extends E> it = iterable.iterator();
            while (it.hasNext()) {
                a((a<E>) it.next());
            }
            return this;
        }

        public abstract a<E> a(E e);

        /* JADX WARN: Multi-variable type inference failed */
        public a<E> a(Iterator<? extends E> it) {
            while (it.hasNext()) {
                a((a<E>) it.next());
            }
            return this;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/a/b/k$b.class */
    private static final class b extends k<Object> {

        /* renamed from: a  reason: collision with root package name */
        private static final Object[] f3701a = new Object[0];

        private b() {
        }

        /* synthetic */ b(byte b2) {
            this();
        }

        @Override // com.google.a.b.k
        final boolean a() {
            return false;
        }

        @Override // com.google.a.b.k
        public final ae<Object> b() {
            return q.f3714a;
        }

        @Override // com.google.a.b.k, java.util.Collection, java.util.List
        public final boolean contains(Object obj) {
            return false;
        }

        @Override // com.google.a.b.k
        final m<Object> e() {
            return m.f();
        }

        @Override // com.google.a.b.k, java.util.Collection, java.util.List
        public final boolean isEmpty() {
            return true;
        }

        @Override // com.google.a.b.k, java.util.Collection, java.lang.Iterable, java.util.List
        public final /* bridge */ /* synthetic */ Iterator iterator() {
            return q.f3714a;
        }

        @Override // java.util.Collection
        public final int size() {
            return 0;
        }

        @Override // com.google.a.b.k, java.util.Collection, java.util.List
        public final Object[] toArray() {
            return f3701a;
        }

        @Override // com.google.a.b.k, java.util.Collection, java.util.List
        public final <T> T[] toArray(T[] tArr) {
            if (tArr.length > 0) {
                tArr[0] = null;
            }
            return tArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean a();

    @Override // java.util.Collection
    public final boolean add(E e) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public final boolean addAll(Collection<? extends E> collection) {
        throw new UnsupportedOperationException();
    }

    /* renamed from: b */
    public abstract ae<E> iterator();

    @Override // java.util.Collection
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    public boolean contains(Object obj) {
        return obj != null && q.a(iterator(), obj);
    }

    public boolean containsAll(Collection<?> collection) {
        return e.a(this, collection);
    }

    public m<E> d() {
        m<E> mVar = this.f3700a;
        m<E> mVar2 = mVar;
        if (mVar == null) {
            mVar2 = e();
            this.f3700a = mVar2;
        }
        return mVar2;
    }

    m<E> e() {
        m<E> a2;
        switch (size()) {
            case 0:
                a2 = m.f();
                break;
            case 1:
                a2 = m.a(iterator().next());
                break;
            default:
                a2 = new j<>(toArray(), this);
                break;
        }
        return a2;
    }

    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Collection
    public final boolean remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public final boolean removeAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public final boolean retainAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    public Object[] toArray() {
        return u.a(this, new Object[size()]);
    }

    public <T> T[] toArray(T[] tArr) {
        int size = size();
        T[] tArr2 = tArr;
        if (tArr.length < size) {
            tArr2 = (T[]) u.a(tArr, size);
        }
        u.a(this, tArr2);
        if (tArr2.length > size) {
            tArr2[size] = null;
        }
        return tArr2;
    }

    public String toString() {
        return e.a(this);
    }
}

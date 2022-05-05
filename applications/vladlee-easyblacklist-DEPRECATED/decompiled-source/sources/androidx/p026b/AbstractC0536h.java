package androidx.p026b;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.b.h */
/* loaded from: classes-dex2jar.jar:androidx/b/h.class */
public abstract class AbstractC0536h<K, V> {

    /* renamed from: b */
    AbstractC0536h<K, V>.C0538b f2490b;

    /* renamed from: c */
    AbstractC0536h<K, V>.C0539c f2491c;

    /* renamed from: d */
    AbstractC0536h<K, V>.C0541e f2492d;

    /* renamed from: androidx.b.h$a */
    /* loaded from: classes-dex2jar.jar:androidx/b/h$a.class */
    final class C0537a<T> implements Iterator<T> {

        /* renamed from: a */
        final int f2493a;

        /* renamed from: b */
        int f2494b;

        /* renamed from: c */
        int f2495c;

        /* renamed from: d */
        boolean f2496d = false;

        C0537a(int i) {
            this.f2493a = i;
            this.f2494b = AbstractC0536h.this.mo8926a();
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f2495c < this.f2494b;
        }

        @Override // java.util.Iterator
        public final T next() {
            if (hasNext()) {
                T t = (T) AbstractC0536h.this.mo8924a(this.f2495c, this.f2493a);
                this.f2495c++;
                this.f2496d = true;
                return t;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public final void remove() {
            if (this.f2496d) {
                this.f2495c--;
                this.f2494b--;
                this.f2496d = false;
                AbstractC0536h.this.mo8925a(this.f2495c);
                return;
            }
            throw new IllegalStateException();
        }
    }

    /* renamed from: androidx.b.h$b */
    /* loaded from: classes-dex2jar.jar:androidx/b/h$b.class */
    final class C0538b implements Set<Map.Entry<K, V>> {
        /* JADX INFO: Access modifiers changed from: package-private */
        public C0538b() {
        }

        @Override // java.util.Set, java.util.Collection
        public final /* synthetic */ boolean add(Object obj) {
            throw new UnsupportedOperationException();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Set, java.util.Collection
        public final boolean addAll(Collection<? extends Map.Entry<K, V>> collection) {
            int a = AbstractC0536h.this.mo8926a();
            Iterator<? extends Map.Entry<K, V>> it = collection.iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                AbstractC0536h.this.mo8921a((AbstractC0536h) entry.getKey(), entry.getValue());
            }
            return a != AbstractC0536h.this.mo8926a();
        }

        @Override // java.util.Set, java.util.Collection
        public final void clear() {
            AbstractC0536h.this.mo8914c();
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            int a = AbstractC0536h.this.mo8922a(entry.getKey());
            if (a < 0) {
                return false;
            }
            return C0533e.m8945a(AbstractC0536h.this.mo8924a(a, 1), entry.getValue());
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean containsAll(Collection<?> collection) {
            Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                if (!contains(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean equals(Object obj) {
            return AbstractC0536h.m8919a((Set) this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public final int hashCode() {
            int i = 0;
            for (int a = AbstractC0536h.this.mo8926a() - 1; a >= 0; a--) {
                Object a2 = AbstractC0536h.this.mo8924a(a, 0);
                Object a3 = AbstractC0536h.this.mo8924a(a, 1);
                i += (a2 == null ? 0 : a2.hashCode()) ^ (a3 == null ? 0 : a3.hashCode());
            }
            return i;
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean isEmpty() {
            return AbstractC0536h.this.mo8926a() == 0;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public final Iterator<Map.Entry<K, V>> iterator() {
            return new C0540d();
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean removeAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean retainAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public final int size() {
            return AbstractC0536h.this.mo8926a();
        }

        @Override // java.util.Set, java.util.Collection
        public final Object[] toArray() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public final <T> T[] toArray(T[] tArr) {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: androidx.b.h$c */
    /* loaded from: classes-dex2jar.jar:androidx/b/h$c.class */
    final class C0539c implements Set<K> {
        C0539c() {
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean add(K k) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean addAll(Collection<? extends K> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public final void clear() {
            AbstractC0536h.this.mo8914c();
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean contains(Object obj) {
            return AbstractC0536h.this.mo8922a(obj) >= 0;
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean containsAll(Collection<?> collection) {
            Map<K, V> b = AbstractC0536h.this.mo8917b();
            Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                if (!b.containsKey(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean equals(Object obj) {
            return AbstractC0536h.m8919a((Set) this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public final int hashCode() {
            int i = 0;
            for (int a = AbstractC0536h.this.mo8926a() - 1; a >= 0; a--) {
                Object a2 = AbstractC0536h.this.mo8924a(a, 0);
                i += a2 == null ? 0 : a2.hashCode();
            }
            return i;
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean isEmpty() {
            return AbstractC0536h.this.mo8926a() == 0;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public final Iterator<K> iterator() {
            return new C0537a(0);
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean remove(Object obj) {
            int a = AbstractC0536h.this.mo8922a(obj);
            if (a < 0) {
                return false;
            }
            AbstractC0536h.this.mo8925a(a);
            return true;
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean removeAll(Collection<?> collection) {
            Map<K, V> b = AbstractC0536h.this.mo8917b();
            int size = b.size();
            Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                b.remove(it.next());
            }
            return size != b.size();
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean retainAll(Collection<?> collection) {
            return AbstractC0536h.m8920a((Map) AbstractC0536h.this.mo8917b(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public final int size() {
            return AbstractC0536h.this.mo8926a();
        }

        @Override // java.util.Set, java.util.Collection
        public final Object[] toArray() {
            return AbstractC0536h.this.m8916b(0);
        }

        @Override // java.util.Set, java.util.Collection
        public final <T> T[] toArray(T[] tArr) {
            return (T[]) AbstractC0536h.this.m8918a(tArr, 0);
        }
    }

    /* renamed from: androidx.b.h$d */
    /* loaded from: classes-dex2jar.jar:androidx/b/h$d.class */
    final class C0540d implements Iterator<Map.Entry<K, V>>, Map.Entry<K, V> {

        /* renamed from: a */
        int f2500a;

        /* renamed from: c */
        boolean f2502c = false;

        /* renamed from: b */
        int f2501b = -1;

        C0540d() {
            this.f2500a = AbstractC0536h.this.mo8926a() - 1;
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            if (!this.f2502c) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            } else if (!(obj instanceof Map.Entry)) {
                return false;
            } else {
                Map.Entry entry = (Map.Entry) obj;
                return C0533e.m8945a(entry.getKey(), AbstractC0536h.this.mo8924a(this.f2501b, 0)) && C0533e.m8945a(entry.getValue(), AbstractC0536h.this.mo8924a(this.f2501b, 1));
            }
        }

        @Override // java.util.Map.Entry
        public final K getKey() {
            if (this.f2502c) {
                return (K) AbstractC0536h.this.mo8924a(this.f2501b, 0);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Map.Entry
        public final V getValue() {
            if (this.f2502c) {
                return (V) AbstractC0536h.this.mo8924a(this.f2501b, 1);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f2501b < this.f2500a;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            if (this.f2502c) {
                int i = 0;
                Object a = AbstractC0536h.this.mo8924a(this.f2501b, 0);
                Object a2 = AbstractC0536h.this.mo8924a(this.f2501b, 1);
                int hashCode = a == null ? 0 : a.hashCode();
                if (a2 != null) {
                    i = a2.hashCode();
                }
                return hashCode ^ i;
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Iterator
        public final /* synthetic */ Object next() {
            if (hasNext()) {
                this.f2501b++;
                this.f2502c = true;
                return this;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public final void remove() {
            if (this.f2502c) {
                AbstractC0536h.this.mo8925a(this.f2501b);
                this.f2501b--;
                this.f2500a--;
                this.f2502c = false;
                return;
            }
            throw new IllegalStateException();
        }

        @Override // java.util.Map.Entry
        public final V setValue(V v) {
            if (this.f2502c) {
                return (V) AbstractC0536h.this.mo8923a(this.f2501b, (int) v);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        public final String toString() {
            return getKey() + "=" + getValue();
        }
    }

    /* renamed from: androidx.b.h$e */
    /* loaded from: classes-dex2jar.jar:androidx/b/h$e.class */
    final class C0541e implements Collection<V> {
        /* JADX INFO: Access modifiers changed from: package-private */
        public C0541e() {
        }

        @Override // java.util.Collection
        public final boolean add(V v) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public final boolean addAll(Collection<? extends V> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public final void clear() {
            AbstractC0536h.this.mo8914c();
        }

        @Override // java.util.Collection
        public final boolean contains(Object obj) {
            return AbstractC0536h.this.mo8915b(obj) >= 0;
        }

        @Override // java.util.Collection
        public final boolean containsAll(Collection<?> collection) {
            Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                if (!contains(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Collection
        public final boolean isEmpty() {
            return AbstractC0536h.this.mo8926a() == 0;
        }

        @Override // java.util.Collection, java.lang.Iterable
        public final Iterator<V> iterator() {
            return new C0537a(1);
        }

        @Override // java.util.Collection
        public final boolean remove(Object obj) {
            int b = AbstractC0536h.this.mo8915b(obj);
            if (b < 0) {
                return false;
            }
            AbstractC0536h.this.mo8925a(b);
            return true;
        }

        @Override // java.util.Collection
        public final boolean removeAll(Collection<?> collection) {
            int a = AbstractC0536h.this.mo8926a();
            int i = 0;
            boolean z = false;
            while (i < a) {
                a = a;
                int i2 = i;
                if (collection.contains(AbstractC0536h.this.mo8924a(i, 1))) {
                    AbstractC0536h.this.mo8925a(i);
                    i2 = i - 1;
                    a--;
                    z = true;
                }
                i = i2 + 1;
            }
            return z;
        }

        @Override // java.util.Collection
        public final boolean retainAll(Collection<?> collection) {
            int a = AbstractC0536h.this.mo8926a();
            int i = 0;
            boolean z = false;
            while (i < a) {
                a = a;
                int i2 = i;
                if (!collection.contains(AbstractC0536h.this.mo8924a(i, 1))) {
                    AbstractC0536h.this.mo8925a(i);
                    i2 = i - 1;
                    a--;
                    z = true;
                }
                i = i2 + 1;
            }
            return z;
        }

        @Override // java.util.Collection
        public final int size() {
            return AbstractC0536h.this.mo8926a();
        }

        @Override // java.util.Collection
        public final Object[] toArray() {
            return AbstractC0536h.this.m8916b(1);
        }

        @Override // java.util.Collection
        public final <T> T[] toArray(T[] tArr) {
            return (T[]) AbstractC0536h.this.m8918a(tArr, 1);
        }
    }

    /* renamed from: a */
    public static <K, V> boolean m8920a(Map<K, V> map, Collection<?> collection) {
        int size = map.size();
        Iterator<K> it = map.keySet().iterator();
        while (it.hasNext()) {
            if (!collection.contains(it.next())) {
                it.remove();
            }
        }
        return size != map.size();
    }

    /* renamed from: a */
    public static <T> boolean m8919a(Set<T> set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set2 = (Set) obj;
        try {
            if (set.size() == set2.size()) {
                return set.containsAll(set2);
            }
            return false;
        } catch (ClassCastException | NullPointerException e) {
            return false;
        }
    }

    /* renamed from: a */
    protected abstract int mo8926a();

    /* renamed from: a */
    protected abstract int mo8922a(Object obj);

    /* renamed from: a */
    protected abstract Object mo8924a(int i, int i2);

    /* renamed from: a */
    protected abstract V mo8923a(int i, V v);

    /* renamed from: a */
    protected abstract void mo8925a(int i);

    /* renamed from: a */
    protected abstract void mo8921a(K k, V v);

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final <T> T[] m8918a(T[] tArr, int i) {
        int a = mo8926a();
        T[] tArr2 = tArr;
        if (tArr.length < a) {
            tArr2 = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), a));
        }
        for (int i2 = 0; i2 < a; i2++) {
            tArr2[i2] = mo8924a(i2, i);
        }
        if (tArr2.length > a) {
            tArr2[a] = null;
        }
        return tArr2;
    }

    /* renamed from: b */
    protected abstract int mo8915b(Object obj);

    /* renamed from: b */
    protected abstract Map<K, V> mo8917b();

    /* renamed from: b */
    public final Object[] m8916b(int i) {
        int a = mo8926a();
        Object[] objArr = new Object[a];
        for (int i2 = 0; i2 < a; i2++) {
            objArr[i2] = mo8924a(i2, i);
        }
        return objArr;
    }

    /* renamed from: c */
    protected abstract void mo8914c();

    /* renamed from: d */
    public final Set<K> m8913d() {
        if (this.f2491c == null) {
            this.f2491c = new C0539c();
        }
        return this.f2491c;
    }
}

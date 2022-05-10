package p012b.p035f;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
/* renamed from: b.f.f */
/* loaded from: classes-dex2jar.jar:b/f/f.class */
public abstract class AbstractC0787f<K, V> {

    /* renamed from: a */
    public AbstractC0787f<K, V>.C0789b f3688a;

    /* renamed from: b */
    public AbstractC0787f<K, V>.C0790c f3689b;

    /* renamed from: c */
    public AbstractC0787f<K, V>.C0792e f3690c;

    /* renamed from: b.f.f$a */
    /* loaded from: classes-dex2jar.jar:b/f/f$a.class */
    public final class C0788a<T> implements Iterator<T> {

        /* renamed from: a */
        public final int f3691a;

        /* renamed from: b */
        public int f3692b;

        /* renamed from: c */
        public int f3693c;

        /* renamed from: d */
        public boolean f3694d = false;

        public C0788a(int i) {
            this.f3691a = i;
            this.f3692b = AbstractC0787f.this.mo36029c();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f3693c < this.f3692b;
        }

        @Override // java.util.Iterator
        public T next() {
            if (hasNext()) {
                T t = (T) AbstractC0787f.this.mo36040a(this.f3693c, this.f3691a);
                this.f3693c++;
                this.f3694d = true;
                return t;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            if (this.f3694d) {
                int i = this.f3693c - 1;
                this.f3693c = i;
                this.f3692b--;
                this.f3694d = false;
                AbstractC0787f.this.mo36041a(i);
                return;
            }
            throw new IllegalStateException();
        }
    }

    /* renamed from: b.f.f$b */
    /* loaded from: classes-dex2jar.jar:b/f/f$b.class */
    public final class C0789b implements Set<Map.Entry<K, V>> {
        public C0789b() {
        }

        /* renamed from: a */
        public boolean m36024a(Map.Entry<K, V> entry) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public /* bridge */ /* synthetic */ boolean add(Object obj) {
            m36024a((Map.Entry) obj);
            throw null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Set, java.util.Collection
        public boolean addAll(Collection<? extends Map.Entry<K, V>> collection) {
            int c = AbstractC0787f.this.mo36029c();
            Iterator<? extends Map.Entry<K, V>> it = collection.iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                AbstractC0787f.this.mo36037a((AbstractC0787f) entry.getKey(), entry.getValue());
            }
            return c != AbstractC0787f.this.mo36029c();
        }

        @Override // java.util.Set, java.util.Collection
        public void clear() {
            AbstractC0787f.this.mo36042a();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            int a = AbstractC0787f.this.mo36038a(entry.getKey());
            if (a < 0) {
                return false;
            }
            return C0784c.m36061a(AbstractC0787f.this.mo36040a(a, 1), entry.getValue());
        }

        @Override // java.util.Set, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                if (!contains(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean equals(Object obj) {
            return AbstractC0787f.m36035a((Set) this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public int hashCode() {
            int i = 0;
            for (int c = AbstractC0787f.this.mo36029c() - 1; c >= 0; c--) {
                Object a = AbstractC0787f.this.mo36040a(c, 0);
                Object a2 = AbstractC0787f.this.mo36040a(c, 1);
                i += (a == null ? 0 : a.hashCode()) ^ (a2 == null ? 0 : a2.hashCode());
            }
            return i;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean isEmpty() {
            return AbstractC0787f.this.mo36029c() == 0;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public Iterator<Map.Entry<K, V>> iterator() {
            return new C0791d();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public int size() {
            return AbstractC0787f.this.mo36029c();
        }

        @Override // java.util.Set, java.util.Collection
        public Object[] toArray() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: b.f.f$c */
    /* loaded from: classes-dex2jar.jar:b/f/f$c.class */
    public final class C0790c implements Set<K> {
        public C0790c() {
        }

        @Override // java.util.Set, java.util.Collection
        public boolean add(K k) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean addAll(Collection<? extends K> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public void clear() {
            AbstractC0787f.this.mo36042a();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean contains(Object obj) {
            return AbstractC0787f.this.mo36038a(obj) >= 0;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            return AbstractC0787f.m36036a((Map) AbstractC0787f.this.mo36033b(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean equals(Object obj) {
            return AbstractC0787f.m36035a((Set) this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public int hashCode() {
            int i = 0;
            for (int c = AbstractC0787f.this.mo36029c() - 1; c >= 0; c--) {
                Object a = AbstractC0787f.this.mo36040a(c, 0);
                i += a == null ? 0 : a.hashCode();
            }
            return i;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean isEmpty() {
            return AbstractC0787f.this.mo36029c() == 0;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public Iterator<K> iterator() {
            return new C0788a(0);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean remove(Object obj) {
            int a = AbstractC0787f.this.mo36038a(obj);
            if (a < 0) {
                return false;
            }
            AbstractC0787f.this.mo36041a(a);
            return true;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            return AbstractC0787f.m36030b(AbstractC0787f.this.mo36033b(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            return AbstractC0787f.m36028c(AbstractC0787f.this.mo36033b(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public int size() {
            return AbstractC0787f.this.mo36029c();
        }

        @Override // java.util.Set, java.util.Collection
        public Object[] toArray() {
            return AbstractC0787f.this.m36032b(0);
        }

        @Override // java.util.Set, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) AbstractC0787f.this.m36034a(tArr, 0);
        }
    }

    /* renamed from: b.f.f$d */
    /* loaded from: classes-dex2jar.jar:b/f/f$d.class */
    public final class C0791d implements Iterator<Map.Entry<K, V>>, Map.Entry<K, V> {

        /* renamed from: a */
        public int f3698a;

        /* renamed from: c */
        public boolean f3700c = false;

        /* renamed from: b */
        public int f3699b = -1;

        public C0791d() {
            this.f3698a = AbstractC0787f.this.mo36029c() - 1;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (!this.f3700c) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            } else if (!(obj instanceof Map.Entry)) {
                return false;
            } else {
                Map.Entry entry = (Map.Entry) obj;
                boolean z = false;
                if (C0784c.m36061a(entry.getKey(), AbstractC0787f.this.mo36040a(this.f3699b, 0))) {
                    z = false;
                    if (C0784c.m36061a(entry.getValue(), AbstractC0787f.this.mo36040a(this.f3699b, 1))) {
                        z = true;
                    }
                }
                return z;
            }
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            if (this.f3700c) {
                return (K) AbstractC0787f.this.mo36040a(this.f3699b, 0);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            if (this.f3700c) {
                return (V) AbstractC0787f.this.mo36040a(this.f3699b, 1);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f3699b < this.f3698a;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            if (this.f3700c) {
                int i = 0;
                Object a = AbstractC0787f.this.mo36040a(this.f3699b, 0);
                Object a2 = AbstractC0787f.this.mo36040a(this.f3699b, 1);
                int hashCode = a == null ? 0 : a.hashCode();
                if (a2 != null) {
                    i = a2.hashCode();
                }
                return hashCode ^ i;
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Iterator
        public Map.Entry<K, V> next() {
            if (hasNext()) {
                this.f3699b++;
                this.f3700c = true;
                return this;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            if (this.f3700c) {
                AbstractC0787f.this.mo36041a(this.f3699b);
                this.f3699b--;
                this.f3698a--;
                this.f3700c = false;
                return;
            }
            throw new IllegalStateException();
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            if (this.f3700c) {
                return (V) AbstractC0787f.this.mo36039a(this.f3699b, (int) v);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        public String toString() {
            return getKey() + "=" + getValue();
        }
    }

    /* renamed from: b.f.f$e */
    /* loaded from: classes-dex2jar.jar:b/f/f$e.class */
    public final class C0792e implements Collection<V> {
        public C0792e() {
        }

        @Override // java.util.Collection
        public boolean add(V v) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public boolean addAll(Collection<? extends V> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public void clear() {
            AbstractC0787f.this.mo36042a();
        }

        @Override // java.util.Collection
        public boolean contains(Object obj) {
            return AbstractC0787f.this.mo36031b(obj) >= 0;
        }

        @Override // java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                if (!contains(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Collection
        public boolean isEmpty() {
            return AbstractC0787f.this.mo36029c() == 0;
        }

        @Override // java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return new C0788a(1);
        }

        @Override // java.util.Collection
        public boolean remove(Object obj) {
            int b = AbstractC0787f.this.mo36031b(obj);
            if (b < 0) {
                return false;
            }
            AbstractC0787f.this.mo36041a(b);
            return true;
        }

        @Override // java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            int c = AbstractC0787f.this.mo36029c();
            int i = 0;
            boolean z = false;
            while (i < c) {
                c = c;
                int i2 = i;
                if (collection.contains(AbstractC0787f.this.mo36040a(i, 1))) {
                    AbstractC0787f.this.mo36041a(i);
                    i2 = i - 1;
                    c--;
                    z = true;
                }
                i = i2 + 1;
            }
            return z;
        }

        @Override // java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            int c = AbstractC0787f.this.mo36029c();
            int i = 0;
            boolean z = false;
            while (i < c) {
                c = c;
                int i2 = i;
                if (!collection.contains(AbstractC0787f.this.mo36040a(i, 1))) {
                    AbstractC0787f.this.mo36041a(i);
                    i2 = i - 1;
                    c--;
                    z = true;
                }
                i = i2 + 1;
            }
            return z;
        }

        @Override // java.util.Collection
        public int size() {
            return AbstractC0787f.this.mo36029c();
        }

        @Override // java.util.Collection
        public Object[] toArray() {
            return AbstractC0787f.this.m36032b(1);
        }

        @Override // java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) AbstractC0787f.this.m36034a(tArr, 1);
        }
    }

    /* renamed from: a */
    public static <K, V> boolean m36036a(Map<K, V> map, Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!map.containsKey(it.next())) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002d, code lost:
        if (r3.containsAll(r0) != false) goto L_0x0035;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T> boolean m36035a(java.util.Set<T> r3, java.lang.Object r4) {
        /*
            r0 = 1
            r5 = r0
            r0 = r3
            r1 = r4
            if (r0 != r1) goto L_0x0009
            r0 = 1
            return r0
        L_0x0009:
            r0 = r4
            boolean r0 = r0 instanceof java.util.Set
            if (r0 == 0) goto L_0x0037
            r0 = r4
            java.util.Set r0 = (java.util.Set) r0
            r4 = r0
            r0 = r3
            int r0 = r0.size()     // Catch: NullPointerException | ClassCastException -> 0x0039
            r1 = r4
            int r1 = r1.size()     // Catch: NullPointerException | ClassCastException -> 0x0039
            if (r0 != r1) goto L_0x0033
            r0 = r3
            r1 = r4
            boolean r0 = r0.containsAll(r1)     // Catch: NullPointerException | ClassCastException -> 0x0039
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0033
            goto L_0x0035
        L_0x0033:
            r0 = 0
            r5 = r0
        L_0x0035:
            r0 = r5
            return r0
        L_0x0037:
            r0 = 0
            return r0
        L_0x0039:
            r3 = move-exception
            goto L_0x0037
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p035f.AbstractC0787f.m36035a(java.util.Set, java.lang.Object):boolean");
    }

    /* renamed from: b */
    public static <K, V> boolean m36030b(Map<K, V> map, Collection<?> collection) {
        int size = map.size();
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            map.remove(it.next());
        }
        return size != map.size();
    }

    /* renamed from: c */
    public static <K, V> boolean m36028c(Map<K, V> map, Collection<?> collection) {
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
    public abstract int mo36038a(Object obj);

    /* renamed from: a */
    public abstract Object mo36040a(int i, int i2);

    /* renamed from: a */
    public abstract V mo36039a(int i, V v);

    /* renamed from: a */
    public abstract void mo36042a();

    /* renamed from: a */
    public abstract void mo36041a(int i);

    /* renamed from: a */
    public abstract void mo36037a(K k, V v);

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public <T> T[] m36034a(T[] tArr, int i) {
        int c = mo36029c();
        T[] tArr2 = tArr;
        if (tArr.length < c) {
            tArr2 = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), c));
        }
        for (int i2 = 0; i2 < c; i2++) {
            tArr2[i2] = mo36040a(i2, i);
        }
        if (tArr2.length > c) {
            tArr2[c] = null;
        }
        return tArr2;
    }

    /* renamed from: b */
    public abstract int mo36031b(Object obj);

    /* renamed from: b */
    public abstract Map<K, V> mo36033b();

    /* renamed from: b */
    public Object[] m36032b(int i) {
        int c = mo36029c();
        Object[] objArr = new Object[c];
        for (int i2 = 0; i2 < c; i2++) {
            objArr[i2] = mo36040a(i2, i);
        }
        return objArr;
    }

    /* renamed from: c */
    public abstract int mo36029c();

    /* renamed from: d */
    public Set<Map.Entry<K, V>> m36027d() {
        if (this.f3688a == null) {
            this.f3688a = new C0789b();
        }
        return this.f3688a;
    }

    /* renamed from: e */
    public Set<K> m36026e() {
        if (this.f3689b == null) {
            this.f3689b = new C0790c();
        }
        return this.f3689b;
    }

    /* renamed from: f */
    public Collection<V> m36025f() {
        if (this.f3690c == null) {
            this.f3690c = new C0792e();
        }
        return this.f3690c;
    }
}

package com.google.p051a.p053b;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
/* renamed from: com.google.a.b.v */
/* loaded from: classes-dex2jar.jar:com/google/a/b/v.class */
public final class C1483v<K, V> extends AbstractMap<K, V> implements Serializable {

    /* renamed from: f */
    static final /* synthetic */ boolean f5674f = !C1483v.class.desiredAssertionStatus();

    /* renamed from: g */
    private static final Comparator<Comparable> f5675g = new C1488w();

    /* renamed from: a */
    Comparator<? super K> f5676a;

    /* renamed from: b */
    C1487d<K, V> f5677b;

    /* renamed from: c */
    int f5678c;

    /* renamed from: d */
    int f5679d;

    /* renamed from: e */
    final C1487d<K, V> f5680e;

    /* renamed from: h */
    private C1483v<K, V>.C1484a f5681h;

    /* renamed from: i */
    private C1483v<K, V>.C1485b f5682i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.a.b.v$a */
    /* loaded from: classes-dex2jar.jar:com/google/a/b/v$a.class */
    public final class C1484a extends AbstractSet<Map.Entry<K, V>> {
        C1484a() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            C1483v.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return (obj instanceof Map.Entry) && C1483v.this.m6262a((Map.Entry) obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator<Map.Entry<K, V>> iterator() {
            return new C1489x(this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            C1487d<K, V> a;
            if (!(obj instanceof Map.Entry) || (a = C1483v.this.m6262a((Map.Entry) obj)) == null) {
                return false;
            }
            C1483v.this.m6265a((C1487d) a, true);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return C1483v.this.f5678c;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.a.b.v$b */
    /* loaded from: classes-dex2jar.jar:com/google/a/b/v$b.class */
    public final class C1485b extends AbstractSet<K> {
        C1485b() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            C1483v.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return C1483v.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator<K> iterator() {
            return new C1490y(this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            return C1483v.this.m6264a(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return C1483v.this.f5678c;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.a.b.v$c */
    /* loaded from: classes-dex2jar.jar:com/google/a/b/v$c.class */
    public abstract class AbstractC1486c<T> implements Iterator<T> {

        /* renamed from: b */
        C1487d<K, V> f5685b;

        /* renamed from: c */
        C1487d<K, V> f5686c = null;

        /* renamed from: d */
        int f5687d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public AbstractC1486c() {
            this.f5685b = C1483v.this.f5680e.f5692d;
            this.f5687d = C1483v.this.f5679d;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: a */
        public final C1487d<K, V> m6258a() {
            C1487d<K, V> dVar = this.f5685b;
            if (dVar == C1483v.this.f5680e) {
                throw new NoSuchElementException();
            } else if (C1483v.this.f5679d == this.f5687d) {
                this.f5685b = dVar.f5692d;
                this.f5686c = dVar;
                return dVar;
            } else {
                throw new ConcurrentModificationException();
            }
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f5685b != C1483v.this.f5680e;
        }

        @Override // java.util.Iterator
        public final void remove() {
            C1487d<K, V> dVar = this.f5686c;
            if (dVar != null) {
                C1483v.this.m6265a((C1487d) dVar, true);
                this.f5686c = null;
                this.f5687d = C1483v.this.f5679d;
                return;
            }
            throw new IllegalStateException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.a.b.v$d */
    /* loaded from: classes-dex2jar.jar:com/google/a/b/v$d.class */
    public static final class C1487d<K, V> implements Map.Entry<K, V> {

        /* renamed from: a */
        C1487d<K, V> f5689a;

        /* renamed from: b */
        C1487d<K, V> f5690b;

        /* renamed from: c */
        C1487d<K, V> f5691c;

        /* renamed from: d */
        C1487d<K, V> f5692d;

        /* renamed from: e */
        C1487d<K, V> f5693e;

        /* renamed from: f */
        final K f5694f;

        /* renamed from: g */
        V f5695g;

        /* renamed from: h */
        int f5696h;

        C1487d() {
            this.f5694f = null;
            this.f5693e = this;
            this.f5692d = this;
        }

        C1487d(C1487d<K, V> dVar, K k, C1487d<K, V> dVar2, C1487d<K, V> dVar3) {
            this.f5689a = dVar;
            this.f5694f = k;
            this.f5696h = 1;
            this.f5692d = dVar2;
            this.f5693e = dVar3;
            dVar3.f5692d = this;
            dVar2.f5693e = this;
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            K k = this.f5694f;
            if (k == null) {
                if (entry.getKey() != null) {
                    return false;
                }
            } else if (!k.equals(entry.getKey())) {
                return false;
            }
            V v = this.f5695g;
            return v == null ? entry.getValue() == null : v.equals(entry.getValue());
        }

        @Override // java.util.Map.Entry
        public final K getKey() {
            return this.f5694f;
        }

        @Override // java.util.Map.Entry
        public final V getValue() {
            return this.f5695g;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            K k = this.f5694f;
            int i = 0;
            int hashCode = k == null ? 0 : k.hashCode();
            V v = this.f5695g;
            if (v != null) {
                i = v.hashCode();
            }
            return hashCode ^ i;
        }

        @Override // java.util.Map.Entry
        public final V setValue(V v) {
            V v2 = this.f5695g;
            this.f5695g = v;
            return v2;
        }

        public final String toString() {
            return this.f5694f + "=" + this.f5695g;
        }
    }

    public C1483v() {
        this(f5675g);
    }

    private C1483v(Comparator<? super K> comparator) {
        this.f5678c = 0;
        this.f5679d = 0;
        this.f5680e = new C1487d<>();
        this.f5676a = comparator == null ? f5675g : comparator;
    }

    /* renamed from: a */
    private C1487d<K, V> m6263a(K k, boolean z) {
        int i;
        C1487d<K, V> dVar;
        Comparator<? super K> comparator = this.f5676a;
        C1487d<K, V> dVar2 = this.f5677b;
        if (dVar2 != null) {
            Comparable comparable = comparator == f5675g ? (Comparable) k : null;
            while (true) {
                Object obj = (K) dVar2.f5694f;
                i = comparable != null ? comparable.compareTo(obj) : comparator.compare(k, obj);
                if (i != 0) {
                    C1487d<K, V> dVar3 = i < 0 ? dVar2.f5690b : dVar2.f5691c;
                    if (dVar3 == null) {
                        break;
                    }
                    dVar2 = dVar3;
                } else {
                    return dVar2;
                }
            }
        } else {
            i = 0;
        }
        if (!z) {
            return null;
        }
        C1487d<K, V> dVar4 = this.f5680e;
        if (dVar2 != null) {
            dVar = new C1487d<>(dVar2, k, dVar4, dVar4.f5693e);
            if (i < 0) {
                dVar2.f5690b = dVar;
            } else {
                dVar2.f5691c = dVar;
            }
            m6260b(dVar2, true);
        } else if (comparator != f5675g || (k instanceof Comparable)) {
            dVar = new C1487d<>(dVar2, k, dVar4, dVar4.f5693e);
            this.f5677b = dVar;
        } else {
            throw new ClassCastException(k.getClass().getName() + " is not Comparable");
        }
        this.f5678c++;
        this.f5679d++;
        return dVar;
    }

    /* renamed from: a */
    private void m6267a(C1487d<K, V> dVar) {
        C1487d<K, V> dVar2 = dVar.f5690b;
        C1487d<K, V> dVar3 = dVar.f5691c;
        C1487d<K, V> dVar4 = dVar3.f5690b;
        C1487d<K, V> dVar5 = dVar3.f5691c;
        dVar.f5691c = dVar4;
        if (dVar4 != null) {
            dVar4.f5689a = dVar;
        }
        m6266a(dVar, dVar3);
        dVar3.f5690b = dVar;
        dVar.f5689a = dVar3;
        int i = 0;
        dVar.f5696h = Math.max(dVar2 != null ? dVar2.f5696h : 0, dVar4 != null ? dVar4.f5696h : 0) + 1;
        int i2 = dVar.f5696h;
        if (dVar5 != null) {
            i = dVar5.f5696h;
        }
        dVar3.f5696h = Math.max(i2, i) + 1;
    }

    /* renamed from: a */
    private void m6266a(C1487d<K, V> dVar, C1487d<K, V> dVar2) {
        C1487d<K, V> dVar3 = dVar.f5689a;
        dVar.f5689a = null;
        if (dVar2 != null) {
            dVar2.f5689a = dVar3;
        }
        if (dVar3 == null) {
            this.f5677b = dVar2;
        } else if (dVar3.f5690b == dVar) {
            dVar3.f5690b = dVar2;
        } else if (f5674f || dVar3.f5691c == dVar) {
            dVar3.f5691c = dVar2;
        } else {
            throw new AssertionError();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    private C1487d<K, V> m6259b(Object obj) {
        if (obj == 0) {
            return null;
        }
        try {
            return m6263a((C1483v<K, V>) obj, false);
        } catch (ClassCastException e) {
            return null;
        }
    }

    /* renamed from: b */
    private void m6261b(C1487d<K, V> dVar) {
        C1487d<K, V> dVar2 = dVar.f5690b;
        C1487d<K, V> dVar3 = dVar.f5691c;
        C1487d<K, V> dVar4 = dVar2.f5690b;
        C1487d<K, V> dVar5 = dVar2.f5691c;
        dVar.f5690b = dVar5;
        if (dVar5 != null) {
            dVar5.f5689a = dVar;
        }
        m6266a(dVar, dVar2);
        dVar2.f5691c = dVar;
        dVar.f5689a = dVar2;
        int i = 0;
        dVar.f5696h = Math.max(dVar3 != null ? dVar3.f5696h : 0, dVar5 != null ? dVar5.f5696h : 0) + 1;
        int i2 = dVar.f5696h;
        if (dVar4 != null) {
            i = dVar4.f5696h;
        }
        dVar2.f5696h = Math.max(i2, i) + 1;
    }

    /* renamed from: b */
    private void m6260b(C1487d<K, V> dVar, boolean z) {
        while (dVar != null) {
            C1487d<K, V> dVar2 = dVar.f5690b;
            C1487d<K, V> dVar3 = dVar.f5691c;
            int i = 0;
            int i2 = 0;
            int i3 = dVar2 != null ? dVar2.f5696h : 0;
            int i4 = dVar3 != null ? dVar3.f5696h : 0;
            int i5 = i3 - i4;
            if (i5 == -2) {
                C1487d<K, V> dVar4 = dVar3.f5690b;
                C1487d<K, V> dVar5 = dVar3.f5691c;
                int i6 = dVar5 != null ? dVar5.f5696h : 0;
                if (dVar4 != null) {
                    i2 = dVar4.f5696h;
                }
                int i7 = i2 - i6;
                if (i7 != -1 && (i7 != 0 || z)) {
                    if (f5674f || i7 == 1) {
                        m6261b((C1487d) dVar3);
                    } else {
                        throw new AssertionError();
                    }
                }
                m6267a((C1487d) dVar);
                if (z) {
                    return;
                }
            } else if (i5 == 2) {
                C1487d<K, V> dVar6 = dVar2.f5690b;
                C1487d<K, V> dVar7 = dVar2.f5691c;
                int i8 = dVar7 != null ? dVar7.f5696h : 0;
                if (dVar6 != null) {
                    i = dVar6.f5696h;
                }
                int i9 = i - i8;
                if (i9 != 1 && (i9 != 0 || z)) {
                    if (f5674f || i9 == -1) {
                        m6267a((C1487d) dVar2);
                    } else {
                        throw new AssertionError();
                    }
                }
                m6261b((C1487d) dVar);
                if (z) {
                    return;
                }
            } else if (i5 == 0) {
                dVar.f5696h = i3 + 1;
                if (z) {
                    return;
                }
            } else if (f5674f || i5 == -1 || i5 == 1) {
                dVar.f5696h = Math.max(i3, i4) + 1;
                if (!z) {
                    return;
                }
            } else {
                throw new AssertionError();
            }
            dVar = dVar.f5689a;
        }
    }

    /* renamed from: a */
    final C1487d<K, V> m6264a(Object obj) {
        C1487d<K, V> b = m6259b(obj);
        if (b != null) {
            m6265a((C1487d) b, true);
        }
        return b;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0053 A[RETURN] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final com.google.p051a.p053b.C1483v.C1487d<K, V> m6262a(java.util.Map.Entry<?, ?> r4) {
        /*
            r3 = this;
            r0 = r3
            r1 = r4
            java.lang.Object r1 = r1.getKey()
            com.google.a.b.v$d r0 = r0.m6259b(r1)
            r5 = r0
            r0 = 1
            r6 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0049
            r0 = r5
            V r0 = r0.f5695g
            r7 = r0
            r0 = r4
            java.lang.Object r0 = r0.getValue()
            r4 = r0
            r0 = r7
            r1 = r4
            if (r0 == r1) goto L_0x003b
            r0 = r7
            if (r0 == 0) goto L_0x0035
            r0 = r7
            r1 = r4
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0035
            goto L_0x003b
        L_0x0035:
            r0 = 0
            r8 = r0
            goto L_0x003e
        L_0x003b:
            r0 = 1
            r8 = r0
        L_0x003e:
            r0 = r8
            if (r0 == 0) goto L_0x0049
            r0 = r6
            r8 = r0
            goto L_0x004c
        L_0x0049:
            r0 = 0
            r8 = r0
        L_0x004c:
            r0 = r8
            if (r0 == 0) goto L_0x0053
            r0 = r5
            return r0
        L_0x0053:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.p051a.p053b.C1483v.m6262a(java.util.Map$Entry):com.google.a.b.v$d");
    }

    /* renamed from: a */
    final void m6265a(C1487d<K, V> dVar, boolean z) {
        int i;
        if (z) {
            dVar.f5693e.f5692d = dVar.f5692d;
            dVar.f5692d.f5693e = dVar.f5693e;
        }
        C1487d<K, V> dVar2 = dVar.f5690b;
        C1487d<K, V> dVar3 = dVar.f5691c;
        C1487d<K, V> dVar4 = dVar.f5689a;
        int i2 = 0;
        if (dVar2 == null || dVar3 == null) {
            if (dVar2 != null) {
                m6266a(dVar, dVar2);
                dVar.f5690b = null;
            } else if (dVar3 != null) {
                m6266a(dVar, dVar3);
                dVar.f5691c = null;
            } else {
                m6266a(dVar, (C1487d) null);
            }
            m6260b(dVar4, false);
            this.f5678c--;
            this.f5679d++;
            return;
        }
        C1487d<K, V> dVar5 = dVar3;
        if (dVar2.f5696h > dVar3.f5696h) {
            dVar5 = dVar2;
            while (true) {
                C1487d<K, V> dVar6 = dVar5.f5691c;
                if (dVar6 == null) {
                    break;
                }
                dVar5 = dVar6;
            }
        } else {
            while (true) {
                C1487d<K, V> dVar7 = dVar5.f5690b;
                if (dVar7 == null) {
                    break;
                }
                dVar5 = dVar7;
            }
        }
        m6265a((C1487d) dVar5, false);
        C1487d<K, V> dVar8 = dVar.f5690b;
        if (dVar8 != null) {
            i = dVar8.f5696h;
            dVar5.f5690b = dVar8;
            dVar8.f5689a = dVar5;
            dVar.f5690b = null;
        } else {
            i = 0;
        }
        C1487d<K, V> dVar9 = dVar.f5691c;
        if (dVar9 != null) {
            i2 = dVar9.f5696h;
            dVar5.f5691c = dVar9;
            dVar9.f5689a = dVar5;
            dVar.f5691c = null;
        }
        dVar5.f5696h = Math.max(i, i2) + 1;
        m6266a(dVar, dVar5);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        this.f5677b = null;
        this.f5678c = 0;
        this.f5679d++;
        C1487d<K, V> dVar = this.f5680e;
        dVar.f5693e = dVar;
        dVar.f5692d = dVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        return m6259b(obj) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        C1483v<K, V>.C1484a aVar = this.f5681h;
        if (aVar != null) {
            return aVar;
        }
        C1483v<K, V>.C1484a aVar2 = new C1484a();
        this.f5681h = aVar2;
        return aVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V get(Object obj) {
        C1487d<K, V> b = m6259b(obj);
        if (b != null) {
            return b.f5695g;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<K> keySet() {
        C1483v<K, V>.C1485b bVar = this.f5682i;
        if (bVar != null) {
            return bVar;
        }
        C1483v<K, V>.C1485b bVar2 = new C1485b();
        this.f5682i = bVar2;
        return bVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V put(K k, V v) {
        if (k != null) {
            C1487d<K, V> a = m6263a((C1483v<K, V>) k, true);
            V v2 = a.f5695g;
            a.f5695g = v;
            return v2;
        }
        throw new NullPointerException("key == null");
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        C1487d<K, V> a = m6264a(obj);
        if (a != null) {
            return a.f5695g;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f5678c;
    }
}

package com.google.gson.a;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/gson/a/g.class */
public final class g<K, V> extends AbstractMap<K, V> implements Serializable {
    static final /* synthetic */ boolean f;
    private static final Comparator<Comparable> g;

    /* renamed from: a  reason: collision with root package name */
    Comparator<? super K> f4515a;

    /* renamed from: b  reason: collision with root package name */
    d<K, V> f4516b;
    int c;
    int d;
    final d<K, V> e;
    private g<K, V>.a h;
    private g<K, V>.b i;

    /* loaded from: classes-dex2jar.jar:com/google/gson/a/g$a.class */
    final class a extends AbstractSet<Map.Entry<K, V>> {
        a() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            g.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return (obj instanceof Map.Entry) && g.this.a((Map.Entry) obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator<Map.Entry<K, V>> iterator() {
            return new g<K, V>.c<Map.Entry<K, V>>() { // from class: com.google.gson.a.g.a.1
                {
                    g gVar = g.this;
                }

                @Override // java.util.Iterator
                public final /* synthetic */ Object next() {
                    return a();
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            d<K, V> a2;
            boolean z = false;
            if ((obj instanceof Map.Entry) && (a2 = g.this.a((Map.Entry) obj)) != null) {
                g.this.a((d) a2, true);
                z = true;
            }
            return z;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return g.this.c;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/gson/a/g$b.class */
    final class b extends AbstractSet<K> {
        b() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            g.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return g.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator<K> iterator() {
            return new g<K, V>.c<K>() { // from class: com.google.gson.a.g.b.1
                {
                    g gVar = g.this;
                }

                @Override // java.util.Iterator
                public final K next() {
                    return a().f;
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            return g.this.a(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return g.this.c;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/gson/a/g$c.class */
    private abstract class c<T> implements Iterator<T> {

        /* renamed from: b  reason: collision with root package name */
        d<K, V> f4521b;
        d<K, V> c;
        int d;

        private c() {
            this.f4521b = g.this.e.d;
            this.c = null;
            this.d = g.this.d;
        }

        /* synthetic */ c(g gVar, byte b2) {
            this();
        }

        final d<K, V> a() {
            d<K, V> dVar = this.f4521b;
            if (dVar == g.this.e) {
                throw new NoSuchElementException();
            } else if (g.this.d != this.d) {
                throw new ConcurrentModificationException();
            } else {
                this.f4521b = dVar.d;
                this.c = dVar;
                return dVar;
            }
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f4521b != g.this.e;
        }

        @Override // java.util.Iterator
        public final void remove() {
            if (this.c == null) {
                throw new IllegalStateException();
            }
            g.this.a((d) this.c, true);
            this.c = null;
            this.d = g.this.d;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/gson/a/g$d.class */
    public static final class d<K, V> implements Map.Entry<K, V> {

        /* renamed from: a  reason: collision with root package name */
        d<K, V> f4522a;

        /* renamed from: b  reason: collision with root package name */
        d<K, V> f4523b;
        d<K, V> c;
        d<K, V> d;
        d<K, V> e;
        final K f;
        V g;
        int h;

        d() {
            this.f = null;
            this.e = this;
            this.d = this;
        }

        d(d<K, V> dVar, K k, d<K, V> dVar2, d<K, V> dVar3) {
            this.f4522a = dVar;
            this.f = k;
            this.h = 1;
            this.d = dVar2;
            this.e = dVar3;
            dVar3.d = this;
            dVar2.e = this;
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0029, code lost:
            r6 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:11:0x0031, code lost:
            if (r0.getValue() != null) goto L_0x0036;
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x0034, code lost:
            r6 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x0047, code lost:
            if (r3.f.equals(r0.getKey()) != false) goto L_0x0022;
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x004d, code lost:
            r6 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x005c, code lost:
            if (r3.g.equals(r0.getValue()) == false) goto L_0x0036;
         */
        /* JADX WARN: Code restructure failed: missing block: B:7:0x001f, code lost:
            if (r0.getKey() == null) goto L_0x0022;
         */
        /* JADX WARN: Code restructure failed: missing block: B:9:0x0026, code lost:
            if (r3.g != null) goto L_0x004d;
         */
        @Override // java.util.Map.Entry
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean equals(java.lang.Object r4) {
            /*
                r3 = this;
                r0 = 0
                r5 = r0
                r0 = r5
                r6 = r0
                r0 = r4
                boolean r0 = r0 instanceof java.util.Map.Entry
                if (r0 == 0) goto L_0x0036
                r0 = r4
                java.util.Map$Entry r0 = (java.util.Map.Entry) r0
                r4 = r0
                r0 = r3
                K r0 = r0.f
                if (r0 != 0) goto L_0x0038
                r0 = r5
                r6 = r0
                r0 = r4
                java.lang.Object r0 = r0.getKey()
                if (r0 != 0) goto L_0x0036
            L_0x0022:
                r0 = r3
                V r0 = r0.g
                if (r0 != 0) goto L_0x004d
                r0 = r5
                r6 = r0
                r0 = r4
                java.lang.Object r0 = r0.getValue()
                if (r0 != 0) goto L_0x0036
            L_0x0034:
                r0 = 1
                r6 = r0
            L_0x0036:
                r0 = r6
                return r0
            L_0x0038:
                r0 = r5
                r6 = r0
                r0 = r3
                K r0 = r0.f
                r1 = r4
                java.lang.Object r1 = r1.getKey()
                boolean r0 = r0.equals(r1)
                if (r0 == 0) goto L_0x0036
                goto L_0x0022
            L_0x004d:
                r0 = r5
                r6 = r0
                r0 = r3
                V r0 = r0.g
                r1 = r4
                java.lang.Object r1 = r1.getValue()
                boolean r0 = r0.equals(r1)
                if (r0 == 0) goto L_0x0036
                goto L_0x0034
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.gson.a.g.d.equals(java.lang.Object):boolean");
        }

        @Override // java.util.Map.Entry
        public final K getKey() {
            return this.f;
        }

        @Override // java.util.Map.Entry
        public final V getValue() {
            return this.g;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            int i = 0;
            int hashCode = this.f == null ? 0 : this.f.hashCode();
            if (this.g != null) {
                i = this.g.hashCode();
            }
            return hashCode ^ i;
        }

        @Override // java.util.Map.Entry
        public final V setValue(V v) {
            V v2 = this.g;
            this.g = v;
            return v2;
        }

        public final String toString() {
            return this.f + "=" + this.g;
        }
    }

    static {
        f = !g.class.desiredAssertionStatus();
        g = new Comparator<Comparable>() { // from class: com.google.gson.a.g.1
            @Override // java.util.Comparator
            public final /* synthetic */ int compare(Comparable comparable, Comparable comparable2) {
                return comparable.compareTo(comparable2);
            }
        };
    }

    public g() {
        this(g);
    }

    private g(Comparator<? super K> comparator) {
        this.c = 0;
        this.d = 0;
        this.e = new d<>();
        this.f4515a = comparator == null ? g : comparator;
    }

    private d<K, V> a(K k, boolean z) {
        d<K, V> dVar;
        int i;
        r12 = null;
        Comparator<? super K> comparator = this.f4515a;
        d<K, V> dVar2 = this.f4516b;
        if (dVar2 != null) {
            Comparable comparable = comparator == g ? (Comparable) k : null;
            while (true) {
                i = comparable != null ? comparable.compareTo(dVar2.f) : comparator.compare(k, (K) dVar2.f);
                if (i == 0) {
                    break;
                }
                d<K, V> dVar3 = i < 0 ? dVar2.f4523b : dVar2.c;
                dVar = dVar2;
                if (dVar3 == null) {
                    break;
                }
                dVar2 = dVar3;
            }
            return dVar2;
        }
        i = 0;
        dVar = dVar2;
        if (z) {
            d<K, V> dVar4 = this.e;
            if (dVar != null) {
                dVar2 = new d<>(dVar, k, dVar4, dVar4.e);
                if (i < 0) {
                    dVar.f4523b = dVar2;
                } else {
                    dVar.c = dVar2;
                }
                b(dVar, true);
            } else if (comparator != g || (k instanceof Comparable)) {
                dVar2 = new d<>(dVar, k, dVar4, dVar4.e);
                this.f4516b = dVar2;
            } else {
                throw new ClassCastException(k.getClass().getName() + " is not Comparable");
            }
            this.c++;
            this.d++;
        }
        return dVar2;
    }

    private void a(d<K, V> dVar) {
        int i = 0;
        d<K, V> dVar2 = dVar.f4523b;
        d<K, V> dVar3 = dVar.c;
        d<K, V> dVar4 = dVar3.f4523b;
        d<K, V> dVar5 = dVar3.c;
        dVar.c = dVar4;
        if (dVar4 != null) {
            dVar4.f4522a = dVar;
        }
        a(dVar, dVar3);
        dVar3.f4523b = dVar;
        dVar.f4522a = dVar3;
        dVar.h = Math.max(dVar2 != null ? dVar2.h : 0, dVar4 != null ? dVar4.h : 0) + 1;
        int i2 = dVar.h;
        if (dVar5 != null) {
            i = dVar5.h;
        }
        dVar3.h = Math.max(i2, i) + 1;
    }

    private void a(d<K, V> dVar, d<K, V> dVar2) {
        d<K, V> dVar3 = dVar.f4522a;
        dVar.f4522a = null;
        if (dVar2 != null) {
            dVar2.f4522a = dVar3;
        }
        if (dVar3 == null) {
            this.f4516b = dVar2;
        } else if (dVar3.f4523b == dVar) {
            dVar3.f4523b = dVar2;
        } else if (f || dVar3.c == dVar) {
            dVar3.c = dVar2;
        } else {
            throw new AssertionError();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private d<K, V> b(Object obj) {
        d<K, V> dVar = null;
        if (obj != 0) {
            try {
                dVar = a((g<K, V>) obj, false);
            } catch (ClassCastException e) {
                dVar = null;
            }
        }
        return dVar;
    }

    private void b(d<K, V> dVar) {
        int i = 0;
        d<K, V> dVar2 = dVar.f4523b;
        d<K, V> dVar3 = dVar.c;
        d<K, V> dVar4 = dVar2.f4523b;
        d<K, V> dVar5 = dVar2.c;
        dVar.f4523b = dVar5;
        if (dVar5 != null) {
            dVar5.f4522a = dVar;
        }
        a(dVar, dVar2);
        dVar2.c = dVar;
        dVar.f4522a = dVar2;
        dVar.h = Math.max(dVar3 != null ? dVar3.h : 0, dVar5 != null ? dVar5.h : 0) + 1;
        int i2 = dVar.h;
        if (dVar4 != null) {
            i = dVar4.h;
        }
        dVar2.h = Math.max(i2, i) + 1;
    }

    private void b(d<K, V> dVar, boolean z) {
        while (dVar != null) {
            d<K, V> dVar2 = dVar.f4523b;
            d<K, V> dVar3 = dVar.c;
            int i = dVar2 != null ? dVar2.h : 0;
            int i2 = dVar3 != null ? dVar3.h : 0;
            int i3 = i - i2;
            if (i3 == -2) {
                d<K, V> dVar4 = dVar3.f4523b;
                d<K, V> dVar5 = dVar3.c;
                int i4 = (dVar4 != null ? dVar4.h : 0) - (dVar5 != null ? dVar5.h : 0);
                if (i4 == -1 || (i4 == 0 && !z)) {
                    a((d) dVar);
                } else if (f || i4 == 1) {
                    b((d) dVar3);
                    a((d) dVar);
                } else {
                    throw new AssertionError();
                }
                if (z) {
                    return;
                }
            } else if (i3 == 2) {
                d<K, V> dVar6 = dVar2.f4523b;
                d<K, V> dVar7 = dVar2.c;
                int i5 = (dVar6 != null ? dVar6.h : 0) - (dVar7 != null ? dVar7.h : 0);
                if (i5 == 1 || (i5 == 0 && !z)) {
                    b((d) dVar);
                } else if (f || i5 == -1) {
                    a((d) dVar2);
                    b((d) dVar);
                } else {
                    throw new AssertionError();
                }
                if (z) {
                    return;
                }
            } else if (i3 == 0) {
                dVar.h = i + 1;
                if (z) {
                    return;
                }
            } else if (f || i3 == -1 || i3 == 1) {
                dVar.h = Math.max(i, i2) + 1;
                if (!z) {
                    return;
                }
            } else {
                throw new AssertionError();
            }
            dVar = dVar.f4522a;
        }
    }

    final d<K, V> a(Object obj) {
        d<K, V> b2 = b(obj);
        if (b2 != null) {
            a((d) b2, true);
        }
        return b2;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0052  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final com.google.gson.a.g.d<K, V> a(java.util.Map.Entry<?, ?> r4) {
        /*
            r3 = this;
            r0 = 1
            r5 = r0
            r0 = r3
            r1 = r4
            java.lang.Object r1 = r1.getKey()
            com.google.gson.a.g$d r0 = r0.b(r1)
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x004c
            r0 = r6
            V r0 = r0.g
            r7 = r0
            r0 = r4
            java.lang.Object r0 = r0.getValue()
            r4 = r0
            r0 = r7
            r1 = r4
            if (r0 == r1) goto L_0x0032
            r0 = r7
            if (r0 == 0) goto L_0x0046
            r0 = r7
            r1 = r4
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0046
        L_0x0032:
            r0 = 1
            r8 = r0
        L_0x0035:
            r0 = r8
            if (r0 == 0) goto L_0x004c
            r0 = r5
            r8 = r0
        L_0x003d:
            r0 = r8
            if (r0 == 0) goto L_0x0052
            r0 = r6
            r4 = r0
        L_0x0044:
            r0 = r4
            return r0
        L_0x0046:
            r0 = 0
            r8 = r0
            goto L_0x0035
        L_0x004c:
            r0 = 0
            r8 = r0
            goto L_0x003d
        L_0x0052:
            r0 = 0
            r4 = r0
            goto L_0x0044
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.a.g.a(java.util.Map$Entry):com.google.gson.a.g$d");
    }

    final void a(d<K, V> dVar, boolean z) {
        int i;
        int i2 = 0;
        if (z) {
            dVar.e.d = dVar.d;
            dVar.d.e = dVar.e;
        }
        d<K, V> dVar2 = dVar.f4523b;
        d<K, V> dVar3 = dVar.c;
        d<K, V> dVar4 = dVar.f4522a;
        if (dVar2 == null || dVar3 == null) {
            if (dVar2 != null) {
                a(dVar, dVar2);
                dVar.f4523b = null;
            } else if (dVar3 != null) {
                a(dVar, dVar3);
                dVar.c = null;
            } else {
                a(dVar, (d) null);
            }
            b(dVar4, false);
            this.c--;
            this.d++;
            return;
        }
        d<K, V> dVar5 = dVar3;
        if (dVar2.h > dVar3.h) {
            d<K, V> dVar6 = dVar2.c;
            while (dVar6 != null) {
                dVar6 = dVar6.c;
                dVar2 = dVar6;
            }
        } else {
            while (true) {
                d<K, V> dVar7 = dVar5.f4523b;
                if (dVar7 == null) {
                    break;
                }
                dVar5 = dVar7;
            }
            dVar2 = dVar5;
        }
        a((d) dVar2, false);
        d<K, V> dVar8 = dVar.f4523b;
        if (dVar8 != null) {
            i = dVar8.h;
            dVar2.f4523b = dVar8;
            dVar8.f4522a = dVar2;
            dVar.f4523b = null;
        } else {
            i = 0;
        }
        d<K, V> dVar9 = dVar.c;
        if (dVar9 != null) {
            i2 = dVar9.h;
            dVar2.c = dVar9;
            dVar9.f4522a = dVar2;
            dVar.c = null;
        }
        dVar2.h = Math.max(i, i2) + 1;
        a(dVar, dVar2);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        this.f4516b = null;
        this.c = 0;
        this.d++;
        d<K, V> dVar = this.e;
        dVar.e = dVar;
        dVar.d = dVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        return b(obj) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        g<K, V>.a aVar = this.h;
        if (aVar == null) {
            aVar = new a();
            this.h = aVar;
        }
        return aVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V get(Object obj) {
        d<K, V> b2 = b(obj);
        return b2 != null ? b2.g : null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<K> keySet() {
        g<K, V>.b bVar = this.i;
        if (bVar == null) {
            bVar = new b();
            this.i = bVar;
        }
        return bVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V put(K k, V v) {
        if (k == null) {
            throw new NullPointerException("key == null");
        }
        d<K, V> a2 = a((g<K, V>) k, true);
        V v2 = a2.g;
        a2.g = v;
        return v2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        d<K, V> a2 = a(obj);
        return a2 != null ? a2.g : null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.c;
    }
}

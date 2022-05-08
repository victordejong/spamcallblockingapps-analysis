package p081h.p203i.p384e.p386w;

import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
/* renamed from: h.i.e.w.g */
/* loaded from: classes2-dex2jar.jar:h/i/e/w/g.class */
public final class C10146g<K, V> extends AbstractMap<K, V> implements Serializable {

    /* renamed from: h */
    public static final Comparator<Comparable> f22859h = new C10147a();

    /* renamed from: a */
    public Comparator<? super K> f22860a;

    /* renamed from: b */
    public C10153e<K, V> f22861b;

    /* renamed from: c */
    public int f22862c;

    /* renamed from: d */
    public int f22863d;

    /* renamed from: e */
    public final C10153e<K, V> f22864e;

    /* renamed from: f */
    public C10146g<K, V>.C10148b f22865f;

    /* renamed from: g */
    public C10146g<K, V>.C10150c f22866g;

    /* renamed from: h.i.e.w.g$a */
    /* loaded from: classes2-dex2jar.jar:h/i/e/w/g$a.class */
    public class C10147a implements Comparator<Comparable> {
        /* renamed from: a */
        public int compare(Comparable comparable, Comparable comparable2) {
            return comparable.compareTo(comparable2);
        }
    }

    /* renamed from: h.i.e.w.g$b */
    /* loaded from: classes2-dex2jar.jar:h/i/e/w/g$b.class */
    public class C10148b extends AbstractSet<Map.Entry<K, V>> {

        /* renamed from: h.i.e.w.g$b$a */
        /* loaded from: classes2-dex2jar.jar:h/i/e/w/g$b$a.class */
        public class C10149a extends C10146g<K, V>.AbstractC10152d<Map.Entry<K, V>> {
            public C10149a(C10148b bVar) {
                super();
            }

            @Override // java.util.Iterator
            public Map.Entry<K, V> next() {
                return m13311a();
            }
        }

        public C10148b() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            C10146g.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return (obj instanceof Map.Entry) && C10146g.this.m13316a((Map.Entry) obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new C10149a(this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            C10153e<K, V> a;
            if (!(obj instanceof Map.Entry) || (a = C10146g.this.m13316a((Map.Entry) obj)) == null) {
                return false;
            }
            C10146g.this.m13314b(a, true);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return C10146g.this.f22862c;
        }
    }

    /* renamed from: h.i.e.w.g$c */
    /* loaded from: classes2-dex2jar.jar:h/i/e/w/g$c.class */
    public final class C10150c extends AbstractSet<K> {

        /* renamed from: h.i.e.w.g$c$a */
        /* loaded from: classes2-dex2jar.jar:h/i/e/w/g$c$a.class */
        public class C10151a extends C10146g<K, V>.AbstractC10152d<K> {
            public C10151a(C10150c cVar) {
                super();
            }

            @Override // java.util.Iterator
            public K next() {
                return m13311a().f22878f;
            }
        }

        public C10150c() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            C10146g.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return C10146g.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new C10151a(this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return C10146g.this.m13313b(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return C10146g.this.f22862c;
        }
    }

    /* renamed from: h.i.e.w.g$d */
    /* loaded from: classes2-dex2jar.jar:h/i/e/w/g$d.class */
    public abstract class AbstractC10152d<T> implements Iterator<T> {

        /* renamed from: a */
        public C10153e<K, V> f22869a;

        /* renamed from: b */
        public C10153e<K, V> f22870b = null;

        /* renamed from: c */
        public int f22871c;

        public AbstractC10152d() {
            C10146g gVar = C10146g.this;
            this.f22869a = gVar.f22864e.f22876d;
            this.f22871c = gVar.f22863d;
        }

        /* renamed from: a */
        public final C10153e<K, V> m13311a() {
            C10153e<K, V> eVar = this.f22869a;
            C10146g gVar = C10146g.this;
            if (eVar == gVar.f22864e) {
                throw new NoSuchElementException();
            } else if (gVar.f22863d == this.f22871c) {
                this.f22869a = eVar.f22876d;
                this.f22870b = eVar;
                return eVar;
            } else {
                throw new ConcurrentModificationException();
            }
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f22869a != C10146g.this.f22864e;
        }

        @Override // java.util.Iterator
        public final void remove() {
            C10153e<K, V> eVar = this.f22870b;
            if (eVar != null) {
                C10146g.this.m13314b(eVar, true);
                this.f22870b = null;
                this.f22871c = C10146g.this.f22863d;
                return;
            }
            throw new IllegalStateException();
        }
    }

    /* renamed from: h.i.e.w.g$e */
    /* loaded from: classes2-dex2jar.jar:h/i/e/w/g$e.class */
    public static final class C10153e<K, V> implements Map.Entry<K, V> {

        /* renamed from: a */
        public C10153e<K, V> f22873a;

        /* renamed from: b */
        public C10153e<K, V> f22874b;

        /* renamed from: c */
        public C10153e<K, V> f22875c;

        /* renamed from: d */
        public C10153e<K, V> f22876d;

        /* renamed from: e */
        public C10153e<K, V> f22877e;

        /* renamed from: f */
        public final K f22878f;

        /* renamed from: g */
        public V f22879g;

        /* renamed from: h */
        public int f22880h;

        public C10153e() {
            this.f22878f = null;
            this.f22877e = this;
            this.f22876d = this;
        }

        public C10153e(C10153e<K, V> eVar, K k, C10153e<K, V> eVar2, C10153e<K, V> eVar3) {
            this.f22873a = eVar;
            this.f22878f = k;
            this.f22880h = 1;
            this.f22876d = eVar2;
            this.f22877e = eVar3;
            eVar3.f22876d = this;
            eVar2.f22877e = this;
        }

        /* renamed from: a */
        public C10153e<K, V> m13310a() {
            C10153e<K, V> eVar = this.f22874b;
            C10153e<K, V> eVar2 = this;
            while (eVar != null) {
                eVar = eVar.f22874b;
                eVar2 = eVar;
            }
            return eVar2;
        }

        /* renamed from: b */
        public C10153e<K, V> m13309b() {
            C10153e<K, V> eVar = this.f22875c;
            C10153e<K, V> eVar2 = this;
            while (eVar != null) {
                eVar = eVar.f22875c;
                eVar2 = eVar;
            }
            return eVar2;
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x003e, code lost:
            r0 = r3.f22879g;
         */
        /* JADX WARN: Code restructure failed: missing block: B:11:0x0046, code lost:
            if (r0 != null) goto L_0x0058;
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x0049, code lost:
            r7 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x0052, code lost:
            if (r0.getValue() != null) goto L_0x006c;
         */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x0058, code lost:
            r7 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x0066, code lost:
            if (r0.equals(r0.getValue()) == false) goto L_0x006c;
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x0069, code lost:
            r7 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:7:0x0027, code lost:
            if (r0.getKey() == null) goto L_0x003e;
         */
        /* JADX WARN: Code restructure failed: missing block: B:9:0x003b, code lost:
            if (r0.equals(r0.getKey()) != false) goto L_0x003e;
         */
        @Override // java.util.Map.Entry
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean equals(java.lang.Object r4) {
            /*
                r3 = this;
                r0 = r4
                boolean r0 = r0 instanceof java.util.Map.Entry
                r5 = r0
                r0 = 0
                r6 = r0
                r0 = r6
                r7 = r0
                r0 = r5
                if (r0 == 0) goto L_0x006c
                r0 = r4
                java.util.Map$Entry r0 = (java.util.Map.Entry) r0
                r4 = r0
                r0 = r3
                K r0 = r0.f22878f
                r8 = r0
                r0 = r8
                if (r0 != 0) goto L_0x002d
                r0 = r6
                r7 = r0
                r0 = r4
                java.lang.Object r0 = r0.getKey()
                if (r0 != 0) goto L_0x006c
                goto L_0x003e
            L_0x002d:
                r0 = r6
                r7 = r0
                r0 = r8
                r1 = r4
                java.lang.Object r1 = r1.getKey()
                boolean r0 = r0.equals(r1)
                if (r0 == 0) goto L_0x006c
            L_0x003e:
                r0 = r3
                V r0 = r0.f22879g
                r8 = r0
                r0 = r8
                if (r0 != 0) goto L_0x0058
                r0 = r6
                r7 = r0
                r0 = r4
                java.lang.Object r0 = r0.getValue()
                if (r0 != 0) goto L_0x006c
                goto L_0x0069
            L_0x0058:
                r0 = r6
                r7 = r0
                r0 = r8
                r1 = r4
                java.lang.Object r1 = r1.getValue()
                boolean r0 = r0.equals(r1)
                if (r0 == 0) goto L_0x006c
            L_0x0069:
                r0 = 1
                r7 = r0
            L_0x006c:
                r0 = r7
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p384e.p386w.C10146g.C10153e.equals(java.lang.Object):boolean");
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f22878f;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.f22879g;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            K k = this.f22878f;
            int i = 0;
            int hashCode = k == null ? 0 : k.hashCode();
            V v = this.f22879g;
            if (v != null) {
                i = v.hashCode();
            }
            return hashCode ^ i;
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            V v2 = this.f22879g;
            this.f22879g = v;
            return v2;
        }

        public String toString() {
            return this.f22878f + "=" + this.f22879g;
        }
    }

    public C10146g() {
        this(f22859h);
    }

    public C10146g(Comparator<? super K> comparator) {
        this.f22862c = 0;
        this.f22863d = 0;
        this.f22864e = new C10153e<>();
        this.f22860a = comparator == null ? f22859h : comparator;
    }

    private Object writeReplace() throws ObjectStreamException {
        return new LinkedHashMap(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public C10153e<K, V> m13319a(Object obj) {
        C10153e<K, V> eVar = null;
        if (obj != 0) {
            try {
                eVar = m13317a((C10146g<K, V>) obj, false);
            } catch (ClassCastException e) {
                eVar = null;
            }
        }
        return eVar;
    }

    /* renamed from: a */
    public C10153e<K, V> m13317a(K k, boolean z) {
        int i;
        C10153e<K, V> eVar;
        Comparator<? super K> comparator = this.f22860a;
        C10153e<K, V> eVar2 = this.f22861b;
        if (eVar2 != null) {
            Comparable comparable = comparator == f22859h ? (Comparable) k : null;
            while (true) {
                i = comparable != null ? comparable.compareTo(eVar2.f22878f) : comparator.compare(k, (K) eVar2.f22878f);
                if (i == 0) {
                    return eVar2;
                }
                C10153e<K, V> eVar3 = i < 0 ? eVar2.f22874b : eVar2.f22875c;
                if (eVar3 == null) {
                    break;
                }
                eVar2 = eVar3;
            }
        } else {
            i = 0;
        }
        if (!z) {
            return null;
        }
        C10153e<K, V> eVar4 = this.f22864e;
        if (eVar2 != null) {
            eVar = new C10153e<>(eVar2, k, eVar4, eVar4.f22877e);
            if (i < 0) {
                eVar2.f22874b = eVar;
            } else {
                eVar2.f22875c = eVar;
            }
            m13320a((C10153e) eVar2, true);
        } else if (comparator != f22859h || (k instanceof Comparable)) {
            eVar = new C10153e<>(eVar2, k, eVar4, eVar4.f22877e);
            this.f22861b = eVar;
        } else {
            throw new ClassCastException(k.getClass().getName() + " is not Comparable");
        }
        this.f22862c++;
        this.f22863d++;
        return eVar;
    }

    /* renamed from: a */
    public C10153e<K, V> m13316a(Map.Entry<?, ?> entry) {
        C10153e<K, V> a = m13319a(entry.getKey());
        return a != null && m13318a(a.f22879g, entry.getValue()) ? a : null;
    }

    /* renamed from: a */
    public final void m13322a(C10153e<K, V> eVar) {
        C10153e<K, V> eVar2 = eVar.f22874b;
        C10153e<K, V> eVar3 = eVar.f22875c;
        C10153e<K, V> eVar4 = eVar3.f22874b;
        C10153e<K, V> eVar5 = eVar3.f22875c;
        eVar.f22875c = eVar4;
        if (eVar4 != null) {
            eVar4.f22873a = eVar;
        }
        m13321a((C10153e) eVar, (C10153e) eVar3);
        eVar3.f22874b = eVar;
        eVar.f22873a = eVar3;
        int i = 0;
        eVar.f22880h = Math.max(eVar2 != null ? eVar2.f22880h : 0, eVar4 != null ? eVar4.f22880h : 0) + 1;
        int i2 = eVar.f22880h;
        if (eVar5 != null) {
            i = eVar5.f22880h;
        }
        eVar3.f22880h = Math.max(i2, i) + 1;
    }

    /* renamed from: a */
    public final void m13321a(C10153e<K, V> eVar, C10153e<K, V> eVar2) {
        C10153e<K, V> eVar3 = eVar.f22873a;
        eVar.f22873a = null;
        if (eVar2 != null) {
            eVar2.f22873a = eVar3;
        }
        if (eVar3 == null) {
            this.f22861b = eVar2;
        } else if (eVar3.f22874b == eVar) {
            eVar3.f22874b = eVar2;
        } else {
            eVar3.f22875c = eVar2;
        }
    }

    /* renamed from: a */
    public final void m13320a(C10153e<K, V> eVar, boolean z) {
        while (eVar != null) {
            C10153e<K, V> eVar2 = eVar.f22874b;
            C10153e<K, V> eVar3 = eVar.f22875c;
            int i = 0;
            int i2 = 0;
            int i3 = eVar2 != null ? eVar2.f22880h : 0;
            int i4 = eVar3 != null ? eVar3.f22880h : 0;
            int i5 = i3 - i4;
            if (i5 == -2) {
                C10153e<K, V> eVar4 = eVar3.f22874b;
                C10153e<K, V> eVar5 = eVar3.f22875c;
                int i6 = eVar5 != null ? eVar5.f22880h : 0;
                if (eVar4 != null) {
                    i2 = eVar4.f22880h;
                }
                int i7 = i2 - i6;
                if (i7 == -1 || (i7 == 0 && !z)) {
                    m13322a((C10153e) eVar);
                } else {
                    m13315b((C10153e) eVar3);
                    m13322a((C10153e) eVar);
                }
                if (z) {
                    return;
                }
            } else if (i5 == 2) {
                C10153e<K, V> eVar6 = eVar2.f22874b;
                C10153e<K, V> eVar7 = eVar2.f22875c;
                int i8 = eVar7 != null ? eVar7.f22880h : 0;
                if (eVar6 != null) {
                    i = eVar6.f22880h;
                }
                int i9 = i - i8;
                if (i9 == 1 || (i9 == 0 && !z)) {
                    m13315b((C10153e) eVar);
                } else {
                    m13322a((C10153e) eVar2);
                    m13315b((C10153e) eVar);
                }
                if (z) {
                    return;
                }
            } else if (i5 == 0) {
                eVar.f22880h = i3 + 1;
                if (z) {
                    return;
                }
            } else {
                eVar.f22880h = Math.max(i3, i4) + 1;
                if (!z) {
                    return;
                }
            }
            eVar = eVar.f22873a;
        }
    }

    /* renamed from: a */
    public final boolean m13318a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    /* renamed from: b */
    public C10153e<K, V> m13313b(Object obj) {
        C10153e<K, V> a = m13319a(obj);
        if (a != null) {
            m13314b(a, true);
        }
        return a;
    }

    /* renamed from: b */
    public final void m13315b(C10153e<K, V> eVar) {
        C10153e<K, V> eVar2 = eVar.f22874b;
        C10153e<K, V> eVar3 = eVar.f22875c;
        C10153e<K, V> eVar4 = eVar2.f22874b;
        C10153e<K, V> eVar5 = eVar2.f22875c;
        eVar.f22874b = eVar5;
        if (eVar5 != null) {
            eVar5.f22873a = eVar;
        }
        m13321a((C10153e) eVar, (C10153e) eVar2);
        eVar2.f22875c = eVar;
        eVar.f22873a = eVar2;
        int i = 0;
        eVar.f22880h = Math.max(eVar3 != null ? eVar3.f22880h : 0, eVar5 != null ? eVar5.f22880h : 0) + 1;
        int i2 = eVar.f22880h;
        if (eVar4 != null) {
            i = eVar4.f22880h;
        }
        eVar2.f22880h = Math.max(i2, i) + 1;
    }

    /* renamed from: b */
    public void m13314b(C10153e<K, V> eVar, boolean z) {
        int i;
        if (z) {
            C10153e<K, V> eVar2 = eVar.f22877e;
            eVar2.f22876d = eVar.f22876d;
            eVar.f22876d.f22877e = eVar2;
        }
        C10153e<K, V> eVar3 = eVar.f22874b;
        C10153e<K, V> eVar4 = eVar.f22875c;
        C10153e<K, V> eVar5 = eVar.f22873a;
        int i2 = 0;
        if (eVar3 == null || eVar4 == null) {
            if (eVar3 != null) {
                m13321a((C10153e) eVar, (C10153e) eVar3);
                eVar.f22874b = null;
            } else if (eVar4 != null) {
                m13321a((C10153e) eVar, (C10153e) eVar4);
                eVar.f22875c = null;
            } else {
                m13321a((C10153e) eVar, (C10153e) null);
            }
            m13320a((C10153e) eVar5, false);
            this.f22862c--;
            this.f22863d++;
            return;
        }
        C10153e<K, V> b = eVar3.f22880h > eVar4.f22880h ? eVar3.m13309b() : eVar4.m13310a();
        m13314b(b, false);
        C10153e<K, V> eVar6 = eVar.f22874b;
        if (eVar6 != null) {
            i = eVar6.f22880h;
            b.f22874b = eVar6;
            eVar6.f22873a = b;
            eVar.f22874b = null;
        } else {
            i = 0;
        }
        C10153e<K, V> eVar7 = eVar.f22875c;
        if (eVar7 != null) {
            i2 = eVar7.f22880h;
            b.f22875c = eVar7;
            eVar7.f22873a = b;
            eVar.f22875c = null;
        }
        b.f22880h = Math.max(i, i2) + 1;
        m13321a((C10153e) eVar, (C10153e) b);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        this.f22861b = null;
        this.f22862c = 0;
        this.f22863d++;
        C10153e<K, V> eVar = this.f22864e;
        eVar.f22877e = eVar;
        eVar.f22876d = eVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        return m13319a(obj) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        C10146g<K, V>.C10148b bVar = this.f22865f;
        if (bVar == null) {
            bVar = new C10148b();
            this.f22865f = bVar;
        }
        return bVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        C10153e<K, V> a = m13319a(obj);
        return a != null ? a.f22879g : null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        C10146g<K, V>.C10150c cVar = this.f22866g;
        if (cVar == null) {
            cVar = new C10150c();
            this.f22866g = cVar;
        }
        return cVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V put(K k, V v) {
        if (k != null) {
            C10153e<K, V> a = m13317a((C10146g<K, V>) k, true);
            V v2 = a.f22879g;
            a.f22879g = v;
            return v2;
        }
        throw new NullPointerException("key == null");
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        C10153e<K, V> b = m13313b(obj);
        return b != null ? b.f22879g : null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f22862c;
    }
}

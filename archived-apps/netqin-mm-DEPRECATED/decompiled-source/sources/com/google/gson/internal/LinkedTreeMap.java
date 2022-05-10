package com.google.gson.internal;

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
/* loaded from: classes2-dex2jar.jar:com/google/gson/internal/LinkedTreeMap.class */
public final class LinkedTreeMap<K, V> extends AbstractMap<K, V> implements Serializable {
    public static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final Comparator<Comparable> NATURAL_ORDER = new C7905a();
    public Comparator<? super K> comparator;
    public LinkedTreeMap<K, V>.C7906b entrySet;
    public final C7911e<K, V> header;
    public LinkedTreeMap<K, V>.C7908c keySet;
    public int modCount;
    public C7911e<K, V> root;
    public int size;

    /* renamed from: com.google.gson.internal.LinkedTreeMap$a */
    /* loaded from: classes2-dex2jar.jar:com/google/gson/internal/LinkedTreeMap$a.class */
    public class C7905a implements Comparator<Comparable> {
        /* renamed from: a */
        public int compare(Comparable comparable, Comparable comparable2) {
            return comparable.compareTo(comparable2);
        }
    }

    /* renamed from: com.google.gson.internal.LinkedTreeMap$b */
    /* loaded from: classes2-dex2jar.jar:com/google/gson/internal/LinkedTreeMap$b.class */
    public class C7906b extends AbstractSet<Map.Entry<K, V>> {

        /* renamed from: com.google.gson.internal.LinkedTreeMap$b$a */
        /* loaded from: classes2-dex2jar.jar:com/google/gson/internal/LinkedTreeMap$b$a.class */
        public class C7907a extends LinkedTreeMap<K, V>.AbstractC7910d<Map.Entry<K, V>> {
            public C7907a(C7906b bVar) {
                super();
            }

            @Override // java.util.Iterator
            public Map.Entry<K, V> next() {
                return m7102a();
            }
        }

        public C7906b() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            LinkedTreeMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return (obj instanceof Map.Entry) && LinkedTreeMap.this.findByEntry((Map.Entry) obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new C7907a(this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            C7911e<K, V> findByEntry;
            if (!(obj instanceof Map.Entry) || (findByEntry = LinkedTreeMap.this.findByEntry((Map.Entry) obj)) == null) {
                return false;
            }
            LinkedTreeMap.this.removeInternal(findByEntry, true);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return LinkedTreeMap.this.size;
        }
    }

    /* renamed from: com.google.gson.internal.LinkedTreeMap$c */
    /* loaded from: classes2-dex2jar.jar:com/google/gson/internal/LinkedTreeMap$c.class */
    public final class C7908c extends AbstractSet<K> {

        /* renamed from: com.google.gson.internal.LinkedTreeMap$c$a */
        /* loaded from: classes2-dex2jar.jar:com/google/gson/internal/LinkedTreeMap$c$a.class */
        public class C7909a extends LinkedTreeMap<K, V>.AbstractC7910d<K> {
            public C7909a(C7908c cVar) {
                super();
            }

            @Override // java.util.Iterator
            public K next() {
                return m7102a().f31090f;
            }
        }

        public C7908c() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            LinkedTreeMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return LinkedTreeMap.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new C7909a(this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return LinkedTreeMap.this.removeInternalByKey(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return LinkedTreeMap.this.size;
        }
    }

    /* renamed from: com.google.gson.internal.LinkedTreeMap$d */
    /* loaded from: classes2-dex2jar.jar:com/google/gson/internal/LinkedTreeMap$d.class */
    public abstract class AbstractC7910d<T> implements Iterator<T> {

        /* renamed from: a */
        public C7911e<K, V> f31081a;

        /* renamed from: b */
        public C7911e<K, V> f31082b = null;

        /* renamed from: c */
        public int f31083c;

        public AbstractC7910d() {
            LinkedTreeMap linkedTreeMap = LinkedTreeMap.this;
            this.f31081a = linkedTreeMap.header.f31088d;
            this.f31083c = linkedTreeMap.modCount;
        }

        /* renamed from: a */
        public final C7911e<K, V> m7102a() {
            C7911e<K, V> eVar = this.f31081a;
            LinkedTreeMap linkedTreeMap = LinkedTreeMap.this;
            if (eVar == linkedTreeMap.header) {
                throw new NoSuchElementException();
            } else if (linkedTreeMap.modCount == this.f31083c) {
                this.f31081a = eVar.f31088d;
                this.f31082b = eVar;
                return eVar;
            } else {
                throw new ConcurrentModificationException();
            }
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f31081a != LinkedTreeMap.this.header;
        }

        @Override // java.util.Iterator
        public final void remove() {
            C7911e<K, V> eVar = this.f31082b;
            if (eVar != null) {
                LinkedTreeMap.this.removeInternal(eVar, true);
                this.f31082b = null;
                this.f31083c = LinkedTreeMap.this.modCount;
                return;
            }
            throw new IllegalStateException();
        }
    }

    /* renamed from: com.google.gson.internal.LinkedTreeMap$e */
    /* loaded from: classes2-dex2jar.jar:com/google/gson/internal/LinkedTreeMap$e.class */
    public static final class C7911e<K, V> implements Map.Entry<K, V> {

        /* renamed from: a */
        public C7911e<K, V> f31085a;

        /* renamed from: b */
        public C7911e<K, V> f31086b;

        /* renamed from: c */
        public C7911e<K, V> f31087c;

        /* renamed from: d */
        public C7911e<K, V> f31088d;

        /* renamed from: e */
        public C7911e<K, V> f31089e;

        /* renamed from: f */
        public final K f31090f;

        /* renamed from: g */
        public V f31091g;

        /* renamed from: h */
        public int f31092h;

        public C7911e() {
            this.f31090f = null;
            this.f31089e = this;
            this.f31088d = this;
        }

        public C7911e(C7911e<K, V> eVar, K k, C7911e<K, V> eVar2, C7911e<K, V> eVar3) {
            this.f31085a = eVar;
            this.f31090f = k;
            this.f31092h = 1;
            this.f31088d = eVar2;
            this.f31089e = eVar3;
            eVar3.f31088d = this;
            eVar2.f31089e = this;
        }

        /* renamed from: a */
        public C7911e<K, V> m7101a() {
            C7911e<K, V> eVar = this.f31086b;
            C7911e<K, V> eVar2 = this;
            while (eVar != null) {
                eVar = eVar.f31086b;
                eVar2 = eVar;
            }
            return eVar2;
        }

        /* renamed from: b */
        public C7911e<K, V> m7100b() {
            C7911e<K, V> eVar = this.f31087c;
            C7911e<K, V> eVar2 = this;
            while (eVar != null) {
                eVar = eVar.f31087c;
                eVar2 = eVar;
            }
            return eVar2;
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x003e, code lost:
            r0 = r3.f31091g;
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
                K r0 = r0.f31090f
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
                V r0 = r0.f31091g
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.LinkedTreeMap.C7911e.equals(java.lang.Object):boolean");
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f31090f;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.f31091g;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            K k = this.f31090f;
            int i = 0;
            int hashCode = k == null ? 0 : k.hashCode();
            V v = this.f31091g;
            if (v != null) {
                i = v.hashCode();
            }
            return hashCode ^ i;
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            V v2 = this.f31091g;
            this.f31091g = v;
            return v2;
        }

        public String toString() {
            return this.f31090f + "=" + this.f31091g;
        }
    }

    public LinkedTreeMap() {
        this(NATURAL_ORDER);
    }

    public LinkedTreeMap(Comparator<? super K> comparator) {
        this.size = 0;
        this.modCount = 0;
        this.header = new C7911e<>();
        this.comparator = comparator == null ? NATURAL_ORDER : comparator;
    }

    private boolean equal(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    private void rebalance(C7911e<K, V> eVar, boolean z) {
        while (eVar != null) {
            C7911e<K, V> eVar2 = eVar.f31086b;
            C7911e<K, V> eVar3 = eVar.f31087c;
            int i = 0;
            int i2 = 0;
            int i3 = eVar2 != null ? eVar2.f31092h : 0;
            int i4 = eVar3 != null ? eVar3.f31092h : 0;
            int i5 = i3 - i4;
            if (i5 == -2) {
                C7911e<K, V> eVar4 = eVar3.f31086b;
                C7911e<K, V> eVar5 = eVar3.f31087c;
                int i6 = eVar5 != null ? eVar5.f31092h : 0;
                if (eVar4 != null) {
                    i2 = eVar4.f31092h;
                }
                int i7 = i2 - i6;
                if (i7 == -1 || (i7 == 0 && !z)) {
                    rotateLeft(eVar);
                } else {
                    rotateRight(eVar3);
                    rotateLeft(eVar);
                }
                if (z) {
                    return;
                }
            } else if (i5 == 2) {
                C7911e<K, V> eVar6 = eVar2.f31086b;
                C7911e<K, V> eVar7 = eVar2.f31087c;
                int i8 = eVar7 != null ? eVar7.f31092h : 0;
                if (eVar6 != null) {
                    i = eVar6.f31092h;
                }
                int i9 = i - i8;
                if (i9 == 1 || (i9 == 0 && !z)) {
                    rotateRight(eVar);
                } else {
                    rotateLeft(eVar2);
                    rotateRight(eVar);
                }
                if (z) {
                    return;
                }
            } else if (i5 == 0) {
                eVar.f31092h = i3 + 1;
                if (z) {
                    return;
                }
            } else {
                eVar.f31092h = Math.max(i3, i4) + 1;
                if (!z) {
                    return;
                }
            }
            eVar = eVar.f31085a;
        }
    }

    private void replaceInParent(C7911e<K, V> eVar, C7911e<K, V> eVar2) {
        C7911e<K, V> eVar3 = eVar.f31085a;
        eVar.f31085a = null;
        if (eVar2 != null) {
            eVar2.f31085a = eVar3;
        }
        if (eVar3 == null) {
            this.root = eVar2;
        } else if (eVar3.f31086b == eVar) {
            eVar3.f31086b = eVar2;
        } else {
            eVar3.f31087c = eVar2;
        }
    }

    private void rotateLeft(C7911e<K, V> eVar) {
        C7911e<K, V> eVar2 = eVar.f31086b;
        C7911e<K, V> eVar3 = eVar.f31087c;
        C7911e<K, V> eVar4 = eVar3.f31086b;
        C7911e<K, V> eVar5 = eVar3.f31087c;
        eVar.f31087c = eVar4;
        if (eVar4 != null) {
            eVar4.f31085a = eVar;
        }
        replaceInParent(eVar, eVar3);
        eVar3.f31086b = eVar;
        eVar.f31085a = eVar3;
        int i = 0;
        int max = Math.max(eVar2 != null ? eVar2.f31092h : 0, eVar4 != null ? eVar4.f31092h : 0) + 1;
        eVar.f31092h = max;
        if (eVar5 != null) {
            i = eVar5.f31092h;
        }
        eVar3.f31092h = Math.max(max, i) + 1;
    }

    private void rotateRight(C7911e<K, V> eVar) {
        C7911e<K, V> eVar2 = eVar.f31086b;
        C7911e<K, V> eVar3 = eVar.f31087c;
        C7911e<K, V> eVar4 = eVar2.f31086b;
        C7911e<K, V> eVar5 = eVar2.f31087c;
        eVar.f31086b = eVar5;
        if (eVar5 != null) {
            eVar5.f31085a = eVar;
        }
        replaceInParent(eVar, eVar2);
        eVar2.f31087c = eVar;
        eVar.f31085a = eVar2;
        int i = 0;
        int max = Math.max(eVar3 != null ? eVar3.f31092h : 0, eVar5 != null ? eVar5.f31092h : 0) + 1;
        eVar.f31092h = max;
        if (eVar4 != null) {
            i = eVar4.f31092h;
        }
        eVar2.f31092h = Math.max(max, i) + 1;
    }

    private Object writeReplace() throws ObjectStreamException {
        return new LinkedHashMap(this);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        this.root = null;
        this.size = 0;
        this.modCount++;
        C7911e<K, V> eVar = this.header;
        eVar.f31089e = eVar;
        eVar.f31088d = eVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        return findByObject(obj) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        LinkedTreeMap<K, V>.C7906b bVar = this.entrySet;
        if (bVar == null) {
            bVar = new C7906b();
            this.entrySet = bVar;
        }
        return bVar;
    }

    public C7911e<K, V> find(K k, boolean z) {
        int i;
        C7911e<K, V> eVar;
        Comparator<? super K> comparator = this.comparator;
        C7911e<K, V> eVar2 = this.root;
        if (eVar2 != null) {
            Comparable comparable = comparator == NATURAL_ORDER ? (Comparable) k : null;
            while (true) {
                i = comparable != null ? comparable.compareTo(eVar2.f31090f) : comparator.compare(k, (K) eVar2.f31090f);
                if (i == 0) {
                    return eVar2;
                }
                C7911e<K, V> eVar3 = i < 0 ? eVar2.f31086b : eVar2.f31087c;
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
        C7911e<K, V> eVar4 = this.header;
        if (eVar2 != null) {
            eVar = new C7911e<>(eVar2, k, eVar4, eVar4.f31089e);
            if (i < 0) {
                eVar2.f31086b = eVar;
            } else {
                eVar2.f31087c = eVar;
            }
            rebalance(eVar2, true);
        } else if (comparator != NATURAL_ORDER || (k instanceof Comparable)) {
            eVar = new C7911e<>(eVar2, k, eVar4, eVar4.f31089e);
            this.root = eVar;
        } else {
            throw new ClassCastException(k.getClass().getName() + " is not Comparable");
        }
        this.size++;
        this.modCount++;
        return eVar;
    }

    public C7911e<K, V> findByEntry(Map.Entry<?, ?> entry) {
        C7911e<K, V> findByObject = findByObject(entry.getKey());
        return findByObject != null && equal(findByObject.f31091g, entry.getValue()) ? findByObject : null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C7911e<K, V> findByObject(Object obj) {
        C7911e<K, V> eVar = null;
        if (obj != 0) {
            try {
                eVar = find(obj, false);
            } catch (ClassCastException e) {
                eVar = null;
            }
        }
        return eVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        C7911e<K, V> findByObject = findByObject(obj);
        return findByObject != null ? findByObject.f31091g : null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        LinkedTreeMap<K, V>.C7908c cVar = this.keySet;
        if (cVar == null) {
            cVar = new C7908c();
            this.keySet = cVar;
        }
        return cVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V put(K k, V v) {
        if (k != null) {
            C7911e<K, V> find = find(k, true);
            V v2 = find.f31091g;
            find.f31091g = v;
            return v2;
        }
        throw new NullPointerException("key == null");
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        C7911e<K, V> removeInternalByKey = removeInternalByKey(obj);
        return removeInternalByKey != null ? removeInternalByKey.f31091g : null;
    }

    public void removeInternal(C7911e<K, V> eVar, boolean z) {
        int i;
        if (z) {
            C7911e<K, V> eVar2 = eVar.f31089e;
            eVar2.f31088d = eVar.f31088d;
            eVar.f31088d.f31089e = eVar2;
        }
        C7911e<K, V> eVar3 = eVar.f31086b;
        C7911e<K, V> eVar4 = eVar.f31087c;
        C7911e<K, V> eVar5 = eVar.f31085a;
        int i2 = 0;
        if (eVar3 == null || eVar4 == null) {
            if (eVar3 != null) {
                replaceInParent(eVar, eVar3);
                eVar.f31086b = null;
            } else if (eVar4 != null) {
                replaceInParent(eVar, eVar4);
                eVar.f31087c = null;
            } else {
                replaceInParent(eVar, null);
            }
            rebalance(eVar5, false);
            this.size--;
            this.modCount++;
            return;
        }
        C7911e<K, V> b = eVar3.f31092h > eVar4.f31092h ? eVar3.m7100b() : eVar4.m7101a();
        removeInternal(b, false);
        C7911e<K, V> eVar6 = eVar.f31086b;
        if (eVar6 != null) {
            i = eVar6.f31092h;
            b.f31086b = eVar6;
            eVar6.f31085a = b;
            eVar.f31086b = null;
        } else {
            i = 0;
        }
        C7911e<K, V> eVar7 = eVar.f31087c;
        if (eVar7 != null) {
            i2 = eVar7.f31092h;
            b.f31087c = eVar7;
            eVar7.f31085a = b;
            eVar.f31087c = null;
        }
        b.f31092h = Math.max(i, i2) + 1;
        replaceInParent(eVar, b);
    }

    public C7911e<K, V> removeInternalByKey(Object obj) {
        C7911e<K, V> findByObject = findByObject(obj);
        if (findByObject != null) {
            removeInternal(findByObject, true);
        }
        return findByObject;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.size;
    }
}

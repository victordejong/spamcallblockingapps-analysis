package com.google.common.collect;

import com.google.common.collect.Multimaps;
import com.google.common.collect.Sets;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractSequentialList;
import java.util.Collection;
import java.util.Collections;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p269c.AbstractC4960b;
import p131c.p161d.p266c.p269c.AbstractC4963c;
import p131c.p161d.p266c.p269c.AbstractC4973d1;
import p131c.p161d.p266c.p269c.AbstractC4990h0;
import p131c.p161d.p266c.p269c.AbstractC4995i0;
import p131c.p161d.p266c.p269c.AbstractC4997j0;
import p131c.p161d.p266c.p269c.C5006n;
import p131c.p161d.p266c.p269c.C5009o0;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/LinkedListMultimap.class */
public class LinkedListMultimap<K, V> extends AbstractC4963c<K, V> implements AbstractC4990h0<K, V>, Serializable {
    public static final long serialVersionUID = 0;
    public transient C7522g<K, V> head;
    public transient Map<K, C7521f<K, V>> keyToKeyList;
    public transient int modCount;
    public transient int size;
    public transient C7522g<K, V> tail;

    /* renamed from: com.google.common.collect.LinkedListMultimap$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/LinkedListMultimap$a.class */
    public class C7515a extends AbstractSequentialList<V> {

        /* renamed from: a */
        public final /* synthetic */ Object f30615a;

        public C7515a(Object obj) {
            this.f30615a = obj;
        }

        @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
        public ListIterator<V> listIterator(int i) {
            return new C7524i(this.f30615a, i);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            C7521f fVar = (C7521f) LinkedListMultimap.this.keyToKeyList.get(this.f30615a);
            return fVar == null ? 0 : fVar.f30628c;
        }
    }

    /* renamed from: com.google.common.collect.LinkedListMultimap$b */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/LinkedListMultimap$b.class */
    public class C7516b extends AbstractSequentialList<Map.Entry<K, V>> {
        public C7516b() {
        }

        @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
        public ListIterator<Map.Entry<K, V>> listIterator(int i) {
            return new C7523h(i);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return LinkedListMultimap.this.size;
        }
    }

    /* renamed from: com.google.common.collect.LinkedListMultimap$c */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/LinkedListMultimap$c.class */
    public class C7517c extends Sets.AbstractC7614a<K> {
        public C7517c() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return LinkedListMultimap.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new C7520e(LinkedListMultimap.this, null);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return !LinkedListMultimap.this.removeAll(obj).isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return LinkedListMultimap.this.keyToKeyList.size();
        }
    }

    /* renamed from: com.google.common.collect.LinkedListMultimap$d */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/LinkedListMultimap$d.class */
    public class C7518d extends AbstractSequentialList<V> {

        /* renamed from: com.google.common.collect.LinkedListMultimap$d$a */
        /* loaded from: classes2-dex2jar.jar:com/google/common/collect/LinkedListMultimap$d$a.class */
        public class C7519a extends AbstractC4973d1<Map.Entry<K, V>, V> {

            /* renamed from: b */
            public final /* synthetic */ C7523h f30620b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C7519a(C7518d dVar, ListIterator listIterator, C7523h hVar) {
                super(listIterator);
                this.f30620b = hVar;
            }

            @Override // p131c.p161d.p266c.p269c.AbstractC4968c1
            /* renamed from: a */
            public /* bridge */ /* synthetic */ Object mo8028a(Object obj) {
                return m8238a((Map.Entry<K, Object>) obj);
            }

            /* renamed from: a */
            public V m8238a(Map.Entry<K, V> entry) {
                return entry.getValue();
            }

            @Override // p131c.p161d.p266c.p269c.AbstractC4973d1, java.util.ListIterator
            public void set(V v) {
                this.f30620b.m8235a((C7523h) v);
            }
        }

        public C7518d() {
        }

        @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
        public ListIterator<V> listIterator(int i) {
            C7523h hVar = new C7523h(i);
            return new C7519a(this, hVar, hVar);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return LinkedListMultimap.this.size;
        }
    }

    /* renamed from: com.google.common.collect.LinkedListMultimap$e */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/LinkedListMultimap$e.class */
    public class C7520e implements Iterator<K> {

        /* renamed from: a */
        public final Set<K> f30621a;

        /* renamed from: b */
        public C7522g<K, V> f30622b;

        /* renamed from: c */
        public C7522g<K, V> f30623c;

        /* renamed from: d */
        public int f30624d;

        public C7520e() {
            this.f30621a = Sets.m8063a(LinkedListMultimap.this.keySet().size());
            this.f30622b = LinkedListMultimap.this.head;
            this.f30624d = LinkedListMultimap.this.modCount;
        }

        public /* synthetic */ C7520e(LinkedListMultimap linkedListMultimap, C7515a aVar) {
            this();
        }

        /* renamed from: a */
        public final void m8237a() {
            if (LinkedListMultimap.this.modCount != this.f30624d) {
                throw new ConcurrentModificationException();
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            m8237a();
            return this.f30622b != null;
        }

        @Override // java.util.Iterator
        public K next() {
            C7522g<K, V> gVar;
            m8237a();
            LinkedListMultimap.checkElement(this.f30622b);
            C7522g<K, V> gVar2 = this.f30622b;
            this.f30623c = gVar2;
            this.f30621a.add(gVar2.f30629a);
            do {
                gVar = this.f30622b.f30631c;
                this.f30622b = gVar;
                if (gVar == null) {
                    break;
                }
            } while (!this.f30621a.add(gVar.f30629a));
            return this.f30623c.f30629a;
        }

        @Override // java.util.Iterator
        public void remove() {
            m8237a();
            C5006n.m24660a(this.f30623c != null);
            LinkedListMultimap.this.removeAllNodes(this.f30623c.f30629a);
            this.f30623c = null;
            this.f30624d = LinkedListMultimap.this.modCount;
        }
    }

    /* renamed from: com.google.common.collect.LinkedListMultimap$f */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/LinkedListMultimap$f.class */
    public static class C7521f<K, V> {

        /* renamed from: a */
        public C7522g<K, V> f30626a;

        /* renamed from: b */
        public C7522g<K, V> f30627b;

        /* renamed from: c */
        public int f30628c = 1;

        public C7521f(C7522g<K, V> gVar) {
            this.f30626a = gVar;
            this.f30627b = gVar;
            gVar.f30634f = null;
            gVar.f30633e = null;
        }
    }

    /* renamed from: com.google.common.collect.LinkedListMultimap$g */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/LinkedListMultimap$g.class */
    public static final class C7522g<K, V> extends AbstractC4960b<K, V> {

        /* renamed from: a */
        public final K f30629a;

        /* renamed from: b */
        public V f30630b;

        /* renamed from: c */
        public C7522g<K, V> f30631c;

        /* renamed from: d */
        public C7522g<K, V> f30632d;

        /* renamed from: e */
        public C7522g<K, V> f30633e;

        /* renamed from: f */
        public C7522g<K, V> f30634f;

        public C7522g(K k, V v) {
            this.f30629a = k;
            this.f30630b = v;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4960b, java.util.Map.Entry
        public K getKey() {
            return this.f30629a;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4960b, java.util.Map.Entry
        public V getValue() {
            return this.f30630b;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4960b, java.util.Map.Entry
        public V setValue(V v) {
            V v2 = this.f30630b;
            this.f30630b = v;
            return v2;
        }
    }

    /* renamed from: com.google.common.collect.LinkedListMultimap$h */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/LinkedListMultimap$h.class */
    public class C7523h implements ListIterator<Map.Entry<K, V>> {

        /* renamed from: a */
        public int f30635a;

        /* renamed from: b */
        public C7522g<K, V> f30636b;

        /* renamed from: c */
        public C7522g<K, V> f30637c;

        /* renamed from: d */
        public C7522g<K, V> f30638d;

        /* renamed from: e */
        public int f30639e;

        public C7523h(int i) {
            this.f30639e = LinkedListMultimap.this.modCount;
            int size = LinkedListMultimap.this.size();
            C4933n.m24779b(i, size);
            if (i >= size / 2) {
                this.f30638d = LinkedListMultimap.this.tail;
                this.f30635a = size;
                while (i < size) {
                    previous();
                    i++;
                }
            } else {
                this.f30636b = LinkedListMultimap.this.head;
                while (i > 0) {
                    next();
                    i--;
                }
            }
            this.f30637c = null;
        }

        /* renamed from: a */
        public final void m8236a() {
            if (LinkedListMultimap.this.modCount != this.f30639e) {
                throw new ConcurrentModificationException();
            }
        }

        /* renamed from: a */
        public void m8235a(V v) {
            C4933n.m24776b(this.f30637c != null);
            this.f30637c.f30630b = v;
        }

        /* renamed from: a */
        public void m8234a(Map.Entry<K, V> entry) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator
        public /* bridge */ /* synthetic */ void add(Object obj) {
            m8234a((Map.Entry) ((Map.Entry) obj));
            throw null;
        }

        /* renamed from: b */
        public void m8233b(Map.Entry<K, V> entry) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            m8236a();
            return this.f30636b != null;
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            m8236a();
            return this.f30638d != null;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public C7522g<K, V> next() {
            m8236a();
            LinkedListMultimap.checkElement(this.f30636b);
            C7522g<K, V> gVar = this.f30636b;
            this.f30637c = gVar;
            this.f30638d = gVar;
            this.f30636b = gVar.f30631c;
            this.f30635a++;
            return gVar;
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.f30635a;
        }

        @Override // java.util.ListIterator
        public C7522g<K, V> previous() {
            m8236a();
            LinkedListMultimap.checkElement(this.f30638d);
            C7522g<K, V> gVar = this.f30638d;
            this.f30637c = gVar;
            this.f30636b = gVar;
            this.f30638d = gVar.f30632d;
            this.f30635a--;
            return gVar;
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.f30635a - 1;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            m8236a();
            C5006n.m24660a(this.f30637c != null);
            C7522g<K, V> gVar = this.f30637c;
            if (gVar != this.f30636b) {
                this.f30638d = gVar.f30632d;
                this.f30635a--;
            } else {
                this.f30636b = gVar.f30631c;
            }
            LinkedListMultimap.this.removeNode(this.f30637c);
            this.f30637c = null;
            this.f30639e = LinkedListMultimap.this.modCount;
        }

        @Override // java.util.ListIterator
        public /* bridge */ /* synthetic */ void set(Object obj) {
            m8233b((Map.Entry) obj);
            throw null;
        }
    }

    /* renamed from: com.google.common.collect.LinkedListMultimap$i */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/LinkedListMultimap$i.class */
    public class C7524i implements ListIterator<V> {

        /* renamed from: a */
        public final Object f30641a;

        /* renamed from: b */
        public int f30642b;

        /* renamed from: c */
        public C7522g<K, V> f30643c;

        /* renamed from: d */
        public C7522g<K, V> f30644d;

        /* renamed from: e */
        public C7522g<K, V> f30645e;

        public C7524i(Object obj) {
            this.f30641a = obj;
            C7521f fVar = (C7521f) LinkedListMultimap.this.keyToKeyList.get(obj);
            this.f30643c = fVar == null ? null : fVar.f30626a;
        }

        public C7524i(Object obj, int i) {
            C7521f fVar = (C7521f) LinkedListMultimap.this.keyToKeyList.get(obj);
            int i2 = fVar == null ? 0 : fVar.f30628c;
            C4933n.m24779b(i, i2);
            if (i >= i2 / 2) {
                this.f30645e = fVar == null ? null : fVar.f30627b;
                this.f30642b = i2;
                while (i < i2) {
                    previous();
                    i++;
                }
            } else {
                this.f30643c = fVar == null ? null : fVar.f30626a;
                while (i > 0) {
                    next();
                    i--;
                }
            }
            this.f30641a = obj;
            this.f30644d = null;
        }

        @Override // java.util.ListIterator
        public void add(V v) {
            this.f30645e = LinkedListMultimap.this.addNode(this.f30641a, v, this.f30643c);
            this.f30642b++;
            this.f30644d = null;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            return this.f30643c != null;
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return this.f30645e != null;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public V next() {
            LinkedListMultimap.checkElement(this.f30643c);
            C7522g<K, V> gVar = this.f30643c;
            this.f30644d = gVar;
            this.f30645e = gVar;
            this.f30643c = gVar.f30633e;
            this.f30642b++;
            return gVar.f30630b;
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.f30642b;
        }

        @Override // java.util.ListIterator
        public V previous() {
            LinkedListMultimap.checkElement(this.f30645e);
            C7522g<K, V> gVar = this.f30645e;
            this.f30644d = gVar;
            this.f30643c = gVar;
            this.f30645e = gVar.f30634f;
            this.f30642b--;
            return gVar.f30630b;
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.f30642b - 1;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            C5006n.m24660a(this.f30644d != null);
            C7522g<K, V> gVar = this.f30644d;
            if (gVar != this.f30643c) {
                this.f30645e = gVar.f30634f;
                this.f30642b--;
            } else {
                this.f30643c = gVar.f30633e;
            }
            LinkedListMultimap.this.removeNode(this.f30644d);
            this.f30644d = null;
        }

        @Override // java.util.ListIterator
        public void set(V v) {
            C4933n.m24776b(this.f30644d != null);
            this.f30644d.f30630b = v;
        }
    }

    public LinkedListMultimap() {
        this(12);
    }

    public LinkedListMultimap(int i) {
        this.keyToKeyList = C5009o0.m24651a(i);
    }

    public LinkedListMultimap(AbstractC4995i0<? extends K, ? extends V> i0Var) {
        this(i0Var.keySet().size());
        putAll(i0Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public C7522g<K, V> addNode(K k, V v, C7522g<K, V> gVar) {
        C7522g<K, V> gVar2 = new C7522g<>(k, v);
        if (this.head == null) {
            this.tail = gVar2;
            this.head = gVar2;
            this.keyToKeyList.put(k, new C7521f<>(gVar2));
            this.modCount++;
        } else if (gVar == null) {
            C7522g<K, V> gVar3 = this.tail;
            gVar3.f30631c = gVar2;
            gVar2.f30632d = gVar3;
            this.tail = gVar2;
            C7521f<K, V> fVar = this.keyToKeyList.get(k);
            if (fVar == null) {
                this.keyToKeyList.put(k, new C7521f<>(gVar2));
                this.modCount++;
            } else {
                fVar.f30628c++;
                C7522g<K, V> gVar4 = fVar.f30627b;
                gVar4.f30633e = gVar2;
                gVar2.f30634f = gVar4;
                fVar.f30627b = gVar2;
            }
        } else {
            this.keyToKeyList.get(k).f30628c++;
            gVar2.f30632d = gVar.f30632d;
            gVar2.f30634f = gVar.f30634f;
            gVar2.f30631c = gVar;
            gVar2.f30633e = gVar;
            C7522g<K, V> gVar5 = gVar.f30634f;
            if (gVar5 == null) {
                this.keyToKeyList.get(k).f30626a = gVar2;
            } else {
                gVar5.f30633e = gVar2;
            }
            C7522g<K, V> gVar6 = gVar.f30632d;
            if (gVar6 == null) {
                this.head = gVar2;
            } else {
                gVar6.f30631c = gVar2;
            }
            gVar.f30632d = gVar2;
            gVar.f30634f = gVar2;
        }
        this.size++;
        return gVar2;
    }

    public static void checkElement(Object obj) {
        if (obj == null) {
            throw new NoSuchElementException();
        }
    }

    public static <K, V> LinkedListMultimap<K, V> create() {
        return new LinkedListMultimap<>();
    }

    public static <K, V> LinkedListMultimap<K, V> create(int i) {
        return new LinkedListMultimap<>(i);
    }

    public static <K, V> LinkedListMultimap<K, V> create(AbstractC4995i0<? extends K, ? extends V> i0Var) {
        return new LinkedListMultimap<>(i0Var);
    }

    private List<V> getCopy(Object obj) {
        return Collections.unmodifiableList(Lists.m8227a(new C7524i(obj)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.keyToKeyList = CompactLinkedHashMap.create();
        int readInt = objectInputStream.readInt();
        for (int i = 0; i < readInt; i++) {
            put(objectInputStream.readObject(), objectInputStream.readObject());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeAllNodes(Object obj) {
        Iterators.m8258b(new C7524i(obj));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeNode(C7522g<K, V> gVar) {
        C7522g<K, V> gVar2 = gVar.f30632d;
        if (gVar2 != null) {
            gVar2.f30631c = gVar.f30631c;
        } else {
            this.head = gVar.f30631c;
        }
        C7522g<K, V> gVar3 = gVar.f30631c;
        if (gVar3 != null) {
            gVar3.f30632d = gVar.f30632d;
        } else {
            this.tail = gVar.f30632d;
        }
        if (gVar.f30634f == null && gVar.f30633e == null) {
            this.keyToKeyList.remove(gVar.f30629a).f30628c = 0;
            this.modCount++;
        } else {
            C7521f<K, V> fVar = this.keyToKeyList.get(gVar.f30629a);
            fVar.f30628c--;
            C7522g<K, V> gVar4 = gVar.f30634f;
            if (gVar4 == null) {
                fVar.f30626a = gVar.f30633e;
            } else {
                gVar4.f30633e = gVar.f30633e;
            }
            C7522g<K, V> gVar5 = gVar.f30633e;
            if (gVar5 == null) {
                fVar.f30627b = gVar.f30634f;
            } else {
                gVar5.f30634f = gVar.f30634f;
            }
        }
        this.size--;
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(size());
        for (Map.Entry<K, V> entry : entries()) {
            objectOutputStream.writeObject(entry.getKey());
            objectOutputStream.writeObject(entry.getValue());
        }
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    public /* bridge */ /* synthetic */ Map asMap() {
        return super.asMap();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
    public void clear() {
        this.head = null;
        this.tail = null;
        this.keyToKeyList.clear();
        this.size = 0;
        this.modCount++;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    public /* bridge */ /* synthetic */ boolean containsEntry(Object obj, Object obj2) {
        return super.containsEntry(obj, obj2);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
    public boolean containsKey(Object obj) {
        return this.keyToKeyList.containsKey(obj);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    public boolean containsValue(Object obj) {
        return values().contains(obj);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c
    public Map<K, Collection<V>> createAsMap() {
        return new Multimaps.C7588a(this);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c
    public List<Map.Entry<K, V>> createEntries() {
        return new C7516b();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c
    public Set<K> createKeySet() {
        return new C7517c();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c
    public AbstractC4997j0<K> createKeys() {
        return new Multimaps.C7592c(this);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c
    public List<V> createValues() {
        return new C7518d();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    public List<Map.Entry<K, V>> entries() {
        return (List) super.entries();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c
    public Iterator<Map.Entry<K, V>> entryIterator() {
        throw new AssertionError("should never be called");
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    public /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
    public List<V> get(K k) {
        return new C7515a(k);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    public boolean isEmpty() {
        return this.head == null;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    public /* bridge */ /* synthetic */ Set keySet() {
        return super.keySet();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    public /* bridge */ /* synthetic */ AbstractC4997j0 keys() {
        return super.keys();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    public boolean put(K k, V v) {
        addNode(k, v, null);
        return true;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    public /* bridge */ /* synthetic */ boolean putAll(AbstractC4995i0 i0Var) {
        return super.putAll(i0Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    public /* bridge */ /* synthetic */ boolean putAll(Object obj, Iterable iterable) {
        return super.putAll(obj, iterable);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    public /* bridge */ /* synthetic */ boolean remove(Object obj, Object obj2) {
        return super.remove(obj, obj2);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
    public List<V> removeAll(Object obj) {
        List<V> copy = getCopy(obj);
        removeAllNodes(obj);
        return copy;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    public List<V> replaceValues(K k, Iterable<? extends V> iterable) {
        List<V> copy = getCopy(k);
        C7524i iVar = new C7524i(k);
        Iterator<? extends V> it = iterable.iterator();
        while (iVar.hasNext() && it.hasNext()) {
            iVar.next();
            iVar.set(it.next());
        }
        while (iVar.hasNext()) {
            iVar.next();
            iVar.remove();
        }
        while (it.hasNext()) {
            iVar.add(it.next());
        }
        return copy;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
    public int size() {
        return this.size;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
    public List<V> values() {
        return (List) super.values();
    }
}

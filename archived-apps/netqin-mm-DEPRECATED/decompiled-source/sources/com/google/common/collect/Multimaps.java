package com.google.common.collect;

import com.google.common.collect.AbstractMapBasedMultimap;
import com.google.common.collect.Maps;
import com.google.common.collect.Multisets;
import com.google.common.collect.Sets;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NavigableSet;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedSet;
import p131c.p161d.p266c.p267a.AbstractC4920g;
import p131c.p161d.p266c.p267a.AbstractC4941s;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p269c.AbstractC4963c;
import p131c.p161d.p266c.p269c.AbstractC4968c1;
import p131c.p161d.p266c.p269c.AbstractC4969d;
import p131c.p161d.p266c.p269c.AbstractC4990h0;
import p131c.p161d.p266c.p269c.AbstractC4995i0;
import p131c.p161d.p266c.p269c.AbstractC4997j0;
import p131c.p161d.p266c.p269c.AbstractC5027t0;
import p131c.p161d.p266c.p269c.AbstractC5034x;
import p131c.p161d.p266c.p269c.AbstractC5041z0;
import p131c.p161d.p266c.p269c.C5006n;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/Multimaps.class */
public final class Multimaps {

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Multimaps$CustomListMultimap.class */
    public static class CustomListMultimap<K, V> extends AbstractListMultimap<K, V> {
        public static final long serialVersionUID = 0;
        public transient AbstractC4941s<? extends List<V>> factory;

        public CustomListMultimap(Map<K, Collection<V>> map, AbstractC4941s<? extends List<V>> sVar) {
            super(map);
            C4933n.m24795a(sVar);
            this.factory = sVar;
        }

        private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            objectInputStream.defaultReadObject();
            this.factory = (AbstractC4941s) objectInputStream.readObject();
            setMap((Map) objectInputStream.readObject());
        }

        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.defaultWriteObject();
            objectOutputStream.writeObject(this.factory);
            objectOutputStream.writeObject(backingMap());
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap, p131c.p161d.p266c.p269c.AbstractC4963c
        public Map<K, Collection<V>> createAsMap() {
            return createMaybeNavigableAsMap();
        }

        @Override // com.google.common.collect.AbstractListMultimap, com.google.common.collect.AbstractMapBasedMultimap
        public List<V> createCollection() {
            return (List) this.factory.get();
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap, p131c.p161d.p266c.p269c.AbstractC4963c
        public Set<K> createKeySet() {
            return createMaybeNavigableKeySet();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Multimaps$CustomMultimap.class */
    public static class CustomMultimap<K, V> extends AbstractMapBasedMultimap<K, V> {
        public static final long serialVersionUID = 0;
        public transient AbstractC4941s<? extends Collection<V>> factory;

        public CustomMultimap(Map<K, Collection<V>> map, AbstractC4941s<? extends Collection<V>> sVar) {
            super(map);
            C4933n.m24795a(sVar);
            this.factory = sVar;
        }

        private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            objectInputStream.defaultReadObject();
            this.factory = (AbstractC4941s) objectInputStream.readObject();
            setMap((Map) objectInputStream.readObject());
        }

        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.defaultWriteObject();
            objectOutputStream.writeObject(this.factory);
            objectOutputStream.writeObject(backingMap());
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap, p131c.p161d.p266c.p269c.AbstractC4963c
        public Map<K, Collection<V>> createAsMap() {
            return createMaybeNavigableAsMap();
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap
        public Collection<V> createCollection() {
            return (Collection) this.factory.get();
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap, p131c.p161d.p266c.p269c.AbstractC4963c
        public Set<K> createKeySet() {
            return createMaybeNavigableKeySet();
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap
        public <E> Collection<E> unmodifiableCollectionSubclass(Collection<E> collection) {
            return collection instanceof NavigableSet ? Sets.m8062a((NavigableSet) collection) : collection instanceof SortedSet ? Collections.unmodifiableSortedSet((SortedSet) collection) : collection instanceof Set ? Collections.unmodifiableSet((Set) collection) : collection instanceof List ? Collections.unmodifiableList((List) collection) : Collections.unmodifiableCollection(collection);
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap
        public Collection<V> wrapCollection(K k, Collection<V> collection) {
            return collection instanceof List ? wrapList(k, (List) collection, null) : collection instanceof NavigableSet ? new AbstractMapBasedMultimap.C7416m(k, (NavigableSet) collection, null) : collection instanceof SortedSet ? new AbstractMapBasedMultimap.C7418o(k, (SortedSet) collection, null) : collection instanceof Set ? new AbstractMapBasedMultimap.C7417n(k, (Set) collection) : new AbstractMapBasedMultimap.C7412k(k, collection, null);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Multimaps$CustomSetMultimap.class */
    public static class CustomSetMultimap<K, V> extends AbstractSetMultimap<K, V> {
        public static final long serialVersionUID = 0;
        public transient AbstractC4941s<? extends Set<V>> factory;

        public CustomSetMultimap(Map<K, Collection<V>> map, AbstractC4941s<? extends Set<V>> sVar) {
            super(map);
            C4933n.m24795a(sVar);
            this.factory = sVar;
        }

        private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            objectInputStream.defaultReadObject();
            this.factory = (AbstractC4941s) objectInputStream.readObject();
            setMap((Map) objectInputStream.readObject());
        }

        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.defaultWriteObject();
            objectOutputStream.writeObject(this.factory);
            objectOutputStream.writeObject(backingMap());
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap, p131c.p161d.p266c.p269c.AbstractC4963c
        public Map<K, Collection<V>> createAsMap() {
            return createMaybeNavigableAsMap();
        }

        @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractMapBasedMultimap
        public Set<V> createCollection() {
            return (Set) this.factory.get();
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap, p131c.p161d.p266c.p269c.AbstractC4963c
        public Set<K> createKeySet() {
            return createMaybeNavigableKeySet();
        }

        @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractMapBasedMultimap
        public <E> Collection<E> unmodifiableCollectionSubclass(Collection<E> collection) {
            return collection instanceof NavigableSet ? Sets.m8062a((NavigableSet) collection) : collection instanceof SortedSet ? Collections.unmodifiableSortedSet((SortedSet) collection) : Collections.unmodifiableSet((Set) collection);
        }

        @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractMapBasedMultimap
        public Collection<V> wrapCollection(K k, Collection<V> collection) {
            return collection instanceof NavigableSet ? new AbstractMapBasedMultimap.C7416m(k, (NavigableSet) collection, null) : collection instanceof SortedSet ? new AbstractMapBasedMultimap.C7418o(k, (SortedSet) collection, null) : new AbstractMapBasedMultimap.C7417n(k, (Set) collection);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Multimaps$CustomSortedSetMultimap.class */
    public static class CustomSortedSetMultimap<K, V> extends AbstractSortedSetMultimap<K, V> {
        public static final long serialVersionUID = 0;
        public transient AbstractC4941s<? extends SortedSet<V>> factory;
        public transient Comparator<? super V> valueComparator;

        public CustomSortedSetMultimap(Map<K, Collection<V>> map, AbstractC4941s<? extends SortedSet<V>> sVar) {
            super(map);
            C4933n.m24795a(sVar);
            this.factory = sVar;
            this.valueComparator = ((SortedSet) sVar.get()).comparator();
        }

        private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            objectInputStream.defaultReadObject();
            AbstractC4941s<? extends SortedSet<V>> sVar = (AbstractC4941s) objectInputStream.readObject();
            this.factory = sVar;
            this.valueComparator = ((SortedSet) sVar.get()).comparator();
            setMap((Map) objectInputStream.readObject());
        }

        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.defaultWriteObject();
            objectOutputStream.writeObject(this.factory);
            objectOutputStream.writeObject(backingMap());
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap, p131c.p161d.p266c.p269c.AbstractC4963c
        public Map<K, Collection<V>> createAsMap() {
            return createMaybeNavigableAsMap();
        }

        @Override // com.google.common.collect.AbstractSortedSetMultimap, com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractMapBasedMultimap
        public SortedSet<V> createCollection() {
            return (SortedSet) this.factory.get();
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap, p131c.p161d.p266c.p269c.AbstractC4963c
        public Set<K> createKeySet() {
            return createMaybeNavigableKeySet();
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5041z0
        public Comparator<? super V> valueComparator() {
            return this.valueComparator;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Multimaps$MapMultimap.class */
    public static class MapMultimap<K, V> extends AbstractC4963c<K, V> implements AbstractC5027t0<K, V>, Serializable {
        public static final long serialVersionUID = 7845222491160860175L;
        public final Map<K, V> map;

        /* renamed from: com.google.common.collect.Multimaps$MapMultimap$a */
        /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Multimaps$MapMultimap$a.class */
        public class C7585a extends Sets.AbstractC7614a<V> {

            /* renamed from: a */
            public final /* synthetic */ Object f30705a;

            /* renamed from: com.google.common.collect.Multimaps$MapMultimap$a$a */
            /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Multimaps$MapMultimap$a$a.class */
            public class C7586a implements Iterator<V> {

                /* renamed from: a */
                public int f30707a;

                public C7586a() {
                }

                @Override // java.util.Iterator
                public boolean hasNext() {
                    boolean z;
                    if (this.f30707a == 0) {
                        C7585a aVar = C7585a.this;
                        if (MapMultimap.this.map.containsKey(aVar.f30705a)) {
                            z = true;
                            return z;
                        }
                    }
                    z = false;
                    return z;
                }

                @Override // java.util.Iterator
                public V next() {
                    if (hasNext()) {
                        this.f30707a++;
                        C7585a aVar = C7585a.this;
                        return MapMultimap.this.map.get(aVar.f30705a);
                    }
                    throw new NoSuchElementException();
                }

                @Override // java.util.Iterator
                public void remove() {
                    boolean z = true;
                    if (this.f30707a != 1) {
                        z = false;
                    }
                    C5006n.m24660a(z);
                    this.f30707a = -1;
                    C7585a aVar = C7585a.this;
                    MapMultimap.this.map.remove(aVar.f30705a);
                }
            }

            public C7585a(Object obj) {
                this.f30705a = obj;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<V> iterator() {
                return new C7586a();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                return MapMultimap.this.map.containsKey(this.f30705a) ? 1 : 0;
            }
        }

        public MapMultimap(Map<K, V> map) {
            C4933n.m24795a(map);
            this.map = map;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
        public void clear() {
            this.map.clear();
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
        public boolean containsEntry(Object obj, Object obj2) {
            return this.map.entrySet().contains(Maps.m8148a(obj, obj2));
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
        public boolean containsKey(Object obj) {
            return this.map.containsKey(obj);
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
        public boolean containsValue(Object obj) {
            return this.map.containsValue(obj);
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4963c
        public Map<K, Collection<V>> createAsMap() {
            return new C7588a(this);
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4963c
        public Collection<Map.Entry<K, V>> createEntries() {
            throw new AssertionError("unreachable");
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4963c
        public Set<K> createKeySet() {
            return this.map.keySet();
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4963c
        public AbstractC4997j0<K> createKeys() {
            return new C7592c(this);
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4963c
        public Collection<V> createValues() {
            return this.map.values();
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
        public Set<Map.Entry<K, V>> entries() {
            return this.map.entrySet();
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4963c
        public Iterator<Map.Entry<K, V>> entryIterator() {
            return this.map.entrySet().iterator();
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
        public Set<V> get(K k) {
            return new C7585a(k);
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
        public int hashCode() {
            return this.map.hashCode();
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
        public boolean put(K k, V v) {
            throw new UnsupportedOperationException();
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
        public boolean putAll(AbstractC4995i0<? extends K, ? extends V> i0Var) {
            throw new UnsupportedOperationException();
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
        public boolean putAll(K k, Iterable<? extends V> iterable) {
            throw new UnsupportedOperationException();
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
        public boolean remove(Object obj, Object obj2) {
            return this.map.entrySet().remove(Maps.m8148a(obj, obj2));
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
        public Set<V> removeAll(Object obj) {
            HashSet hashSet = new HashSet(2);
            if (!this.map.containsKey(obj)) {
                return hashSet;
            }
            hashSet.add(this.map.remove(obj));
            return hashSet;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4963c, p131c.p161d.p266c.p269c.AbstractC4995i0
        public Set<V> replaceValues(K k, Iterable<? extends V> iterable) {
            throw new UnsupportedOperationException();
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
        public int size() {
            return this.map.size();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Multimaps$UnmodifiableListMultimap.class */
    public static class UnmodifiableListMultimap<K, V> extends UnmodifiableMultimap<K, V> implements AbstractC4990h0<K, V> {
        public static final long serialVersionUID = 0;

        public UnmodifiableListMultimap(AbstractC4990h0<K, V> h0Var) {
            super(h0Var);
        }

        @Override // com.google.common.collect.Multimaps.UnmodifiableMultimap, p131c.p161d.p266c.p269c.AbstractC5034x, p131c.p161d.p266c.p269c.AbstractC5040z
        public AbstractC4990h0<K, V> delegate() {
            return (AbstractC4990h0) super.delegate();
        }

        @Override // com.google.common.collect.Multimaps.UnmodifiableMultimap, p131c.p161d.p266c.p269c.AbstractC5034x, p131c.p161d.p266c.p269c.AbstractC4995i0
        public List<V> get(K k) {
            return Collections.unmodifiableList(delegate().get((AbstractC4990h0<K, V>) k));
        }

        @Override // com.google.common.collect.Multimaps.UnmodifiableMultimap, p131c.p161d.p266c.p269c.AbstractC5034x, p131c.p161d.p266c.p269c.AbstractC4995i0
        public List<V> removeAll(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.Multimaps.UnmodifiableMultimap, p131c.p161d.p266c.p269c.AbstractC5034x, p131c.p161d.p266c.p269c.AbstractC4995i0
        public List<V> replaceValues(K k, Iterable<? extends V> iterable) {
            throw new UnsupportedOperationException();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Multimaps$UnmodifiableMultimap.class */
    public static class UnmodifiableMultimap<K, V> extends AbstractC5034x<K, V> implements Serializable {
        public static final long serialVersionUID = 0;
        public final AbstractC4995i0<K, V> delegate;
        public transient Collection<Map.Entry<K, V>> entries;
        public transient Set<K> keySet;
        public transient AbstractC4997j0<K> keys;
        public transient Map<K, Collection<V>> map;
        public transient Collection<V> values;

        /* renamed from: com.google.common.collect.Multimaps$UnmodifiableMultimap$a */
        /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Multimaps$UnmodifiableMultimap$a.class */
        public class C7587a implements AbstractC4920g<Collection<V>, Collection<V>> {
            public C7587a(UnmodifiableMultimap unmodifiableMultimap) {
            }

            /* renamed from: a */
            public Collection<V> apply(Collection<V> collection) {
                return Multimaps.m8099d(collection);
            }
        }

        public UnmodifiableMultimap(AbstractC4995i0<K, V> i0Var) {
            C4933n.m24795a(i0Var);
            this.delegate = i0Var;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5034x, p131c.p161d.p266c.p269c.AbstractC4995i0
        public Map<K, Collection<V>> asMap() {
            Map<K, Collection<V>> map = this.map;
            Map<K, Collection<V>> map2 = map;
            if (map == null) {
                map2 = Collections.unmodifiableMap(Maps.m8142a((Map) this.delegate.asMap(), (AbstractC4920g) new C7587a(this)));
                this.map = map2;
            }
            return map2;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5034x, p131c.p161d.p266c.p269c.AbstractC4995i0
        public void clear() {
            throw new UnsupportedOperationException();
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5034x, p131c.p161d.p266c.p269c.AbstractC5040z
        public AbstractC4995i0<K, V> delegate() {
            return this.delegate;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5034x, p131c.p161d.p266c.p269c.AbstractC4995i0
        public Collection<Map.Entry<K, V>> entries() {
            Collection<Map.Entry<K, V>> collection = this.entries;
            Collection<Map.Entry<K, V>> collection2 = collection;
            if (collection == null) {
                collection2 = Multimaps.m8100c(this.delegate.entries());
                this.entries = collection2;
            }
            return collection2;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5034x, p131c.p161d.p266c.p269c.AbstractC4995i0
        public Collection<V> get(K k) {
            return Multimaps.m8099d(this.delegate.get(k));
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5034x, p131c.p161d.p266c.p269c.AbstractC4995i0
        public Set<K> keySet() {
            Set<K> set = this.keySet;
            Set<K> set2 = set;
            if (set == null) {
                set2 = Collections.unmodifiableSet(this.delegate.keySet());
                this.keySet = set2;
            }
            return set2;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5034x, p131c.p161d.p266c.p269c.AbstractC4995i0
        public AbstractC4997j0<K> keys() {
            AbstractC4997j0<K> j0Var = this.keys;
            AbstractC4997j0<K> j0Var2 = j0Var;
            if (j0Var == null) {
                j0Var2 = Multisets.m8078c(this.delegate.keys());
                this.keys = j0Var2;
            }
            return j0Var2;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5034x, p131c.p161d.p266c.p269c.AbstractC4995i0
        public boolean put(K k, V v) {
            throw new UnsupportedOperationException();
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5034x, p131c.p161d.p266c.p269c.AbstractC4995i0
        public boolean putAll(AbstractC4995i0<? extends K, ? extends V> i0Var) {
            throw new UnsupportedOperationException();
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5034x, p131c.p161d.p266c.p269c.AbstractC4995i0
        public boolean putAll(K k, Iterable<? extends V> iterable) {
            throw new UnsupportedOperationException();
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5034x, p131c.p161d.p266c.p269c.AbstractC4995i0
        public boolean remove(Object obj, Object obj2) {
            throw new UnsupportedOperationException();
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5034x, p131c.p161d.p266c.p269c.AbstractC4995i0
        public Collection<V> removeAll(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5034x, p131c.p161d.p266c.p269c.AbstractC4995i0
        public Collection<V> replaceValues(K k, Iterable<? extends V> iterable) {
            throw new UnsupportedOperationException();
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5034x, p131c.p161d.p266c.p269c.AbstractC4995i0
        public Collection<V> values() {
            Collection<V> collection = this.values;
            Collection<V> collection2 = collection;
            if (collection == null) {
                collection2 = Collections.unmodifiableCollection(this.delegate.values());
                this.values = collection2;
            }
            return collection2;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Multimaps$UnmodifiableSetMultimap.class */
    public static class UnmodifiableSetMultimap<K, V> extends UnmodifiableMultimap<K, V> implements AbstractC5027t0<K, V> {
        public static final long serialVersionUID = 0;

        public UnmodifiableSetMultimap(AbstractC5027t0<K, V> t0Var) {
            super(t0Var);
        }

        @Override // com.google.common.collect.Multimaps.UnmodifiableMultimap, p131c.p161d.p266c.p269c.AbstractC5034x, p131c.p161d.p266c.p269c.AbstractC5040z
        public AbstractC5027t0<K, V> delegate() {
            return (AbstractC5027t0) super.delegate();
        }

        @Override // com.google.common.collect.Multimaps.UnmodifiableMultimap, p131c.p161d.p266c.p269c.AbstractC5034x, p131c.p161d.p266c.p269c.AbstractC4995i0
        public Set<Map.Entry<K, V>> entries() {
            return Maps.m8137a((Set) delegate().entries());
        }

        @Override // com.google.common.collect.Multimaps.UnmodifiableMultimap, p131c.p161d.p266c.p269c.AbstractC5034x, p131c.p161d.p266c.p269c.AbstractC4995i0
        public Set<V> get(K k) {
            return Collections.unmodifiableSet(delegate().get((AbstractC5027t0<K, V>) k));
        }

        @Override // com.google.common.collect.Multimaps.UnmodifiableMultimap, p131c.p161d.p266c.p269c.AbstractC5034x, p131c.p161d.p266c.p269c.AbstractC4995i0
        public Set<V> removeAll(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.Multimaps.UnmodifiableMultimap, p131c.p161d.p266c.p269c.AbstractC5034x, p131c.p161d.p266c.p269c.AbstractC4995i0
        public Set<V> replaceValues(K k, Iterable<? extends V> iterable) {
            throw new UnsupportedOperationException();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap.class */
    public static class UnmodifiableSortedSetMultimap<K, V> extends UnmodifiableSetMultimap<K, V> implements AbstractC5041z0<K, V> {
        public static final long serialVersionUID = 0;

        public UnmodifiableSortedSetMultimap(AbstractC5041z0<K, V> z0Var) {
            super(z0Var);
        }

        @Override // com.google.common.collect.Multimaps.UnmodifiableSetMultimap, com.google.common.collect.Multimaps.UnmodifiableMultimap, p131c.p161d.p266c.p269c.AbstractC5034x, p131c.p161d.p266c.p269c.AbstractC5040z
        public AbstractC5041z0<K, V> delegate() {
            return (AbstractC5041z0) super.delegate();
        }

        @Override // com.google.common.collect.Multimaps.UnmodifiableSetMultimap, com.google.common.collect.Multimaps.UnmodifiableMultimap, p131c.p161d.p266c.p269c.AbstractC5034x, p131c.p161d.p266c.p269c.AbstractC4995i0
        public SortedSet<V> get(K k) {
            return Collections.unmodifiableSortedSet(delegate().get((AbstractC5041z0<K, V>) k));
        }

        @Override // com.google.common.collect.Multimaps.UnmodifiableSetMultimap, com.google.common.collect.Multimaps.UnmodifiableMultimap, p131c.p161d.p266c.p269c.AbstractC5034x, p131c.p161d.p266c.p269c.AbstractC4995i0
        public SortedSet<V> removeAll(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.Multimaps.UnmodifiableSetMultimap, com.google.common.collect.Multimaps.UnmodifiableMultimap, p131c.p161d.p266c.p269c.AbstractC5034x, p131c.p161d.p266c.p269c.AbstractC4995i0
        public SortedSet<V> replaceValues(K k, Iterable<? extends V> iterable) {
            throw new UnsupportedOperationException();
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC5041z0
        public Comparator<? super V> valueComparator() {
            return delegate().valueComparator();
        }
    }

    /* renamed from: com.google.common.collect.Multimaps$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Multimaps$a.class */
    public static final class C7588a<K, V> extends Maps.AbstractC7584u<K, Collection<V>> {

        /* renamed from: d */
        public final AbstractC4995i0<K, V> f30709d;

        /* renamed from: com.google.common.collect.Multimaps$a$a */
        /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Multimaps$a$a.class */
        public class C7589a extends Maps.AbstractC7572j<K, Collection<V>> {

            /* renamed from: com.google.common.collect.Multimaps$a$a$a */
            /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Multimaps$a$a$a.class */
            public class C7590a implements AbstractC4920g<K, Collection<V>> {
                public C7590a() {
                }

                @Override // p131c.p161d.p266c.p267a.AbstractC4920g
                public Collection<V> apply(K k) {
                    return C7588a.this.f30709d.get(k);
                }
            }

            public C7589a() {
            }

            @Override // com.google.common.collect.Maps.AbstractC7572j
            /* renamed from: a */
            public Map<K, Collection<V>> mo8095a() {
                return C7588a.this;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<K, Collection<V>>> iterator() {
                return Maps.m8136a((Set) C7588a.this.f30709d.keySet(), (AbstractC4920g) new C7590a());
            }

            @Override // com.google.common.collect.Maps.AbstractC7572j, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(Object obj) {
                if (!contains(obj)) {
                    return false;
                }
                C7588a.this.m8096a(((Map.Entry) obj).getKey());
                return true;
            }
        }

        public C7588a(AbstractC4995i0<K, V> i0Var) {
            C4933n.m24795a(i0Var);
            this.f30709d = i0Var;
        }

        @Override // com.google.common.collect.Maps.AbstractC7584u
        /* renamed from: a */
        public Set<Map.Entry<K, Collection<V>>> mo8048a() {
            return new C7589a();
        }

        /* renamed from: a */
        public void m8096a(Object obj) {
            this.f30709d.keySet().remove(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public void clear() {
            this.f30709d.clear();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return this.f30709d.containsKey(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Collection<V> get(Object obj) {
            return containsKey(obj) ? this.f30709d.get(obj) : null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean isEmpty() {
            return this.f30709d.isEmpty();
        }

        @Override // com.google.common.collect.Maps.AbstractC7584u, java.util.AbstractMap, java.util.Map
        public Set<K> keySet() {
            return this.f30709d.keySet();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Collection<V> remove(Object obj) {
            return containsKey(obj) ? this.f30709d.removeAll(obj) : null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            return this.f30709d.keySet().size();
        }
    }

    /* renamed from: com.google.common.collect.Multimaps$b */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Multimaps$b.class */
    public static abstract class AbstractC7591b<K, V> extends AbstractCollection<Map.Entry<K, V>> {
        /* renamed from: a */
        public abstract AbstractC4995i0<K, V> mo8094a();

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            mo8094a().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return mo8094a().containsEntry(entry.getKey(), entry.getValue());
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return mo8094a().remove(entry.getKey(), entry.getValue());
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return mo8094a().size();
        }
    }

    /* renamed from: com.google.common.collect.Multimaps$c */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Multimaps$c.class */
    public static class C7592c<K, V> extends AbstractC4969d<K> {

        /* renamed from: a */
        public final AbstractC4995i0<K, V> f30712a;

        /* renamed from: com.google.common.collect.Multimaps$c$a */
        /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Multimaps$c$a.class */
        public class C7593a extends AbstractC4968c1<Map.Entry<K, Collection<V>>, AbstractC4997j0.AbstractC4998a<K>> {

            /* renamed from: com.google.common.collect.Multimaps$c$a$a */
            /* loaded from: classes2-dex2jar.jar:com/google/common/collect/Multimaps$c$a$a.class */
            public class C7594a extends Multisets.AbstractC7596b<K> {

                /* renamed from: a */
                public final /* synthetic */ Map.Entry f30713a;

                public C7594a(C7593a aVar, Map.Entry entry) {
                    this.f30713a = entry;
                }

                @Override // p131c.p161d.p266c.p269c.AbstractC4997j0.AbstractC4998a
                public int getCount() {
                    return ((Collection) this.f30713a.getValue()).size();
                }

                @Override // p131c.p161d.p266c.p269c.AbstractC4997j0.AbstractC4998a
                public K getElement() {
                    return (K) this.f30713a.getKey();
                }
            }

            public C7593a(C7592c cVar, Iterator it) {
                super(it);
            }

            /* renamed from: a */
            public AbstractC4997j0.AbstractC4998a<K> m8093a(Map.Entry<K, Collection<V>> entry) {
                return new C7594a(this, entry);
            }

            @Override // p131c.p161d.p266c.p269c.AbstractC4968c1
            /* renamed from: a */
            public /* bridge */ /* synthetic */ Object mo8028a(Object obj) {
                return m8093a((Map.Entry) ((Map.Entry) obj));
            }
        }

        public C7592c(AbstractC4995i0<K, V> i0Var) {
            this.f30712a = i0Var;
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4969d, java.util.AbstractCollection, java.util.Collection
        public void clear() {
            this.f30712a.clear();
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4969d, java.util.AbstractCollection, java.util.Collection, p131c.p161d.p266c.p269c.AbstractC4997j0
        public boolean contains(Object obj) {
            return this.f30712a.containsKey(obj);
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4997j0
        public int count(Object obj) {
            Collection collection = (Collection) Maps.m8116e(this.f30712a.asMap(), obj);
            return collection == null ? 0 : collection.size();
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4969d
        public int distinctElements() {
            return this.f30712a.asMap().size();
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4969d
        public Iterator<K> elementIterator() {
            throw new AssertionError("should never be called");
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4969d, p131c.p161d.p266c.p269c.AbstractC4997j0
        public Set<K> elementSet() {
            return this.f30712a.keySet();
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4969d
        public Iterator<AbstractC4997j0.AbstractC4998a<K>> entryIterator() {
            return new C7593a(this, this.f30712a.asMap().entrySet().iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, p131c.p161d.p266c.p269c.AbstractC4997j0
        public Iterator<K> iterator() {
            return Maps.m8145a(this.f30712a.entries().iterator());
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4969d, p131c.p161d.p266c.p269c.AbstractC4997j0
        public int remove(Object obj, int i) {
            C5006n.m24663a(i, "occurrences");
            if (i == 0) {
                return count(obj);
            }
            Collection collection = (Collection) Maps.m8116e(this.f30712a.asMap(), obj);
            if (collection == null) {
                return 0;
            }
            int size = collection.size();
            if (i >= size) {
                collection.clear();
            } else {
                Iterator it = collection.iterator();
                for (int i2 = 0; i2 < i; i2++) {
                    it.next();
                    it.remove();
                }
            }
            return size;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, p131c.p161d.p266c.p269c.AbstractC4997j0
        public int size() {
            return this.f30712a.size();
        }
    }

    /* renamed from: a */
    public static boolean m8103a(AbstractC4995i0<?, ?> i0Var, Object obj) {
        if (obj == i0Var) {
            return true;
        }
        if (obj instanceof AbstractC4995i0) {
            return i0Var.asMap().equals(((AbstractC4995i0) obj).asMap());
        }
        return false;
    }

    /* renamed from: c */
    public static <K, V> Collection<Map.Entry<K, V>> m8100c(Collection<Map.Entry<K, V>> collection) {
        return collection instanceof Set ? Maps.m8137a((Set) collection) : new Maps.C7581r(Collections.unmodifiableCollection(collection));
    }

    /* renamed from: d */
    public static <V> Collection<V> m8099d(Collection<V> collection) {
        return collection instanceof SortedSet ? Collections.unmodifiableSortedSet((SortedSet) collection) : collection instanceof Set ? Collections.unmodifiableSet((Set) collection) : collection instanceof List ? Collections.unmodifiableList((List) collection) : Collections.unmodifiableCollection(collection);
    }
}

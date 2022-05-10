package p131c.p161d.p266c.p269c;

import com.google.common.collect.Iterators;
import com.google.common.collect.Maps;
import com.google.common.collect.Multimaps;
import com.google.common.collect.Sets;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import p131c.p161d.p266c.p267a.C4933n;
/* renamed from: c.d.c.c.c */
/* loaded from: classes2-dex2jar.jar:c/d/c/c/c.class */
public abstract class AbstractC4963c<K, V> implements AbstractC4995i0<K, V> {
    public transient Map<K, Collection<V>> asMap;
    public transient Collection<Map.Entry<K, V>> entries;
    public transient Set<K> keySet;
    public transient AbstractC4997j0<K> keys;
    public transient Collection<V> values;

    /* renamed from: c.d.c.c.c$a */
    /* loaded from: classes2-dex2jar.jar:c/d/c/c/c$a.class */
    public class C4964a extends Multimaps.AbstractC7591b<K, V> {
        public C4964a() {
        }

        @Override // com.google.common.collect.Multimaps.AbstractC7591b
        /* renamed from: a */
        public AbstractC4995i0<K, V> mo8094a() {
            return AbstractC4963c.this;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<Map.Entry<K, V>> iterator() {
            return AbstractC4963c.this.entryIterator();
        }
    }

    /* renamed from: c.d.c.c.c$b */
    /* loaded from: classes2-dex2jar.jar:c/d/c/c/c$b.class */
    public class C4965b extends AbstractC4963c<K, V>.C4964a implements Set<Map.Entry<K, V>> {
        public C4965b(AbstractC4963c cVar) {
            super();
        }

        @Override // java.util.Collection, java.util.Set
        public boolean equals(Object obj) {
            return Sets.m8060a(this, obj);
        }

        @Override // java.util.Collection, java.util.Set
        public int hashCode() {
            return Sets.m8061a(this);
        }
    }

    /* renamed from: c.d.c.c.c$c */
    /* loaded from: classes2-dex2jar.jar:c/d/c/c/c$c.class */
    public class C4966c extends AbstractCollection<V> {
        public C4966c() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            AbstractC4963c.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return AbstractC4963c.this.containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return AbstractC4963c.this.valueIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return AbstractC4963c.this.size();
        }
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
    public Map<K, Collection<V>> asMap() {
        Map<K, Collection<V>> map = this.asMap;
        Map<K, Collection<V>> map2 = map;
        if (map == null) {
            map2 = createAsMap();
            this.asMap = map2;
        }
        return map2;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
    public boolean containsEntry(Object obj, Object obj2) {
        Collection<V> collection = asMap().get(obj);
        return collection != null && collection.contains(obj2);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
    public boolean containsValue(Object obj) {
        for (Collection<V> collection : asMap().values()) {
            if (collection.contains(obj)) {
                return true;
            }
        }
        return false;
    }

    public abstract Map<K, Collection<V>> createAsMap();

    public abstract Collection<Map.Entry<K, V>> createEntries();

    public abstract Set<K> createKeySet();

    public abstract AbstractC4997j0<K> createKeys();

    public abstract Collection<V> createValues();

    @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
    public Collection<Map.Entry<K, V>> entries() {
        Collection<Map.Entry<K, V>> collection = this.entries;
        Collection<Map.Entry<K, V>> collection2 = collection;
        if (collection == null) {
            collection2 = createEntries();
            this.entries = collection2;
        }
        return collection2;
    }

    public abstract Iterator<Map.Entry<K, V>> entryIterator();

    @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
    public boolean equals(Object obj) {
        return Multimaps.m8103a(this, obj);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
    public int hashCode() {
        return asMap().hashCode();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
    public Set<K> keySet() {
        Set<K> set = this.keySet;
        Set<K> set2 = set;
        if (set == null) {
            set2 = createKeySet();
            this.keySet = set2;
        }
        return set2;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
    public AbstractC4997j0<K> keys() {
        AbstractC4997j0<K> j0Var = this.keys;
        AbstractC4997j0<K> j0Var2 = j0Var;
        if (j0Var == null) {
            j0Var2 = createKeys();
            this.keys = j0Var2;
        }
        return j0Var2;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
    public abstract boolean put(K k, V v);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
    public boolean putAll(AbstractC4995i0<? extends K, ? extends V> i0Var) {
        boolean z = false;
        for (Map.Entry<? extends K, ? extends V> entry : i0Var.entries()) {
            z |= put(entry.getKey(), entry.getValue());
        }
        return z;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
    public boolean putAll(K k, Iterable<? extends V> iterable) {
        C4933n.m24795a(iterable);
        boolean z = true;
        boolean z2 = true;
        if (iterable instanceof Collection) {
            Collection<? extends V> collection = (Collection) iterable;
            if (collection.isEmpty() || !get(k).addAll(collection)) {
                z2 = false;
            }
            return z2;
        }
        Iterator<? extends V> it = iterable.iterator();
        if (!it.hasNext() || !Iterators.m8267a(get(k), it)) {
            z = false;
        }
        return z;
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
    public boolean remove(Object obj, Object obj2) {
        Collection<V> collection = asMap().get(obj);
        return collection != null && collection.remove(obj2);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
    public abstract Collection<V> replaceValues(K k, Iterable<? extends V> iterable);

    public String toString() {
        return asMap().toString();
    }

    public Iterator<V> valueIterator() {
        return Maps.m8124c(entries().iterator());
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
    public Collection<V> values() {
        Collection<V> collection = this.values;
        Collection<V> collection2 = collection;
        if (collection == null) {
            collection2 = createValues();
            this.values = collection2;
        }
        return collection2;
    }
}

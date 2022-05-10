package com.google.common.collect;

import java.io.Serializable;
import java.util.Map;
import p131c.p161d.p266c.p269c.AbstractC4978e1;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableMapValues.class */
public final class ImmutableMapValues<K, V> extends ImmutableCollection<V> {
    public final ImmutableMap<K, V> map;

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableMapValues$SerializedForm.class */
    public static class SerializedForm<V> implements Serializable {
        public static final long serialVersionUID = 0;
        public final ImmutableMap<?, V> map;

        public SerializedForm(ImmutableMap<?, V> immutableMap) {
            this.map = immutableMap;
        }

        public Object readResolve() {
            return this.map.values();
        }
    }

    /* renamed from: com.google.common.collect.ImmutableMapValues$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableMapValues$a.class */
    public class C7478a extends AbstractC4978e1<V> {

        /* renamed from: a */
        public final AbstractC4978e1<Map.Entry<K, V>> f30539a;

        public C7478a() {
            this.f30539a = ImmutableMapValues.this.map.entrySet().iterator();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f30539a.hasNext();
        }

        @Override // java.util.Iterator
        public V next() {
            return this.f30539a.next().getValue();
        }
    }

    public ImmutableMapValues(ImmutableMap<K, V> immutableMap) {
        this.map = immutableMap;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public ImmutableList<V> asList() {
        final ImmutableList<Map.Entry<K, V>> asList = this.map.entrySet().asList();
        return new ImmutableList<V>() { // from class: com.google.common.collect.ImmutableMapValues.2
            @Override // java.util.List
            public V get(int i) {
                return (V) ((Map.Entry) asList.get(i)).getValue();
            }

            @Override // com.google.common.collect.ImmutableCollection
            public boolean isPartialView() {
                return true;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                return asList.size();
            }
        };
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return obj != null && Iterators.m8262a(iterator(), obj);
    }

    @Override // com.google.common.collect.ImmutableCollection
    public boolean isPartialView() {
        return true;
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
    public AbstractC4978e1<V> iterator() {
        return new C7478a();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public int size() {
        return this.map.size();
    }

    @Override // com.google.common.collect.ImmutableCollection
    public Object writeReplace() {
        return new SerializedForm(this.map);
    }
}

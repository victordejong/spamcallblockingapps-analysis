package p131c.p161d.p266c.p269c;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
/* renamed from: c.d.c.c.x */
/* loaded from: classes2-dex2jar.jar:c/d/c/c/x.class */
public abstract class AbstractC5034x<K, V> extends AbstractC5040z implements AbstractC4995i0<K, V> {
    @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
    public abstract Map<K, Collection<V>> asMap();

    @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
    public abstract void clear();

    @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
    public boolean containsEntry(Object obj, Object obj2) {
        return delegate().containsEntry(obj, obj2);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
    public boolean containsKey(Object obj) {
        return delegate().containsKey(obj);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
    public boolean containsValue(Object obj) {
        return delegate().containsValue(obj);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5040z
    public abstract AbstractC4995i0<K, V> delegate();

    @Override // p131c.p161d.p266c.p269c.AbstractC5040z
    public abstract /* bridge */ /* synthetic */ Object delegate();

    @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
    public abstract Collection<Map.Entry<K, V>> entries();

    @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
    public boolean equals(Object obj) {
        return obj == this || delegate().equals(obj);
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
    public abstract Collection<V> get(K k);

    @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
    public int hashCode() {
        return delegate().hashCode();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
    public boolean isEmpty() {
        return delegate().isEmpty();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
    public abstract Set<K> keySet();

    @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
    public abstract AbstractC4997j0<K> keys();

    @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
    public abstract boolean put(K k, V v);

    @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
    public abstract boolean putAll(AbstractC4995i0<? extends K, ? extends V> i0Var);

    @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
    public abstract boolean putAll(K k, Iterable<? extends V> iterable);

    @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
    public abstract boolean remove(Object obj, Object obj2);

    @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
    public abstract Collection<V> removeAll(Object obj);

    @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
    public abstract Collection<V> replaceValues(K k, Iterable<? extends V> iterable);

    @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
    public int size() {
        return delegate().size();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
    public abstract Collection<V> values();
}

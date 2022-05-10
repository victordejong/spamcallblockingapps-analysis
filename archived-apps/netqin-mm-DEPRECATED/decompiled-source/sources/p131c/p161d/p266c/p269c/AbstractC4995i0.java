package p131c.p161d.p266c.p269c;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
/* renamed from: c.d.c.c.i0 */
/* loaded from: classes2-dex2jar.jar:c/d/c/c/i0.class */
public interface AbstractC4995i0<K, V> {
    Map<K, Collection<V>> asMap();

    void clear();

    boolean containsEntry(Object obj, Object obj2);

    boolean containsKey(Object obj);

    boolean containsValue(Object obj);

    Collection<Map.Entry<K, V>> entries();

    boolean equals(Object obj);

    Collection<V> get(K k);

    int hashCode();

    boolean isEmpty();

    Set<K> keySet();

    AbstractC4997j0<K> keys();

    boolean put(K k, V v);

    boolean putAll(AbstractC4995i0<? extends K, ? extends V> i0Var);

    boolean putAll(K k, Iterable<? extends V> iterable);

    boolean remove(Object obj, Object obj2);

    Collection<V> removeAll(Object obj);

    Collection<V> replaceValues(K k, Iterable<? extends V> iterable);

    int size();

    Collection<V> values();
}

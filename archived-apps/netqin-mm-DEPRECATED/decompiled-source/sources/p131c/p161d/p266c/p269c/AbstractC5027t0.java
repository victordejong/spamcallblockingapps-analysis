package p131c.p161d.p266c.p269c;

import java.util.Map;
import java.util.Set;
/* renamed from: c.d.c.c.t0 */
/* loaded from: classes2-dex2jar.jar:c/d/c/c/t0.class */
public interface AbstractC5027t0<K, V> extends AbstractC4995i0<K, V> {
    @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
    Set<Map.Entry<K, V>> entries();

    @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
    Set<V> get(K k);

    @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
    Set<V> removeAll(Object obj);

    @Override // p131c.p161d.p266c.p269c.AbstractC4995i0
    Set<V> replaceValues(K k, Iterable<? extends V> iterable);
}

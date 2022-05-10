package p131c.p161d.p266c.p269c;

import java.util.Map;
import java.util.Set;
/* renamed from: c.d.c.c.k */
/* loaded from: classes2-dex2jar.jar:c/d/c/c/k.class */
public interface AbstractC4999k<K, V> extends Map<K, V> {
    V forcePut(K k, V v);

    AbstractC4999k<V, K> inverse();

    @Override // java.util.Map
    Set<V> values();
}

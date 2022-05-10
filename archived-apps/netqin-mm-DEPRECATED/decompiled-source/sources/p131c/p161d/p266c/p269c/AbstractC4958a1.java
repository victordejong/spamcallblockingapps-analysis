package p131c.p161d.p266c.p269c;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
/* renamed from: c.d.c.c.a1 */
/* loaded from: classes2-dex2jar.jar:c/d/c/c/a1.class */
public interface AbstractC4958a1<R, C, V> {

    /* renamed from: c.d.c.c.a1$a */
    /* loaded from: classes2-dex2jar.jar:c/d/c/c/a1$a.class */
    public interface AbstractC4959a<R, C, V> {
        C getColumnKey();

        R getRowKey();

        V getValue();
    }

    Set<AbstractC4959a<R, C, V>> cellSet();

    void clear();

    Map<R, V> column(C c);

    Set<C> columnKeySet();

    Map<C, Map<R, V>> columnMap();

    boolean contains(Object obj, Object obj2);

    boolean containsColumn(Object obj);

    boolean containsRow(Object obj);

    boolean containsValue(Object obj);

    boolean equals(Object obj);

    V get(Object obj, Object obj2);

    int hashCode();

    boolean isEmpty();

    V put(R r, C c, V v);

    void putAll(AbstractC4958a1<? extends R, ? extends C, ? extends V> a1Var);

    V remove(Object obj, Object obj2);

    Map<C, V> row(R r);

    Set<R> rowKeySet();

    Map<R, Map<C, V>> rowMap();

    int size();

    Collection<V> values();
}

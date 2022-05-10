package p131c.p161d.p266c.p269c;

import java.util.Comparator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.SortedMap;
import p131c.p161d.p266c.p267a.C4933n;
/* renamed from: c.d.c.c.c0 */
/* loaded from: classes2-dex2jar.jar:c/d/c/c/c0.class */
public abstract class AbstractC4967c0<K, V> extends AbstractC5030v<K, V> implements SortedMap<K, V> {
    private int unsafeCompare(Object obj, Object obj2) {
        Comparator<? super K> comparator = comparator();
        return comparator == null ? ((Comparable) obj).compareTo(obj2) : comparator.compare(obj, obj2);
    }

    @Override // java.util.SortedMap
    public Comparator<? super K> comparator() {
        return delegate().comparator();
    }

    @Override // p131c.p161d.p266c.p269c.AbstractC5030v, p131c.p161d.p266c.p269c.AbstractC5040z
    public abstract /* bridge */ /* synthetic */ Object delegate();

    @Override // p131c.p161d.p266c.p269c.AbstractC5030v, p131c.p161d.p266c.p269c.AbstractC5040z
    public abstract /* bridge */ /* synthetic */ Map delegate();

    @Override // p131c.p161d.p266c.p269c.AbstractC5030v, p131c.p161d.p266c.p269c.AbstractC5040z
    public abstract SortedMap<K, V> delegate();

    @Override // java.util.SortedMap
    public K firstKey() {
        return delegate().firstKey();
    }

    @Override // java.util.SortedMap
    public abstract SortedMap<K, V> headMap(K k);

    @Override // java.util.SortedMap
    public K lastKey() {
        return delegate().lastKey();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p131c.p161d.p266c.p269c.AbstractC5030v
    public boolean standardContainsKey(Object obj) {
        boolean z = false;
        try {
            if (unsafeCompare(tailMap(obj).firstKey(), obj) == 0) {
                z = true;
            }
        } catch (ClassCastException | NullPointerException | NoSuchElementException e) {
        }
        return z;
    }

    public SortedMap<K, V> standardSubMap(K k, K k2) {
        C4933n.m24790a(unsafeCompare(k, k2) <= 0, "fromKey must be <= toKey");
        return tailMap(k).headMap(k2);
    }

    @Override // java.util.SortedMap
    public abstract SortedMap<K, V> subMap(K k, K k2);

    @Override // java.util.SortedMap
    public abstract SortedMap<K, V> tailMap(K k);
}

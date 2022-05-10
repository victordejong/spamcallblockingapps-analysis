package p131c.p161d.p266c.p269c;

import java.util.Map;
import p131c.p161d.p266c.p267a.C4928k;
/* renamed from: c.d.c.c.b */
/* loaded from: classes2-dex2jar.jar:c/d/c/c/b.class */
public abstract class AbstractC4960b<K, V> implements Map.Entry<K, V> {
    @Override // java.util.Map.Entry
    public boolean equals(Object obj) {
        boolean z = false;
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            z = false;
            if (C4928k.m24808a(getKey(), entry.getKey())) {
                z = false;
                if (C4928k.m24808a(getValue(), entry.getValue())) {
                    z = true;
                }
            }
        }
        return z;
    }

    @Override // java.util.Map.Entry
    public abstract K getKey();

    @Override // java.util.Map.Entry
    public abstract V getValue();

    @Override // java.util.Map.Entry
    public int hashCode() {
        K key = getKey();
        V value = getValue();
        int i = 0;
        int hashCode = key == null ? 0 : key.hashCode();
        if (value != null) {
            i = value.hashCode();
        }
        return hashCode ^ i;
    }

    @Override // java.util.Map.Entry
    public V setValue(V v) {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        return getKey() + "=" + getValue();
    }
}

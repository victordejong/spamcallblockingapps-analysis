package p131c.p161d.p266c.p269c;

import java.util.Map;
import p131c.p161d.p266c.p267a.C4928k;
/* renamed from: c.d.c.c.w */
/* loaded from: classes2-dex2jar.jar:c/d/c/c/w.class */
public abstract class AbstractC5032w<K, V> extends AbstractC5040z implements Map.Entry<K, V> {
    @Override // p131c.p161d.p266c.p269c.AbstractC5040z
    public abstract Map.Entry<K, V> delegate();

    @Override // java.util.Map.Entry
    public boolean equals(Object obj) {
        return delegate().equals(obj);
    }

    @Override // java.util.Map.Entry
    public K getKey() {
        return delegate().getKey();
    }

    @Override // java.util.Map.Entry
    public V getValue() {
        return delegate().getValue();
    }

    @Override // java.util.Map.Entry
    public int hashCode() {
        return delegate().hashCode();
    }

    @Override // java.util.Map.Entry
    public V setValue(V v) {
        return delegate().setValue(v);
    }

    public boolean standardEquals(Object obj) {
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
}

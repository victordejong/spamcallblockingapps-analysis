package p012b.p027c.p028a.p030b;

import java.util.HashMap;
import java.util.Map;
import p012b.p027c.p028a.p030b.C0751b;
/* renamed from: b.c.a.b.a */
/* loaded from: classes-dex2jar.jar:b/c/a/b/a.class */
public class C0750a<K, V> extends C0751b<K, V> {

    /* renamed from: e */
    public HashMap<K, C0751b.C0754c<K, V>> f3606e = new HashMap<>();

    @Override // p012b.p027c.p028a.p030b.C0751b
    /* renamed from: a */
    public C0751b.C0754c<K, V> mo36142a(K k) {
        return this.f3606e.get(k);
    }

    @Override // p012b.p027c.p028a.p030b.C0751b
    /* renamed from: b */
    public V mo36139b(K k, V v) {
        C0751b.C0754c<K, V> a = mo36142a(k);
        if (a != null) {
            return a.f3612b;
        }
        this.f3606e.put(k, m36141a(k, v));
        return null;
    }

    /* renamed from: b */
    public Map.Entry<K, V> m36144b(K k) {
        if (contains(k)) {
            return this.f3606e.get(k).f3614d;
        }
        return null;
    }

    public boolean contains(K k) {
        return this.f3606e.containsKey(k);
    }

    @Override // p012b.p027c.p028a.p030b.C0751b
    public V remove(K k) {
        V v = (V) super.remove(k);
        this.f3606e.remove(k);
        return v;
    }
}

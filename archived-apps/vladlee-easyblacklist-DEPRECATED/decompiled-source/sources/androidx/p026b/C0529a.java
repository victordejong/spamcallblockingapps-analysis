package androidx.p026b;

import androidx.p026b.AbstractC0536h;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
/* renamed from: androidx.b.a */
/* loaded from: classes-dex2jar.jar:androidx/b/a.class */
public final class C0529a<K, V> extends C0542i<K, V> implements Map<K, V> {

    /* renamed from: a */
    AbstractC0536h<K, V> f2461a;

    public C0529a() {
    }

    public C0529a(int i) {
        super(i);
    }

    public C0529a(C0542i iVar) {
        super(iVar);
    }

    /* renamed from: a */
    private AbstractC0536h<K, V> m8955a() {
        if (this.f2461a == null) {
            this.f2461a = new C0530b(this);
        }
        return this.f2461a;
    }

    /* renamed from: a */
    public final boolean m8954a(Collection<?> collection) {
        return AbstractC0536h.m8920a((Map) this, collection);
    }

    @Override // java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        AbstractC0536h<K, V> a = m8955a();
        if (a.f2490b == null) {
            a.f2490b = new AbstractC0536h.C0538b();
        }
        return a.f2490b;
    }

    @Override // java.util.Map
    public final Set<K> keySet() {
        return m8955a().m8913d();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public final void putAll(Map<? extends K, ? extends V> map) {
        m8911a(this.f2511h + map.size());
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map
    public final Collection<V> values() {
        AbstractC0536h<K, V> a = m8955a();
        if (a.f2492d == null) {
            a.f2492d = new AbstractC0536h.C0541e();
        }
        return a.f2492d;
    }
}

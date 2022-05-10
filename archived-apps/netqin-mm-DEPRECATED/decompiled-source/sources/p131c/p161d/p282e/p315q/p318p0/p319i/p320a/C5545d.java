package p131c.p161d.p282e.p315q.p318p0.p319i.p320a;

import java.util.Collections;
import java.util.Map;
/* renamed from: c.d.e.q.p0.i.a.d */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/i/a/d.class */
public final class C5545d<K, V> {

    /* renamed from: a */
    public final Map<K, V> f18518a;

    public C5545d(int i) {
        this.f18518a = C5542a.m23593b(i);
    }

    /* renamed from: a */
    public static <K, V> C5545d<K, V> m23589a(int i) {
        return new C5545d<>(i);
    }

    /* renamed from: a */
    public C5545d<K, V> m23588a(K k, V v) {
        this.f18518a.put(k, v);
        return this;
    }

    /* renamed from: a */
    public Map<K, V> m23590a() {
        return this.f18518a.size() != 0 ? Collections.unmodifiableMap(this.f18518a) : Collections.emptyMap();
    }
}

package p067i.p068a.p082d.p084d;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.function.Function;
import p067i.p068a.p082d.p083c.AbstractC2085f;
/* renamed from: i.a.d.d.a */
/* loaded from: classes2-dex2jar.jar:i/a/d/d/a.class */
public final class C2086a<V> {

    /* renamed from: a */
    private final ConcurrentMap<AbstractC2085f, V> f5684a = new ConcurrentHashMap();

    /* renamed from: b */
    private final Function<AbstractC2085f, V> f5685b;

    public C2086a(Function<AbstractC2085f, V> function) {
        this.f5685b = function;
    }

    /* renamed from: a */
    public final V m246a(String str, String str2) {
        AbstractC2085f m249a = AbstractC2085f.m249a(str, str2);
        V v = this.f5684a.get(m249a);
        if (v != null) {
            return v;
        }
        V apply = this.f5685b.apply(m249a);
        V putIfAbsent = this.f5684a.putIfAbsent(m249a, apply);
        if (putIfAbsent != null) {
            apply = putIfAbsent;
        }
        return apply;
    }
}

package p037i.p038a.p052d.p054d;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.function.Function;
import p037i.p038a.p052d.p053c.AbstractC0417f;
/* renamed from: i.a.d.d.a */
/* loaded from: classes2-dex2jar.jar:i/a/d/d/a.class */
public final class C0418a<V> {

    /* renamed from: a */
    private final ConcurrentMap<AbstractC0417f, V> f1005a = new ConcurrentHashMap();

    /* renamed from: b */
    private final Function<AbstractC0417f, V> f1006b;

    public C0418a(Function<AbstractC0417f, V> function) {
        this.f1006b = function;
    }

    /* renamed from: a */
    public final V m246a(String str, String str2) {
        AbstractC0417f a = AbstractC0417f.m249a(str, str2);
        V v = this.f1005a.get(a);
        if (v != null) {
            return v;
        }
        V apply = this.f1006b.apply(a);
        V putIfAbsent = this.f1005a.putIfAbsent(a, apply);
        if (putIfAbsent != null) {
            apply = putIfAbsent;
        }
        return apply;
    }
}

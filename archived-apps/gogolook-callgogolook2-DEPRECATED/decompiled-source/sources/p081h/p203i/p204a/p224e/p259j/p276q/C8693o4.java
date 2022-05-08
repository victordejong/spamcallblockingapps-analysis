package p081h.p203i.p204a.p224e.p259j.p276q;

import java.util.Map;
/* renamed from: h.i.a.e.j.q.o4 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/o4.class */
public final class C8693o4<K> implements Map.Entry<K, Object> {

    /* renamed from: a */
    public Map.Entry<K, C8674m4> f19907a;

    public C8693o4(Map.Entry<K, C8674m4> entry) {
        this.f19907a = entry;
    }

    /* renamed from: a */
    public final C8674m4 m17278a() {
        return this.f19907a.getValue();
    }

    @Override // java.util.Map.Entry
    public final K getKey() {
        return this.f19907a.getKey();
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        if (this.f19907a.getValue() == null) {
            return null;
        }
        C8674m4.m17391c();
        throw null;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (obj instanceof AbstractC8648j5) {
            return this.f19907a.getValue().m17215b((AbstractC8648j5) obj);
        }
        throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
    }
}

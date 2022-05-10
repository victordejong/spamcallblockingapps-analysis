package p131c.p161d.p367h;

import java.util.Iterator;
import java.util.Map;
/* renamed from: c.d.h.a0 */
/* loaded from: classes2-dex2jar.jar:c/d/h/a0.class */
public class C6277a0 extends C6283b0 {

    /* renamed from: e */
    public final AbstractC6354n0 f19851e;

    /* renamed from: c.d.h.a0$b */
    /* loaded from: classes2-dex2jar.jar:c/d/h/a0$b.class */
    public static class C6279b<K> implements Map.Entry<K, Object> {

        /* renamed from: a */
        public Map.Entry<K, C6277a0> f19852a;

        public C6279b(Map.Entry<K, C6277a0> entry) {
            this.f19852a = entry;
        }

        /* renamed from: a */
        public C6277a0 m21688a() {
            return this.f19852a.getValue();
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f19852a.getKey();
        }

        @Override // java.util.Map.Entry
        public Object getValue() {
            C6277a0 value = this.f19852a.getValue();
            if (value == null) {
                return null;
            }
            return value.m21689c();
        }

        @Override // java.util.Map.Entry
        public Object setValue(Object obj) {
            if (obj instanceof AbstractC6354n0) {
                return this.f19852a.getValue().m21676c((AbstractC6354n0) obj);
            }
            throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
        }
    }

    /* renamed from: c.d.h.a0$c */
    /* loaded from: classes2-dex2jar.jar:c/d/h/a0$c.class */
    public static class C6280c<K> implements Iterator<Map.Entry<K, Object>> {

        /* renamed from: a */
        public Iterator<Map.Entry<K, Object>> f19853a;

        public C6280c(Iterator<Map.Entry<K, Object>> it) {
            this.f19853a = it;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f19853a.hasNext();
        }

        @Override // java.util.Iterator
        public Map.Entry<K, Object> next() {
            Map.Entry<K, Object> next = this.f19853a.next();
            return next.getValue() instanceof C6277a0 ? new C6279b(next) : next;
        }

        @Override // java.util.Iterator
        public void remove() {
            this.f19853a.remove();
        }
    }

    /* renamed from: c */
    public AbstractC6354n0 m21689c() {
        return m21677b(this.f19851e);
    }

    @Override // p131c.p161d.p367h.C6283b0
    public boolean equals(Object obj) {
        return m21689c().equals(obj);
    }

    @Override // p131c.p161d.p367h.C6283b0
    public int hashCode() {
        return m21689c().hashCode();
    }

    public String toString() {
        return m21689c().toString();
    }
}

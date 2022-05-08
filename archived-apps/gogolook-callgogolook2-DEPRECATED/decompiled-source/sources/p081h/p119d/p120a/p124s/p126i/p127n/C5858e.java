package p081h.p119d.p120a.p124s.p126i.p127n;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import p081h.p119d.p120a.p124s.p126i.p127n.AbstractC5865h;
/* renamed from: h.d.a.s.i.n.e */
/* loaded from: classes-dex2jar.jar:h/d/a/s/i/n/e.class */
public class C5858e<K extends AbstractC5865h, V> {

    /* renamed from: a */
    public final C5859a<K, V> f14768a = new C5859a<>();

    /* renamed from: b */
    public final Map<K, C5859a<K, V>> f14769b = new HashMap();

    /* renamed from: h.d.a.s.i.n.e$a */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/i/n/e$a.class */
    public static class C5859a<K, V> {

        /* renamed from: a */
        public final K f14770a;

        /* renamed from: b */
        public List<V> f14771b;

        /* renamed from: c */
        public C5859a<K, V> f14772c;

        /* renamed from: d */
        public C5859a<K, V> f14773d;

        public C5859a() {
            this(null);
        }

        public C5859a(K k) {
            this.f14773d = this;
            this.f14772c = this;
            this.f14770a = k;
        }

        /* renamed from: a */
        public V m24227a() {
            int b = m24224b();
            return b > 0 ? this.f14771b.remove(b - 1) : null;
        }

        /* renamed from: a */
        public void m24225a(V v) {
            if (this.f14771b == null) {
                this.f14771b = new ArrayList();
            }
            this.f14771b.add(v);
        }

        /* renamed from: b */
        public int m24224b() {
            List<V> list = this.f14771b;
            return list != null ? list.size() : 0;
        }
    }

    /* renamed from: c */
    public static <K, V> void m24229c(C5859a<K, V> aVar) {
        C5859a<K, V> aVar2 = aVar.f14773d;
        aVar2.f14772c = aVar.f14772c;
        aVar.f14772c.f14773d = aVar2;
    }

    /* renamed from: d */
    public static <K, V> void m24228d(C5859a<K, V> aVar) {
        aVar.f14772c.f14773d = aVar;
        aVar.f14773d.f14772c = aVar;
    }

    /* renamed from: a */
    public V m24234a() {
        for (C5859a aVar = this.f14768a.f14773d; !aVar.equals(this.f14768a); aVar = aVar.f14773d) {
            V v = (V) aVar.m24227a();
            if (v != null) {
                return v;
            }
            m24229c(aVar);
            this.f14769b.remove(aVar.f14770a);
            ((AbstractC5865h) aVar.f14770a).mo24199a();
        }
        return null;
    }

    /* renamed from: a */
    public V m24232a(K k) {
        C5859a<K, V> aVar;
        C5859a<K, V> aVar2 = this.f14769b.get(k);
        if (aVar2 == null) {
            C5859a<K, V> aVar3 = new C5859a<>(k);
            this.f14769b.put(k, aVar3);
            aVar = aVar3;
        } else {
            k.mo24199a();
            aVar = aVar2;
        }
        m24233a(aVar);
        return aVar.m24227a();
    }

    /* renamed from: a */
    public final void m24233a(C5859a<K, V> aVar) {
        m24229c(aVar);
        C5859a<K, V> aVar2 = this.f14768a;
        aVar.f14773d = aVar2;
        aVar.f14772c = aVar2.f14772c;
        m24228d(aVar);
    }

    /* renamed from: a */
    public void m24231a(K k, V v) {
        C5859a<K, V> aVar;
        C5859a<K, V> aVar2 = this.f14769b.get(k);
        if (aVar2 == null) {
            C5859a<K, V> aVar3 = new C5859a<>(k);
            m24230b(aVar3);
            this.f14769b.put(k, aVar3);
            aVar = aVar3;
        } else {
            k.mo24199a();
            aVar = aVar2;
        }
        aVar.m24225a((C5859a<K, V>) v);
    }

    /* renamed from: b */
    public final void m24230b(C5859a<K, V> aVar) {
        m24229c(aVar);
        C5859a<K, V> aVar2 = this.f14768a;
        aVar.f14773d = aVar2.f14773d;
        aVar.f14772c = aVar2;
        m24228d(aVar);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("GroupedLinkedMap( ");
        boolean z = false;
        for (C5859a aVar = this.f14768a.f14772c; !aVar.equals(this.f14768a); aVar = aVar.f14772c) {
            z = true;
            sb.append('{');
            sb.append(aVar.f14770a);
            sb.append(':');
            sb.append(aVar.m24224b());
            sb.append("}, ");
        }
        if (z) {
            sb.delete(sb.length() - 2, sb.length());
        }
        sb.append(" )");
        return sb.toString();
    }
}

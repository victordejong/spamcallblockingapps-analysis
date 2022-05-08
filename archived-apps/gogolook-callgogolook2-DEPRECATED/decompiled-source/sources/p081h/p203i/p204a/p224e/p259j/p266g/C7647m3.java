package p081h.p203i.p204a.p224e.p259j.p266g;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: h.i.a.e.j.g.m3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/m3.class */
public final class C7647m3 implements Iterator<Map.Entry<K, V>> {

    /* renamed from: a */
    public int f17933a;

    /* renamed from: b */
    public boolean f17934b;

    /* renamed from: c */
    public Iterator<Map.Entry<K, V>> f17935c;

    /* renamed from: d */
    public final /* synthetic */ C7578e3 f17936d;

    public C7647m3(C7578e3 e3Var) {
        this.f17936d = e3Var;
        this.f17933a = -1;
    }

    public /* synthetic */ C7647m3(C7578e3 e3Var, C7590f3 f3Var) {
        this(e3Var);
    }

    /* renamed from: a */
    public final Iterator<Map.Entry<K, V>> m19971a() {
        Map map;
        if (this.f17935c == null) {
            map = this.f17936d.f17819c;
            this.f17935c = map.entrySet().iterator();
        }
        return this.f17935c;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        Map map;
        int i = this.f17933a + 1;
        list = this.f17936d.f17818b;
        if (i < list.size()) {
            return true;
        }
        map = this.f17936d.f17819c;
        return !map.isEmpty() && m19971a().hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        List list;
        Object next;
        List list2;
        this.f17934b = true;
        int i = this.f17933a + 1;
        this.f17933a = i;
        list = this.f17936d.f17818b;
        if (i < list.size()) {
            list2 = this.f17936d.f17818b;
            next = list2.get(this.f17933a);
        } else {
            next = m19971a().next();
        }
        return (Map.Entry) next;
    }

    @Override // java.util.Iterator
    public final void remove() {
        List list;
        if (this.f17934b) {
            this.f17934b = false;
            this.f17936d.m20193e();
            int i = this.f17933a;
            list = this.f17936d.f17818b;
            if (i < list.size()) {
                C7578e3 e3Var = this.f17936d;
                int i2 = this.f17933a;
                this.f17933a = i2 - 1;
                e3Var.m20200b(i2);
                return;
            }
            m19971a().remove();
            return;
        }
        throw new IllegalStateException("remove() was called before next()");
    }
}

package p131c.p161d.p170b.p224d.p252g.p255c;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: c.d.b.d.g.c.t1 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/c/t1.class */
public final class C4416t1 implements Iterator<Map.Entry<K, V>> {

    /* renamed from: a */
    public int f16637a;

    /* renamed from: b */
    public Iterator<Map.Entry<K, V>> f16638b;

    /* renamed from: c */
    public final /* synthetic */ C4406r1 f16639c;

    public C4416t1(C4406r1 r1Var) {
        List list;
        this.f16639c = r1Var;
        list = this.f16639c.f16621b;
        this.f16637a = list.size();
    }

    public /* synthetic */ C4416t1(C4406r1 r1Var, C4411s1 s1Var) {
        this(r1Var);
    }

    /* renamed from: a */
    public final Iterator<Map.Entry<K, V>> m25635a() {
        Map map;
        if (this.f16638b == null) {
            map = this.f16639c.f16625f;
            this.f16638b = map.entrySet().iterator();
        }
        return this.f16638b;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        int i = this.f16637a;
        if (i > 0) {
            list = this.f16639c.f16621b;
            if (i <= list.size()) {
                return true;
            }
        }
        return m25635a().hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        List list;
        Object obj;
        if (m25635a().hasNext()) {
            obj = m25635a().next();
        } else {
            list = this.f16639c.f16621b;
            int i = this.f16637a - 1;
            this.f16637a = i;
            obj = list.get(i);
        }
        return (Map.Entry) obj;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}

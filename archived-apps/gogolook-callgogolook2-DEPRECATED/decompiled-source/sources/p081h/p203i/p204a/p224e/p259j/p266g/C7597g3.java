package p081h.p203i.p204a.p224e.p259j.p266g;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: h.i.a.e.j.g.g3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/g3.class */
public final class C7597g3 implements Iterator<Map.Entry<K, V>> {

    /* renamed from: a */
    public int f17857a;

    /* renamed from: b */
    public Iterator<Map.Entry<K, V>> f17858b;

    /* renamed from: c */
    public final /* synthetic */ C7578e3 f17859c;

    public C7597g3(C7578e3 e3Var) {
        List list;
        this.f17859c = e3Var;
        list = this.f17859c.f17818b;
        this.f17857a = list.size();
    }

    public /* synthetic */ C7597g3(C7578e3 e3Var, C7590f3 f3Var) {
        this(e3Var);
    }

    /* renamed from: a */
    public final Iterator<Map.Entry<K, V>> m20148a() {
        Map map;
        if (this.f17858b == null) {
            map = this.f17859c.f17822f;
            this.f17858b = map.entrySet().iterator();
        }
        return this.f17858b;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        int i = this.f17857a;
        if (i > 0) {
            list = this.f17859c.f17818b;
            if (i <= list.size()) {
                return true;
            }
        }
        return m20148a().hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        List list;
        Object obj;
        if (m20148a().hasNext()) {
            obj = m20148a().next();
        } else {
            list = this.f17859c.f17818b;
            int i = this.f17857a - 1;
            this.f17857a = i;
            obj = list.get(i);
        }
        return (Map.Entry) obj;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}

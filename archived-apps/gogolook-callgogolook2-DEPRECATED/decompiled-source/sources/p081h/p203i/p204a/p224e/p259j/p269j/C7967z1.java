package p081h.p203i.p204a.p224e.p259j.p269j;

import java.util.Iterator;
import java.util.Map;
/* renamed from: h.i.a.e.j.j.z1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/z1.class */
public final class C7967z1<K> implements Iterator<Map.Entry<K, Object>> {

    /* renamed from: a */
    public Iterator<Map.Entry<K, Object>> f18687a;

    public C7967z1(Iterator<Map.Entry<K, Object>> it) {
        this.f18687a = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f18687a.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        Map.Entry<K, Object> next = this.f18687a.next();
        return next.getValue() instanceof C7945w1 ? new C7959y1(next) : next;
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f18687a.remove();
    }
}

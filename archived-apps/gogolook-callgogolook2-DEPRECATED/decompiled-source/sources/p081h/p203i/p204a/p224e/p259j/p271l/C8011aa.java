package p081h.p203i.p204a.p224e.p259j.p271l;

import java.util.Iterator;
import java.util.Map;
/* renamed from: h.i.a.e.j.l.aa */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/aa.class */
public final class C8011aa<K> implements Iterator<Map.Entry<K, Object>> {

    /* renamed from: a */
    public Iterator<Map.Entry<K, Object>> f18738a;

    public C8011aa(Iterator<Map.Entry<K, Object>> it) {
        this.f18738a = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f18738a.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        Map.Entry<K, Object> next = this.f18738a.next();
        return next.getValue() instanceof C8482z9 ? new C8029ba(next) : next;
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f18738a.remove();
    }
}

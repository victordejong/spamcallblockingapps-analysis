package p131c.p161d.p170b.p224d.p252g.p255c;

import com.google.android.gms.internal.clearcut.zzcr;
import java.util.Iterator;
import java.util.Map;
/* renamed from: c.d.b.d.g.c.n0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/c/n0.class */
public final class C4385n0<K> implements Iterator<Map.Entry<K, Object>> {

    /* renamed from: a */
    public Iterator<Map.Entry<K, Object>> f16598a;

    public C4385n0(Iterator<Map.Entry<K, Object>> it) {
        this.f16598a = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f16598a.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        Map.Entry<K, Object> next = this.f16598a.next();
        return next.getValue() instanceof zzcr ? new C4380m0(next) : next;
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f16598a.remove();
    }
}

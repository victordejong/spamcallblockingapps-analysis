package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzeko;
import java.util.Iterator;
import java.util.Map;
/* renamed from: c.d.b.d.g.a.y70 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/y70.class */
public final class y70<K> implements Iterator<Map.Entry<K, Object>> {

    /* renamed from: a */
    public Iterator<Map.Entry<K, Object>> f16096a;

    public y70(Iterator<Map.Entry<K, Object>> it) {
        this.f16096a = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f16096a.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        Map.Entry<K, Object> next = this.f16096a.next();
        return next.getValue() instanceof zzeko ? new z70(next) : next;
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f16096a.remove();
    }
}

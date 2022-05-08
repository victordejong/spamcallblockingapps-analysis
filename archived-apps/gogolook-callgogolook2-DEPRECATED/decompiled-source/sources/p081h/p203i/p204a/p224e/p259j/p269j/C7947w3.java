package p081h.p203i.p204a.p224e.p259j.p269j;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
/* renamed from: h.i.a.e.j.j.w3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/w3.class */
public class C7947w3 extends AbstractSet<Map.Entry<K, V>> {

    /* renamed from: a */
    public final /* synthetic */ C7876n3 f18638a;

    public C7947w3(C7876n3 n3Var) {
        this.f18638a = n3Var;
    }

    public /* synthetic */ C7947w3(C7876n3 n3Var, C7886o3 o3Var) {
        this(n3Var);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public /* synthetic */ boolean add(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        if (contains(entry)) {
            return false;
        }
        this.f18638a.m19138a((C7876n3) ((Comparable) entry.getKey()), (Comparable) entry.getValue());
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        this.f18638a.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        Object obj2 = this.f18638a.get(entry.getKey());
        Object value = entry.getValue();
        if (obj2 != value) {
            return obj2 != null && obj2.equals(value);
        }
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<Map.Entry<K, V>> iterator() {
        return new C7940v3(this.f18638a, null);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        if (!contains(entry)) {
            return false;
        }
        this.f18638a.remove(entry.getKey());
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.f18638a.size();
    }
}

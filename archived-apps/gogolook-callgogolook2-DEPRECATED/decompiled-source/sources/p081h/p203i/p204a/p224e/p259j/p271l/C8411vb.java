package p081h.p203i.p204a.p224e.p259j.p271l;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
/* renamed from: h.i.a.e.j.l.vb */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/vb.class */
public class C8411vb extends AbstractSet<Map.Entry<K, V>> {

    /* renamed from: a */
    public final /* synthetic */ C8288ob f19362a;

    public C8411vb(C8288ob obVar) {
        this.f19362a = obVar;
    }

    public /* synthetic */ C8411vb(C8288ob obVar, C8266nb nbVar) {
        this(obVar);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public /* synthetic */ boolean add(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        if (contains(entry)) {
            return false;
        }
        this.f19362a.m18232a((C8288ob) ((Comparable) entry.getKey()), (Comparable) entry.getValue());
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        this.f19362a.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        Object obj2 = this.f19362a.get(entry.getKey());
        Object value = entry.getValue();
        if (obj2 != value) {
            return obj2 != null && obj2.equals(value);
        }
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<Map.Entry<K, V>> iterator() {
        return new C8431wb(this.f19362a, null);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        if (!contains(entry)) {
            return false;
        }
        this.f19362a.remove(entry.getKey());
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.f19362a.size();
    }
}

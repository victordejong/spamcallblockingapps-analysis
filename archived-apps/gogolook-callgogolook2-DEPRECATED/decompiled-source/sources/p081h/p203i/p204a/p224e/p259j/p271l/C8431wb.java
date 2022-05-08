package p081h.p203i.p204a.p224e.p259j.p271l;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: h.i.a.e.j.l.wb */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/wb.class */
public final class C8431wb implements Iterator<Map.Entry<K, V>> {

    /* renamed from: a */
    public int f19398a;

    /* renamed from: b */
    public boolean f19399b;

    /* renamed from: c */
    public Iterator<Map.Entry<K, V>> f19400c;

    /* renamed from: d */
    public final /* synthetic */ C8288ob f19401d;

    public C8431wb(C8288ob obVar) {
        this.f19401d = obVar;
        this.f19398a = -1;
    }

    public /* synthetic */ C8431wb(C8288ob obVar, C8266nb nbVar) {
        this(obVar);
    }

    /* renamed from: a */
    public final Iterator<Map.Entry<K, V>> m18101a() {
        Map map;
        if (this.f19400c == null) {
            map = this.f19401d.f19110c;
            this.f19400c = map.entrySet().iterator();
        }
        return this.f19400c;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        Map map;
        int i = this.f19398a + 1;
        list = this.f19401d.f19109b;
        if (i < list.size()) {
            return true;
        }
        map = this.f19401d.f19110c;
        return !map.isEmpty() && m18101a().hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        List list;
        List list2;
        this.f19399b = true;
        int i = this.f19398a + 1;
        this.f19398a = i;
        list = this.f19401d.f19109b;
        if (i >= list.size()) {
            return (Map.Entry) m18101a().next();
        }
        list2 = this.f19401d.f19109b;
        return (Map.Entry) list2.get(this.f19398a);
    }

    @Override // java.util.Iterator
    public final void remove() {
        List list;
        if (this.f19399b) {
            this.f19399b = false;
            this.f19401d.m18222f();
            int i = this.f19398a;
            list = this.f19401d.f19109b;
            if (i < list.size()) {
                C8288ob obVar = this.f19401d;
                int i2 = this.f19398a;
                this.f19398a = i2 - 1;
                obVar.m18230b(i2);
                return;
            }
            m18101a().remove();
            return;
        }
        throw new IllegalStateException("remove() was called before next()");
    }
}

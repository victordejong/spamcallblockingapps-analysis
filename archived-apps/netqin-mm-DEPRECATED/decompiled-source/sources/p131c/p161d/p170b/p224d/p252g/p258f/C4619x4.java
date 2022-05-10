package p131c.p161d.p170b.p224d.p252g.p258f;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: c.d.b.d.g.f.x4 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/x4.class */
public final class C4619x4 implements Iterator<Map.Entry<K, V>> {

    /* renamed from: a */
    public int f16929a;

    /* renamed from: b */
    public boolean f16930b;

    /* renamed from: c */
    public Iterator<Map.Entry<K, V>> f16931c;

    /* renamed from: d */
    public final /* synthetic */ C4567p4 f16932d;

    public C4619x4(C4567p4 p4Var) {
        this.f16932d = p4Var;
        this.f16929a = -1;
    }

    public /* synthetic */ C4619x4(C4567p4 p4Var, C4588s4 s4Var) {
        this(p4Var);
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        Map map;
        int i = this.f16929a + 1;
        list = this.f16932d.f16838b;
        if (i < list.size()) {
            return true;
        }
        map = this.f16932d.f16839c;
        return !map.isEmpty() && zza().hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        List list;
        List list2;
        this.f16930b = true;
        int i = this.f16929a + 1;
        this.f16929a = i;
        list = this.f16932d.f16838b;
        if (i >= list.size()) {
            return (Map.Entry) zza().next();
        }
        list2 = this.f16932d.f16838b;
        return (Map.Entry) list2.get(this.f16929a);
    }

    @Override // java.util.Iterator
    public final void remove() {
        List list;
        if (this.f16930b) {
            this.f16930b = false;
            this.f16932d.m25322f();
            int i = this.f16929a;
            list = this.f16932d.f16838b;
            if (i < list.size()) {
                C4567p4 p4Var = this.f16932d;
                int i2 = this.f16929a;
                this.f16929a = i2 - 1;
                p4Var.m25330b(i2);
                return;
            }
            zza().remove();
            return;
        }
        throw new IllegalStateException("remove() was called before next()");
    }

    public final Iterator<Map.Entry<K, V>> zza() {
        Map map;
        if (this.f16931c == null) {
            map = this.f16932d.f16839c;
            this.f16931c = map.entrySet().iterator();
        }
        return this.f16931c;
    }
}

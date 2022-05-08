package p081h.p203i.p204a.p224e.p259j.p266g;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
/* renamed from: h.i.a.e.j.g.x3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/x3.class */
public final class C7724x3 extends AbstractList<String> implements AbstractC7701u1, RandomAccess {

    /* renamed from: a */
    public final AbstractC7701u1 f18080a;

    public C7724x3(AbstractC7701u1 u1Var) {
        this.f18080a = u1Var;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7701u1
    /* renamed from: a */
    public final Object mo19685a(int i) {
        return this.f18080a.mo19685a(i);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return (String) this.f18080a.get(i);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<String> iterator() {
        return new C7738z3(this);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7701u1
    /* renamed from: l */
    public final List<?> mo19683l() {
        return this.f18080a.mo19683l();
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<String> listIterator(int i) {
        return new C7731y3(this, i);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7701u1
    /* renamed from: m */
    public final AbstractC7701u1 mo19682m() {
        return this;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f18080a.size();
    }
}

package p081h.p203i.p204a.p224e.p259j.p269j;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
/* renamed from: h.i.a.e.j.j.g4 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/g4.class */
public final class C7812g4 extends AbstractList<String> implements AbstractC7785d2, RandomAccess {

    /* renamed from: a */
    public final AbstractC7785d2 f18266a;

    public C7812g4(AbstractC7785d2 d2Var) {
        this.f18266a = d2Var;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7785d2
    /* renamed from: a */
    public final Object mo19378a(int i) {
        return this.f18266a.mo19378a(i);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7785d2
    /* renamed from: a */
    public final void mo19377a(AbstractC7791e0 e0Var) {
        throw new UnsupportedOperationException();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7785d2
    /* renamed from: g0 */
    public final List<?> mo19375g0() {
        return this.f18266a.mo19375g0();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return (String) this.f18266a.get(i);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7785d2
    /* renamed from: h0 */
    public final AbstractC7785d2 mo19374h0() {
        return this;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<String> iterator() {
        return new C7829i4(this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<String> listIterator(int i) {
        return new C7821h4(this, i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f18266a.size();
    }
}

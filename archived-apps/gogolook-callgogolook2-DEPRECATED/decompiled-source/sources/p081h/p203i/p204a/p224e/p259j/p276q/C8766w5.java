package p081h.p203i.p204a.p224e.p259j.p276q;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.List;
/* renamed from: h.i.a.e.j.q.w5 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/w5.class */
public final class C8766w5<E> extends AbstractC8690o2<E> {

    /* renamed from: c */
    public static final C8766w5<Object> f20091c;

    /* renamed from: b */
    public final List<E> f20092b;

    static {
        C8766w5<Object> w5Var = new C8766w5<>();
        f20091c = w5Var;
        w5Var.mo17285g();
    }

    public C8766w5() {
        this(new ArrayList(10));
    }

    public C8766w5(List<E> list) {
        this.f20092b = list;
    }

    /* renamed from: b */
    public static <E> C8766w5<E> m17078b() {
        return (C8766w5<E>) f20091c;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, E e) {
        m17286f();
        this.f20092b.add(i, e);
        ((AbstractList) this).modCount++;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8638i4
    /* renamed from: f */
    public final /* synthetic */ AbstractC8638i4 mo16949f(int i) {
        if (i >= size()) {
            ArrayList arrayList = new ArrayList(i);
            arrayList.addAll(this.f20092b);
            return new C8766w5(arrayList);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int i) {
        return this.f20092b.get(i);
    }

    @Override // java.util.AbstractList, java.util.List
    public final E remove(int i) {
        m17286f();
        E remove = this.f20092b.remove(i);
        ((AbstractList) this).modCount++;
        return remove;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E set(int i, E e) {
        m17286f();
        E e2 = this.f20092b.set(i, e);
        ((AbstractList) this).modCount++;
        return e2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f20092b.size();
    }
}

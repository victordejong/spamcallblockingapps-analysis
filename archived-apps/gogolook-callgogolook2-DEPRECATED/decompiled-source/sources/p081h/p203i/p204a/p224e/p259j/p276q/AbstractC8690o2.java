package p081h.p203i.p204a.p224e.p259j.p276q;

import java.util.AbstractList;
import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;
/* renamed from: h.i.a.e.j.q.o2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/o2.class */
public abstract class AbstractC8690o2<E> extends AbstractList<E> implements AbstractC8638i4<E> {

    /* renamed from: a */
    public boolean f19901a = true;

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(E e) {
        m17286f();
        return super.add(e);
    }

    @Override // java.util.AbstractList, java.util.List
    public boolean addAll(int i, Collection<? extends E> collection) {
        m17286f();
        return super.addAll(i, collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends E> collection) {
        m17286f();
        return super.addAll(collection);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        m17286f();
        super.clear();
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof List)) {
            return false;
        }
        if (!(obj instanceof RandomAccess)) {
            return super.equals(obj);
        }
        List list = (List) obj;
        int size = size();
        if (size != list.size()) {
            return false;
        }
        for (int i = 0; i < size; i++) {
            if (!get(i).equals(list.get(i))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: f */
    public final void m17286f() {
        if (!this.f19901a) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8638i4
    /* renamed from: g */
    public final void mo17285g() {
        this.f19901a = false;
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int size = size();
        int i = 1;
        for (int i2 = 0; i2 < size; i2++) {
            i = (i * 31) + get(i2).hashCode();
        }
        return i;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8638i4
    /* renamed from: i */
    public boolean mo17284i() {
        return this.f19901a;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        m17286f();
        return super.remove(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean removeAll(Collection<?> collection) {
        m17286f();
        return super.removeAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean retainAll(Collection<?> collection) {
        m17286f();
        return super.retainAll(collection);
    }
}

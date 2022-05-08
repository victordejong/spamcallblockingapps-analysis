package p081h.p203i.p204a.p224e.p259j.p266g;

import java.util.AbstractList;
import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;
/* renamed from: h.i.a.e.j.g.t */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/t.class */
public abstract class AbstractC7692t<E> extends AbstractList<E> implements AbstractC7626k1<E> {

    /* renamed from: a */
    public boolean f18027a = true;

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(E e) {
        m19805b();
        return super.add(e);
    }

    @Override // java.util.AbstractList, java.util.List
    public boolean addAll(int i, Collection<? extends E> collection) {
        m19805b();
        return super.addAll(i, collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends E> collection) {
        m19805b();
        return super.addAll(collection);
    }

    /* renamed from: b */
    public final void m19805b() {
        if (!this.f18027a) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        m19805b();
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

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int size = size();
        int i = 1;
        for (int i2 = 0; i2 < size; i2++) {
            i = (i * 31) + get(i2).hashCode();
        }
        return i;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7626k1
    /* renamed from: j */
    public boolean mo19804j() {
        return this.f18027a;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7626k1
    /* renamed from: k */
    public final void mo19803k() {
        this.f18027a = false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        m19805b();
        return super.remove(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean removeAll(Collection<?> collection) {
        m19805b();
        return super.removeAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean retainAll(Collection<?> collection) {
        m19805b();
        return super.retainAll(collection);
    }
}

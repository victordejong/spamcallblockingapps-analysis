package p081h.p203i.p401g;

import java.util.AbstractList;
import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;
import p081h.p203i.p401g.C10516z;
/* renamed from: h.i.g.d */
/* loaded from: classes2-dex2jar.jar:h/i/g/d.class */
public abstract class AbstractC10239d<E> extends AbstractList<E> implements C10516z.AbstractC10520d<E> {

    /* renamed from: a */
    public boolean f23069a = true;

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(E e) {
        m13038b();
        return super.add(e);
    }

    @Override // java.util.AbstractList, java.util.List
    public boolean addAll(int i, Collection<? extends E> collection) {
        m13038b();
        return super.addAll(i, collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends E> collection) {
        m13038b();
        return super.addAll(collection);
    }

    /* renamed from: b */
    public void m13038b() {
        if (!this.f23069a) {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: c */
    public boolean m13037c() {
        return this.f23069a;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        m13038b();
        super.clear();
    }

    @Override // p081h.p203i.p401g.C10516z.AbstractC10520d
    /* renamed from: d */
    public final void mo11536d() {
        this.f23069a = false;
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

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        m13038b();
        return super.remove(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean removeAll(Collection<?> collection) {
        m13038b();
        return super.removeAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean retainAll(Collection<?> collection) {
        m13038b();
        return super.retainAll(collection);
    }
}

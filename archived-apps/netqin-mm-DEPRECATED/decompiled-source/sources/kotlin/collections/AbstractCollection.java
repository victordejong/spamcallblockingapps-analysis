package kotlin.collections;

import java.util.Collection;
import java.util.Iterator;
import kotlin.TypeCastException;
import p573f.p577r.C9986v;
import p573f.p590w.p592c.C10056n;
import p573f.p590w.p592c.C10059q;
/* loaded from: classes2-dex2jar.jar:kotlin/collections/AbstractCollection.class */
public abstract class AbstractCollection<E> implements Collection<E> {
    /* renamed from: a */
    public abstract int mo38a();

    @Override // java.util.Collection, java.util.List
    public boolean add(E e) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean addAll(Collection<? extends E> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean contains(Object obj) {
        boolean z;
        if (!isEmpty()) {
            Iterator<E> it = iterator();
            while (true) {
                z = false;
                if (it.hasNext()) {
                    if (C10059q.m1643a(it.next(), obj)) {
                        z = true;
                        break;
                    }
                } else {
                    break;
                }
            }
        } else {
            z = false;
        }
        return z;
    }

    @Override // java.util.Collection
    public boolean containsAll(Collection<? extends Object> collection) {
        boolean z;
        C10059q.m1637b(collection, "elements");
        if (!collection.isEmpty()) {
            Iterator<T> it = collection.iterator();
            while (true) {
                z = true;
                if (it.hasNext()) {
                    if (!contains(it.next())) {
                        z = false;
                        break;
                    }
                } else {
                    break;
                }
            }
        } else {
            z = true;
        }
        return z;
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Collection
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean removeAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean retainAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final /* bridge */ int size() {
        return mo38a();
    }

    @Override // java.util.Collection, java.util.List
    public Object[] toArray() {
        return C10056n.m1648a(this);
    }

    @Override // java.util.Collection, java.util.List
    public <T> T[] toArray(T[] tArr) {
        C10059q.m1637b(tArr, "array");
        T[] tArr2 = (T[]) C10056n.m1647a(this, tArr);
        if (tArr2 != null) {
            return tArr2;
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
    }

    public String toString() {
        return C9986v.m1698a(this, ", ", "[", "]", 0, null, new AbstractCollection$toString$1(this), 24, null);
    }
}

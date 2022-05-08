package p081h.p203i.p316b.p318b;

import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Collection;
import p081h.p203i.p316b.p317a.C9301k;
import p081h.p203i.p316b.p318b.AbstractC9323i;
/* renamed from: h.i.b.b.h */
/* loaded from: classes2-dex2jar.jar:h/i/b/b/h.class */
public abstract class AbstractC9321h<E> extends AbstractCollection<E> implements Serializable {

    /* renamed from: a */
    public static final Object[] f21348a = new Object[0];

    /* renamed from: h.i.b.b.h$a */
    /* loaded from: classes2-dex2jar.jar:h/i/b/b/h$a.class */
    public static abstract class AbstractC9322a<E> {
        /* renamed from: a */
        public static int m15433a(int i, int i2) {
            if (i2 >= 0) {
                int i3 = i + (i >> 1) + 1;
                int i4 = i3;
                if (i3 < i2) {
                    i4 = Integer.highestOneBit(i2 - 1) << 1;
                }
                int i5 = i4;
                if (i4 < 0) {
                    i5 = Integer.MAX_VALUE;
                }
                return i5;
            }
            throw new AssertionError("cannot store more than MAX_VALUE elements");
        }
    }

    /* renamed from: a */
    public int mo15372a(Object[] objArr, int i) {
        AbstractC9311a0<E> it = iterator();
        while (it.hasNext()) {
            objArr[i] = it.next();
            i++;
        }
        return i;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean add(E e) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean addAll(Collection<? extends E> collection) {
        throw new UnsupportedOperationException();
    }

    /* renamed from: b */
    public Object[] mo15380b() {
        return null;
    }

    /* renamed from: c */
    public int mo15379c() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public abstract boolean contains(Object obj);

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public abstract AbstractC9311a0<E> iterator();

    /* renamed from: q */
    public int mo15378q() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean removeAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean retainAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final Object[] toArray() {
        return toArray(f21348a);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final <T> T[] toArray(T[] tArr) {
        T[] tArr2;
        C9301k.m15478a(tArr);
        int size = size();
        if (tArr.length < size) {
            Object[] b = mo15380b();
            if (b != null) {
                return (T[]) C9343r.m15392a(b, mo15378q(), mo15379c(), tArr);
            }
            tArr2 = (T[]) C9341p.m15396b(tArr, size);
        } else {
            tArr2 = tArr;
            if (tArr.length > size) {
                tArr[size] = null;
                tArr2 = tArr;
            }
        }
        mo15372a(tArr2, 0);
        return tArr2;
    }

    public Object writeReplace() {
        return new AbstractC9323i.C9326c(toArray());
    }
}

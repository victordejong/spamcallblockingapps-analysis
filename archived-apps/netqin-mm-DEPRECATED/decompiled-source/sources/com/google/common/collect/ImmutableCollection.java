package com.google.common.collect;

import com.google.common.collect.ImmutableList;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p269c.AbstractC4978e1;
import p131c.p161d.p266c.p269c.C5000k0;
import p131c.p161d.p266c.p269c.C5006n;
import p131c.p161d.p266c.p269c.C5009o0;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableCollection.class */
public abstract class ImmutableCollection<E> extends AbstractCollection<E> implements Serializable {
    public static final Object[] EMPTY_ARRAY = new Object[0];

    /* renamed from: com.google.common.collect.ImmutableCollection$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableCollection$a.class */
    public static abstract class AbstractC7466a<E> extends AbstractC7467b<E> {

        /* renamed from: a */
        public Object[] f30528a;

        /* renamed from: b */
        public int f30529b = 0;

        /* renamed from: c */
        public boolean f30530c;

        public AbstractC7466a(int i) {
            C5006n.m24663a(i, "initialCapacity");
            this.f30528a = new Object[i];
        }

        @Override // com.google.common.collect.ImmutableCollection.AbstractC7467b
        /* renamed from: a */
        public AbstractC7466a<E> mo8284a(E e) {
            C4933n.m24795a(e);
            m8402a(this.f30529b + 1);
            Object[] objArr = this.f30528a;
            int i = this.f30529b;
            this.f30529b = i + 1;
            objArr[i] = e;
            return this;
        }

        @Override // com.google.common.collect.ImmutableCollection.AbstractC7467b
        /* renamed from: a */
        public AbstractC7467b<E> mo8282a(E... eArr) {
            C5000k0.m24706a(eArr);
            m8402a(this.f30529b + eArr.length);
            System.arraycopy(eArr, 0, this.f30528a, this.f30529b, eArr.length);
            this.f30529b += eArr.length;
            return this;
        }

        /* renamed from: a */
        public final void m8402a(int i) {
            Object[] objArr = this.f30528a;
            if (objArr.length < i) {
                this.f30528a = Arrays.copyOf(objArr, AbstractC7467b.m8401a(objArr.length, i));
                this.f30530c = false;
            } else if (this.f30530c) {
                this.f30528a = (Object[]) objArr.clone();
                this.f30530c = false;
            }
        }
    }

    /* renamed from: com.google.common.collect.ImmutableCollection$b */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/ImmutableCollection$b.class */
    public static abstract class AbstractC7467b<E> {
        /* renamed from: a */
        public static int m8401a(int i, int i2) {
            if (i2 >= 0) {
                int i3 = i + (i >> 1) + 1;
                int i4 = i3;
                if (i3 < i2) {
                    i4 = Integer.highestOneBit(i2 - 1) << 1;
                }
                int i5 = i4;
                if (i4 < 0) {
                    i5 = MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
                }
                return i5;
            }
            throw new AssertionError("cannot store more than MAX_VALUE elements");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: a */
        public AbstractC7467b<E> mo8303a(Iterable<? extends E> iterable) {
            Iterator<? extends E> it = iterable.iterator();
            while (it.hasNext()) {
                mo8284a((AbstractC7467b<E>) it.next());
            }
            return this;
        }

        /* renamed from: a */
        public abstract AbstractC7467b<E> mo8284a(E e);

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: a */
        public AbstractC7467b<E> mo8283a(Iterator<? extends E> it) {
            while (it.hasNext()) {
                mo8284a((AbstractC7467b<E>) it.next());
            }
            return this;
        }

        /* renamed from: a */
        public AbstractC7467b<E> mo8282a(E... eArr) {
            for (E e : eArr) {
                mo8284a((AbstractC7467b<E>) e);
            }
            return this;
        }
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

    public ImmutableList<E> asList() {
        return isEmpty() ? ImmutableList.m8400of() : ImmutableList.asImmutableList(toArray());
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public abstract boolean contains(Object obj);

    public int copyIntoArray(Object[] objArr, int i) {
        AbstractC4978e1<E> it = iterator();
        while (it.hasNext()) {
            objArr[i] = it.next();
            i++;
        }
        return i;
    }

    public Object[] internalArray() {
        return null;
    }

    public int internalArrayEnd() {
        throw new UnsupportedOperationException();
    }

    public int internalArrayStart() {
        throw new UnsupportedOperationException();
    }

    public abstract boolean isPartialView();

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
    public abstract AbstractC4978e1<E> iterator();

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
        return toArray(EMPTY_ARRAY);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final <T> T[] toArray(T[] tArr) {
        T[] tArr2;
        C4933n.m24795a(tArr);
        int size = size();
        if (tArr.length < size) {
            Object[] internalArray = internalArray();
            if (internalArray != null) {
                return (T[]) C5009o0.m24648a(internalArray, internalArrayStart(), internalArrayEnd(), tArr);
            }
            tArr2 = (T[]) C5000k0.m24703b(tArr, size);
        } else {
            tArr2 = tArr;
            if (tArr.length > size) {
                tArr[size] = null;
                tArr2 = tArr;
            }
        }
        copyIntoArray(tArr2, 0);
        return tArr2;
    }

    public Object writeReplace() {
        return new ImmutableList.SerializedForm(toArray());
    }
}

package com.google.android.gms.internal.measurement;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.AbstractCollection;
import java.util.Arrays;
import java.util.Collection;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzey.class */
public abstract class zzey<E> extends AbstractCollection<E> implements Serializable {

    /* renamed from: f */
    private static final Object[] f8405f = new Object[0];

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

    /* renamed from: c */
    int mo12675c(Object[] objArr, int i) {
        zzfx zzfxVar = (zzfx) iterator();
        while (zzfxVar.hasNext()) {
            objArr[i] = zzfxVar.next();
            i++;
        }
        return i;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public abstract boolean contains(@NullableDecl Object obj);

    /* renamed from: d */
    public abstract zzfx<E> iterator();

    /* JADX INFO: Access modifiers changed from: package-private */
    @NullableDecl
    /* renamed from: e */
    public Object[] mo12678e() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public int mo12677f() {
        throw new UnsupportedOperationException();
    }

    /* renamed from: g */
    int mo12676g() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public abstract boolean mo12673h();

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
        return toArray(f8405f);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final <T> T[] toArray(T[] tArr) {
        T[] tArr2;
        zzeb.m12741b(tArr);
        int size = size();
        if (tArr.length < size) {
            Object[] e = mo12678e();
            if (e != null) {
                return (T[]) Arrays.copyOfRange(e, mo12677f(), mo12676g(), tArr.getClass());
            }
            tArr2 = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), size));
        } else {
            tArr2 = tArr;
            if (tArr.length > size) {
                tArr[size] = null;
                tArr2 = tArr;
            }
        }
        mo12675c(tArr2, 0);
        return tArr2;
    }
}

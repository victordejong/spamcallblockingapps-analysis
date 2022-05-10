package com.google.android.gms.internal.measurement;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import p131c.p161d.p170b.p224d.p252g.p258f.C4622y1;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfb.class */
public abstract class zzfb<E> extends zzey<E> implements List<E>, RandomAccess {
    public static final zzfw<Object> zza = new C4622y1(zzfm.zza, 0);

    public static <E> zzfb<E> zza(E e) {
        Object[] objArr = {e};
        for (int i = 0; i <= 0; i++) {
            zzfn.m9804a(objArr[0], 0);
        }
        return zzb(objArr, 1);
    }

    public static <E> zzfb<E> zza(Object[] objArr) {
        return zzb(objArr, objArr.length);
    }

    public static <E> zzfb<E> zzb(Object[] objArr, int i) {
        return i == 0 ? (zzfb<E>) zzfm.zza : new zzfm(objArr, i);
    }

    public static <E> zzfb<E> zzg() {
        return (zzfb<E>) zzfm.zza;
    }

    @Override // java.util.List
    @Deprecated
    public final void add(int i, E e) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final boolean addAll(int i, Collection<? extends E> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.measurement.zzey, java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        zzeb.m9815a(this);
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof List)) {
            return false;
        }
        List list = (List) obj;
        int size = size();
        if (size != list.size()) {
            return false;
        }
        if (list instanceof RandomAccess) {
            for (int i = 0; i < size; i++) {
                if (!zzdz.m9819a(get(i), list.get(i))) {
                    return false;
                }
            }
            return true;
        }
        int size2 = size();
        Iterator<E> it = list.iterator();
        int i2 = 0;
        while (i2 < size2) {
            if (!it.hasNext()) {
                return false;
            }
            E e = get(i2);
            i2++;
            if (!zzdz.m9819a(e, it.next())) {
                return false;
            }
        }
        return !it.hasNext();
    }

    @Override // java.util.Collection, java.util.List
    public int hashCode() {
        int size = size();
        int i = 1;
        for (int i2 = 0; i2 < size; i2++) {
            i = (((i * 31) + get(i2).hashCode()) ^ (-1)) ^ (-1);
        }
        return i;
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        int size = size();
        if (obj == null) {
            for (int i = 0; i < size; i++) {
                if (get(i) == null) {
                    return i;
                }
            }
            return -1;
        }
        for (int i2 = 0; i2 < size; i2++) {
            if (obj.equals(get(i2))) {
                return i2;
            }
        }
        return -1;
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        if (obj == null) {
            for (int size = size() - 1; size >= 0; size--) {
                if (get(size) == null) {
                    return size;
                }
            }
            return -1;
        }
        for (int size2 = size() - 1; size2 >= 0; size2--) {
            if (obj.equals(get(size2))) {
                return size2;
            }
        }
        return -1;
    }

    @Override // java.util.List
    public /* synthetic */ ListIterator listIterator() {
        return (zzfw) listIterator(0);
    }

    @Override // java.util.List
    public /* synthetic */ ListIterator listIterator(int i) {
        zzeb.m9812b(i, size());
        return isEmpty() ? zza : new C4622y1(this, i);
    }

    @Override // java.util.List
    @Deprecated
    public final E remove(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final E set(int i, E e) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.measurement.zzey
    public int zza(Object[] objArr, int i) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            objArr[i + i2] = get(i2);
        }
        return i + size;
    }

    /* renamed from: zza */
    public zzfb<E> subList(int i, int i2) {
        zzeb.m9817a(i, i2, size());
        int i3 = i2 - i;
        return i3 == size() ? this : i3 == 0 ? (zzfb<E>) zzfm.zza : new zzfd(this, i, i3);
    }

    @Override // com.google.android.gms.internal.measurement.zzey
    /* renamed from: zza */
    public final zzfx<E> iterator() {
        return (zzfw) listIterator();
    }

    @Override // com.google.android.gms.internal.measurement.zzey
    public final zzfb<E> zze() {
        return this;
    }
}

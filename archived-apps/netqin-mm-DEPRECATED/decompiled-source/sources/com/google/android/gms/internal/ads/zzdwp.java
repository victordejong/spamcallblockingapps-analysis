package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import p131c.p161d.p170b.p224d.p252g.p253a.f10;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdwp.class */
public abstract class zzdwp<E> extends zzdwk<E> implements List<E>, RandomAccess {
    public static final zzdxj<Object> zzhqm = new f10(zzdwz.zzhra, 0);

    public static <E> zzdwp<E> zzac(E e) {
        Object[] objArr = {e};
        for (int i = 0; i <= 0; i++) {
            zzdww.m13076a(objArr[0], 0);
        }
        return zzb(objArr, 1);
    }

    public static <E> zzdwp<E> zzaxo() {
        return (zzdwp<E>) zzdwz.zzhra;
    }

    public static <E> zzdwp<E> zzb(Collection<? extends E> collection) {
        if (collection instanceof zzdwk) {
            zzdwp<E> zzaxm = ((zzdwk) collection).zzaxm();
            zzdwp<E> zzdwpVar = zzaxm;
            if (zzaxm.zzaxn()) {
                Object[] array = zzaxm.toArray();
                zzdwpVar = zzb(array, array.length);
            }
            return zzdwpVar;
        }
        Object[] array2 = collection.toArray();
        int length = array2.length;
        for (int i = 0; i < length; i++) {
            zzdww.m13076a(array2[i], i);
        }
        return zzb(array2, array2.length);
    }

    public static <E> zzdwp<E> zzb(E[] eArr) {
        if (eArr.length == 0) {
            return (zzdwp<E>) zzdwz.zzhra;
        }
        Object[] objArr = (Object[]) eArr.clone();
        int length = objArr.length;
        for (int i = 0; i < length; i++) {
            zzdww.m13076a(objArr[i], i);
        }
        return zzb(objArr, objArr.length);
    }

    public static <E> zzdwp<E> zzb(Object[] objArr, int i) {
        return i == 0 ? (zzdwp<E>) zzdwz.zzhra : new zzdwz(objArr, i);
    }

    public static <E> zzdwp<E> zzc(Object[] objArr) {
        return zzb(objArr, objArr.length);
    }

    public static <E> zzdwp<E> zzh(Iterable<? extends E> iterable) {
        zzdwd.m13096a(iterable);
        if (iterable instanceof Collection) {
            return zzb((Collection) iterable);
        }
        Iterator<? extends E> it = iterable.iterator();
        if (!it.hasNext()) {
            return (zzdwp<E>) zzdwz.zzhra;
        }
        Object next = it.next();
        if (!it.hasNext()) {
            return zzac(next);
        }
        zzdwo zzdwoVar = new zzdwo();
        zzdwoVar.mo13077a(next);
        zzdwo zzdwoVar2 = zzdwoVar;
        zzdwoVar2.mo13080a((Iterator) it);
        zzdwo zzdwoVar3 = zzdwoVar2;
        zzdwoVar3.f12795c = true;
        return zzb(zzdwoVar3.f12793a, zzdwoVar3.f12794b);
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

    @Override // com.google.android.gms.internal.ads.zzdwk, java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        zzdwd.m13096a(this);
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
                if (!zzdvx.m13101a(get(i), list.get(i))) {
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
            if (!zzdvx.m13101a(e, it.next())) {
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
        return (zzdxj) listIterator(0);
    }

    @Override // java.util.List
    public /* synthetic */ ListIterator listIterator(int i) {
        zzdwd.m13092b(i, size());
        return isEmpty() ? zzhqm : new f10(this, i);
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

    @Override // com.google.android.gms.internal.ads.zzdwk
    public int zza(Object[] objArr, int i) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            objArr[i + i2] = get(i2);
        }
        return i + size;
    }

    @Override // com.google.android.gms.internal.ads.zzdwk
    /* renamed from: zzaxi */
    public final zzdxg<E> iterator() {
        return (zzdxj) listIterator();
    }

    @Override // com.google.android.gms.internal.ads.zzdwk
    public final zzdwp<E> zzaxm() {
        return this;
    }

    /* renamed from: zzu */
    public zzdwp<E> subList(int i, int i2) {
        zzdwd.m13098a(i, i2, size());
        int i3 = i2 - i;
        return i3 == size() ? this : i3 == 0 ? (zzdwp<E>) zzdwz.zzhra : new zzdwq(this, i, i3);
    }
}

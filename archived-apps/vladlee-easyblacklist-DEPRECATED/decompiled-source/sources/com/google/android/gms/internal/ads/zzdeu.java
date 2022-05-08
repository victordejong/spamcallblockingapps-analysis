package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdeu.class */
public abstract class zzdeu<E> extends zzdet<E> implements List<E>, RandomAccess {

    /* renamed from: a */
    private static final zzdfo<Object> f14251a = new abg(abk.f7163a, 0);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static <E> zzdeu<E> m3593a(Object[] objArr) {
        return m3591b(objArr, objArr.length);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static <E> zzdeu<E> m3591b(Object[] objArr, int i) {
        return i == 0 ? (zzdeu<E>) abk.f7163a : new abk(objArr, i);
    }

    public static <E> zzdeu<E> zzaf(E e) {
        Object[] objArr = {e};
        for (int i = 0; i <= 0; i++) {
            zzdff.m3580a(objArr[0], 0);
        }
        return m3591b(objArr, 1);
    }

    public static <E> zzdeu<E> zzard() {
        return (zzdeu<E>) abk.f7163a;
    }

    public static <E> zzdeu<E> zzb(E[] eArr) {
        if (eArr.length == 0) {
            return (zzdeu<E>) abk.f7163a;
        }
        Object[] objArr = (Object[]) eArr.clone();
        int length = objArr.length;
        for (int i = 0; i < length; i++) {
            zzdff.m3580a(objArr[i], i);
        }
        return m3591b(objArr, objArr.length);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <E> zzdeu<E> zzf(Iterable<? extends E> iterable) {
        zzdei.checkNotNull(iterable);
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            if (collection instanceof zzdet) {
                zzdeu<E> zzarb = ((zzdet) collection).zzarb();
                zzdeu<E> zzdeuVar = zzarb;
                if (zzarb.mo3594d()) {
                    Object[] array = zzarb.toArray();
                    zzdeuVar = m3591b(array, array.length);
                }
                return zzdeuVar;
            }
            Object[] array2 = collection.toArray();
            int length = array2.length;
            for (int i = 0; i < length; i++) {
                zzdff.m3580a(array2[i], i);
            }
            return m3591b(array2, array2.length);
        }
        Iterator<? extends E> it = iterable.iterator();
        if (!it.hasNext()) {
            return (zzdeu<E>) abk.f7163a;
        }
        Object next = it.next();
        if (!it.hasNext()) {
            return zzaf(next);
        }
        zzdex zzdexVar = (zzdex) ((zzdex) new zzdex().zzae(next)).zza(it);
        zzdexVar.f7155c = true;
        return m3591b(zzdexVar.f7153a, zzdexVar.f7154b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdet
    /* renamed from: a */
    public int mo3592a(Object[] objArr, int i) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            objArr[i + i2] = get(i2);
        }
        return i + size;
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

    @Override // com.google.android.gms.internal.ads.zzdet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(@NullableDecl Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.List
    public boolean equals(@NullableDecl Object obj) {
        if (obj == zzdei.checkNotNull(this)) {
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
                if (!zzdeg.equal(get(i), list.get(i))) {
                    return false;
                }
            }
            return true;
        }
        zzdeu<E> zzdeuVar = this;
        int size2 = zzdeuVar.size();
        Iterator<E> it = list.iterator();
        int i2 = 0;
        while (i2 < size2) {
            if (!it.hasNext()) {
                return false;
            }
            E e = zzdeuVar.get(i2);
            i2++;
            if (!zzdeg.equal(e, it.next())) {
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
    public int indexOf(@NullableDecl Object obj) {
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

    @Override // com.google.android.gms.internal.ads.zzdet, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public /* synthetic */ Iterator iterator() {
        return iterator();
    }

    @Override // java.util.List
    public int lastIndexOf(@NullableDecl Object obj) {
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
        return (zzdfo) listIterator(0);
    }

    @Override // java.util.List
    public /* synthetic */ ListIterator listIterator(int i) {
        zzdei.zzt(i, size());
        return isEmpty() ? f14251a : new abg(this, i);
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

    @Override // com.google.android.gms.internal.ads.zzdet
    public final zzdfp<E> zzaqx() {
        return (zzdfo) listIterator();
    }

    @Override // com.google.android.gms.internal.ads.zzdet
    public final zzdeu<E> zzarb() {
        return this;
    }

    /* renamed from: zzu */
    public zzdeu<E> subList(int i, int i2) {
        zzdei.zzf(i, i2, size());
        int i3 = i2 - i;
        return i3 == size() ? this : i3 == 0 ? (zzdeu<E>) abk.f7163a : new abh(this, i, i3);
    }
}

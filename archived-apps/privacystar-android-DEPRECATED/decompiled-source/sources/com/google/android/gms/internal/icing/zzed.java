package com.google.android.gms.internal.icing;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzed.class */
final class zzed<E> extends zzbe<E> {
    private static final zzed<Object> zzku;
    private final List<E> zzji;

    static {
        zzed<Object> zzedVar = new zzed<>();
        zzku = zzedVar;
        zzedVar.zzp();
    }

    zzed() {
        this(new ArrayList(10));
    }

    private zzed(List<E> list) {
        this.zzji = list;
    }

    public static <E> zzed<E> zzca() {
        return (zzed<E>) zzku;
    }

    @Override // com.google.android.gms.internal.icing.zzbe, java.util.AbstractList, java.util.List
    public final void add(int i, E e) {
        zzq();
        this.zzji.add(i, e);
        this.modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int i) {
        return this.zzji.get(i);
    }

    @Override // com.google.android.gms.internal.icing.zzbe, java.util.AbstractList, java.util.List
    public final E remove(int i) {
        zzq();
        E remove = this.zzji.remove(i);
        this.modCount++;
        return remove;
    }

    @Override // com.google.android.gms.internal.icing.zzbe, java.util.AbstractList, java.util.List
    public final E set(int i, E e) {
        zzq();
        E e2 = this.zzji.set(i, e);
        this.modCount++;
        return e2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzji.size();
    }

    @Override // com.google.android.gms.internal.icing.zzcr
    public final /* synthetic */ zzcr zzh(int i) {
        if (i < size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(i);
        arrayList.addAll(this.zzji);
        return new zzed(arrayList);
    }
}

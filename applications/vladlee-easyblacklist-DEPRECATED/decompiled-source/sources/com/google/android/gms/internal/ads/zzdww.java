package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdww.class */
public class zzdww<E> extends AbstractList<E> {

    /* renamed from: c */
    private static final zzdwy f14694c = zzdwy.zzn(zzdww.class);

    /* renamed from: a */
    List<E> f14695a;

    /* renamed from: b */
    Iterator<E> f14696b;

    public zzdww(List<E> list, Iterator<E> it) {
        this.f14695a = list;
        this.f14696b = it;
    }

    @Override // java.util.AbstractList, java.util.List
    public E get(int i) {
        if (this.f14695a.size() > i) {
            return this.f14695a.get(i);
        }
        if (this.f14696b.hasNext()) {
            this.f14695a.add(this.f14696b.next());
            return get(i);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator<E> iterator() {
        return new alh(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        f14694c.zzhp("potentially expensive size() call");
        f14694c.zzhp("blowup running");
        while (this.f14696b.hasNext()) {
            this.f14695a.add(this.f14696b.next());
        }
        return this.f14695a.size();
    }
}

package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import p131c.p161d.p170b.p224d.p252g.p253a.wa0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeoo.class */
public class zzeoo<E> extends AbstractList<E> {

    /* renamed from: c */
    public static final zzeoq f28121c = zzeoq.m12204a(zzeoo.class);

    /* renamed from: a */
    public List<E> f28122a;

    /* renamed from: b */
    public Iterator<E> f28123b;

    public zzeoo(List<E> list, Iterator<E> it) {
        this.f28122a = list;
        this.f28123b = it;
    }

    @Override // java.util.AbstractList, java.util.List
    public E get(int i) {
        if (this.f28122a.size() > i) {
            return this.f28122a.get(i);
        }
        if (this.f28123b.hasNext()) {
            this.f28122a.add(this.f28123b.next());
            return get(i);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator<E> iterator() {
        return new wa0(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        f28121c.mo12203a("potentially expensive size() call");
        f28121c.mo12203a("blowup running");
        while (this.f28123b.hasNext()) {
            this.f28122a.add(this.f28123b.next());
        }
        return this.f28122a.size();
    }
}

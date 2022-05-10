package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
import p131c.p161d.p170b.p224d.p252g.p253a.t60;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzekr.class */
public final class zzekr extends t60<String> implements zzeku, RandomAccess {

    /* renamed from: c */
    public static final zzekr f28090c;

    /* renamed from: b */
    public final List<Object> f28091b;

    static {
        zzekr zzekrVar = new zzekr();
        f28090c = zzekrVar;
        zzekrVar.mo12361A();
    }

    public zzekr() {
        this(10);
    }

    public zzekr(int i) {
        this(new ArrayList(i));
    }

    public zzekr(ArrayList<Object> arrayList) {
        this.f28091b = arrayList;
    }

    /* renamed from: a */
    public static String m12358a(Object obj) {
        return obj instanceof String ? (String) obj : obj instanceof zzeip ? ((zzeip) obj).zzbef() : zzekb.m12366c((byte[]) obj);
    }

    @Override // com.google.android.gms.internal.ads.zzeku
    /* renamed from: a */
    public final void mo12328a(zzeip zzeipVar) {
        m26328a();
        this.f28091b.add(zzeipVar);
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        m26328a();
        this.f28091b.add(i, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.t60, java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection<? extends String> collection) {
        m26328a();
        List<?> list = collection;
        if (collection instanceof zzeku) {
            list = ((zzeku) collection).mo12325s();
        }
        boolean addAll = this.f28091b.addAll(i, list);
        ((AbstractList) this).modCount++;
        return addAll;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.t60, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.t60, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        m26328a();
        this.f28091b.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.ads.zzekk
    /* renamed from: e */
    public final /* synthetic */ zzekk mo12357e(int i) {
        if (i >= size()) {
            ArrayList arrayList = new ArrayList(i);
            arrayList.addAll(this.f28091b);
            return new zzekr(arrayList);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        Object obj = this.f28091b.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof zzeip) {
            zzeip zzeipVar = (zzeip) obj;
            String zzbef = zzeipVar.zzbef();
            if (zzeipVar.zzbeg()) {
                this.f28091b.set(i, zzbef);
            }
            return zzbef;
        }
        byte[] bArr = (byte[]) obj;
        String c = zzekb.m12366c(bArr);
        if (zzekb.m12367b(bArr)) {
            this.f28091b.set(i, c);
        }
        return c;
    }

    @Override // com.google.android.gms.internal.ads.zzeku
    /* renamed from: i */
    public final Object mo12326i(int i) {
        return this.f28091b.get(i);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m26328a();
        Object remove = this.f28091b.remove(i);
        ((AbstractList) this).modCount++;
        return m12358a(remove);
    }

    @Override // com.google.android.gms.internal.ads.zzeku
    /* renamed from: s */
    public final List<?> mo12325s() {
        return Collections.unmodifiableList(this.f28091b);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        m26328a();
        return m12358a(this.f28091b.set(i, (String) obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f28091b.size();
    }

    @Override // com.google.android.gms.internal.ads.zzeku
    /* renamed from: x */
    public final zzeku mo12324x() {
        return mo12360w() ? new zzenc(this) : this;
    }
}

package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
import p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4498g2;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzir.class */
public final class zzir extends AbstractC4498g2<String> implements zziq, RandomAccess {

    /* renamed from: c */
    public static final zzir f29515c;

    /* renamed from: b */
    public final List<Object> f29516b;

    static {
        zzir zzirVar = new zzir();
        f29515c = zzirVar;
        zzirVar.mo9631H();
    }

    public zzir() {
        this(10);
    }

    public zzir(int i) {
        this(new ArrayList(i));
    }

    public zzir(ArrayList<Object> arrayList) {
        this.f29516b = arrayList;
    }

    /* renamed from: a */
    public static String m9625a(Object obj) {
        return obj instanceof String ? (String) obj : obj instanceof zzgp ? ((zzgp) obj).zzb() : zzia.m9633b((byte[]) obj);
    }

    @Override // com.google.android.gms.internal.measurement.zziq
    /* renamed from: a */
    public final void mo9598a(zzgp zzgpVar) {
        m25475a();
        this.f29516b.add(zzgpVar);
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        m25475a();
        this.f29516b.add(i, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4498g2, java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection<? extends String> collection) {
        m25475a();
        List<?> list = collection;
        if (collection instanceof zziq) {
            list = ((zziq) collection).zzb();
        }
        boolean addAll = this.f29516b.addAll(i, list);
        ((AbstractList) this).modCount++;
        return addAll;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4498g2, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4498g2, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        m25475a();
        this.f29516b.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        Object obj = this.f29516b.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof zzgp) {
            zzgp zzgpVar = (zzgp) obj;
            String zzb = zzgpVar.zzb();
            if (zzgpVar.zzc()) {
                this.f29516b.set(i, zzb);
            }
            return zzb;
        }
        byte[] bArr = (byte[]) obj;
        String b = zzia.m9633b(bArr);
        if (zzia.m9634a(bArr)) {
            this.f29516b.set(i, b);
        }
        return b;
    }

    @Override // com.google.android.gms.internal.measurement.zziq
    /* renamed from: p */
    public final zziq mo9596p() {
        return zza() ? new zzku(this) : this;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4498g2, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m25475a();
        Object remove = this.f29516b.remove(i);
        ((AbstractList) this).modCount++;
        return m9625a(remove);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        m25475a();
        return m9625a(this.f29516b.set(i, (String) obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f29516b.size();
    }

    @Override // com.google.android.gms.internal.measurement.zzig
    public final /* synthetic */ zzig zza(int i) {
        if (i >= size()) {
            ArrayList arrayList = new ArrayList(i);
            arrayList.addAll(this.f29516b);
            return new zzir(arrayList);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.measurement.zziq
    public final Object zzb(int i) {
        return this.f29516b.get(i);
    }

    @Override // com.google.android.gms.internal.measurement.zziq
    public final List<?> zzb() {
        return Collections.unmodifiableList(this.f29516b);
    }
}

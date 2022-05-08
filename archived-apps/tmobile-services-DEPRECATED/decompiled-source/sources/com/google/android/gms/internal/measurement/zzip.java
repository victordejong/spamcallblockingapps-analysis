package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzip.class */
public final class zzip extends zzgl<String> implements zzis, RandomAccess {

    /* renamed from: h */
    private static final zzip f8537h;

    /* renamed from: g */
    private final List<Object> f8538g;

    static {
        zzip zzipVar = new zzip();
        f8537h = zzipVar;
        zzipVar.zzb();
    }

    public zzip() {
        this(10);
    }

    public zzip(int i) {
        this(new ArrayList(i));
    }

    private zzip(ArrayList<Object> arrayList) {
        this.f8538g = arrayList;
    }

    /* renamed from: d */
    private static String m12375d(Object obj) {
        return obj instanceof String ? (String) obj : obj instanceof zzgr ? ((zzgr) obj).m12629u() : zzic.m12389i((byte[]) obj);
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    /* renamed from: K */
    public final void mo12102K(zzgr zzgrVar) {
        m12656c();
        this.f8538g.add(zzgrVar);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zzii
    /* renamed from: a */
    public final /* synthetic */ zzii mo12266a(int i) {
        if (i >= size()) {
            ArrayList arrayList = new ArrayList(i);
            arrayList.addAll(this.f8538g);
            return new zzip(arrayList);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.measurement.zzgl, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        m12656c();
        this.f8538g.add(i, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zzgl, java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection<? extends String> collection) {
        m12656c();
        List<?> list = collection;
        if (collection instanceof zzis) {
            list = ((zzis) collection).zzd();
        }
        boolean addAll = this.f8538g.addAll(i, list);
        ((AbstractList) this).modCount++;
        return addAll;
    }

    @Override // com.google.android.gms.internal.measurement.zzgl, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    /* renamed from: b */
    public final Object mo12101b(int i) {
        return this.f8538g.get(i);
    }

    @Override // com.google.android.gms.internal.measurement.zzgl, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        m12656c();
        this.f8538g.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        Object obj = this.f8538g.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof zzgr) {
            zzgr zzgrVar = (zzgr) obj;
            String u = zzgrVar.m12629u();
            if (zzgrVar.mo12611w()) {
                this.f8538g.set(i, u);
            }
            return u;
        }
        byte[] bArr = (byte[]) obj;
        String i2 = zzic.m12389i(bArr);
        if (zzic.m12390h(bArr)) {
            this.f8538g.set(i, i2);
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.measurement.zzgl, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m12656c();
        Object remove = this.f8538g.remove(i);
        ((AbstractList) this).modCount++;
        return m12375d(remove);
    }

    @Override // com.google.android.gms.internal.measurement.zzgl, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        m12656c();
        return m12375d(this.f8538g.set(i, (String) obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f8538g.size();
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final List<?> zzd() {
        return Collections.unmodifiableList(this.f8538g);
    }

    @Override // com.google.android.gms.internal.measurement.zzis
    public final zzis zze() {
        return zza() ? new zzkw(this) : this;
    }
}

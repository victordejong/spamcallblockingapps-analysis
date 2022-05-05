package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfw.class */
public final class zzfw extends AbstractC2507bp<String> implements zzfv, RandomAccess {

    /* renamed from: a */
    private static final zzfw f16299a;

    /* renamed from: b */
    private static final zzfv f16300b;

    /* renamed from: c */
    private final List<Object> f16301c;

    static {
        zzfw zzfwVar = new zzfw();
        f16299a = zzfwVar;
        zzfwVar.mo2268h_();
        f16300b = f16299a;
    }

    public zzfw() {
        this(10);
    }

    public zzfw(int i) {
        this(new ArrayList(i));
    }

    private zzfw(ArrayList<Object> arrayList) {
        this.f16301c = arrayList;
    }

    /* renamed from: a */
    private static String m2258a(Object obj) {
        return obj instanceof String ? (String) obj : obj instanceof zzdu ? ((zzdu) obj).zzb() : zzff.zzb((byte[]) obj);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2507bp, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        m2916a();
        this.f16301c.add(i, (String) obj);
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2507bp, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        return super.add(obj);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2507bp, java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection<? extends String> collection) {
        m2916a();
        List<?> list = collection;
        if (collection instanceof zzfv) {
            list = ((zzfv) collection).zzb();
        }
        boolean addAll = this.f16301c.addAll(i, list);
        this.modCount++;
        return addAll;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2507bp, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2507bp, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        m2916a();
        this.f16301c.clear();
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2507bp, java.util.AbstractList, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // com.google.android.gms.internal.measurement.zzfv
    /* renamed from: g_ */
    public final zzfv mo2242g_() {
        return zza() ? new zzia(this) : this;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        Object obj = this.f16301c.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof zzdu) {
            zzdu zzduVar = (zzdu) obj;
            String zzb = zzduVar.zzb();
            if (zzduVar.zzc()) {
                this.f16301c.set(i, zzb);
            }
            return zzb;
        }
        byte[] bArr = (byte[]) obj;
        String zzb2 = zzff.zzb(bArr);
        if (zzff.zza(bArr)) {
            this.f16301c.set(i, zzb2);
        }
        return zzb2;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2507bp, java.util.AbstractList, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2507bp, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m2916a();
        Object remove = this.f16301c.remove(i);
        this.modCount++;
        return m2258a(remove);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2507bp, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean remove(Object obj) {
        return super.remove(obj);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2507bp, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean removeAll(Collection collection) {
        return super.removeAll(collection);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2507bp, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean retainAll(Collection collection) {
        return super.retainAll(collection);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2507bp, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        m2916a();
        return m2258a(this.f16301c.set(i, (String) obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f16301c.size();
    }

    @Override // com.google.android.gms.internal.measurement.zzfl
    public final /* synthetic */ zzfl zza(int i) {
        if (i >= size()) {
            ArrayList arrayList = new ArrayList(i);
            arrayList.addAll(this.f16301c);
            return new zzfw(arrayList);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.measurement.zzfv
    public final void zza(zzdu zzduVar) {
        m2916a();
        this.f16301c.add(zzduVar);
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2507bp, com.google.android.gms.internal.measurement.zzfl
    public final /* bridge */ /* synthetic */ boolean zza() {
        return super.zza();
    }

    @Override // com.google.android.gms.internal.measurement.zzfv
    public final Object zzb(int i) {
        return this.f16301c.get(i);
    }

    @Override // com.google.android.gms.internal.measurement.zzfv
    public final List<?> zzb() {
        return Collections.unmodifiableList(this.f16301c);
    }
}

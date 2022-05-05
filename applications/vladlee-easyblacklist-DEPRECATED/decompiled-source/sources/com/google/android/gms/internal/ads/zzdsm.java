package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdsm.class */
public final class zzdsm extends ahb<String> implements zzdsl, RandomAccess {

    /* renamed from: a */
    private static final zzdsm f14579a;

    /* renamed from: b */
    private static final zzdsl f14580b;

    /* renamed from: c */
    private final List<Object> f14581c;

    static {
        zzdsm zzdsmVar = new zzdsm();
        f14579a = zzdsmVar;
        zzdsmVar.zzaxq();
        f14580b = f14579a;
    }

    public zzdsm() {
        this(10);
    }

    public zzdsm(int i) {
        this(new ArrayList(i));
    }

    private zzdsm(ArrayList<Object> arrayList) {
        this.f14581c = arrayList;
    }

    /* renamed from: a */
    private static String m3337a(Object obj) {
        return obj instanceof String ? (String) obj : obj instanceof zzdqk ? ((zzdqk) obj).zzaxt() : zzdrv.zzz((byte[]) obj);
    }

    @Override // com.google.android.gms.internal.ads.ahb, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        m5424a();
        this.f14581c.add(i, (String) obj);
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.ads.ahb, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        return super.add(obj);
    }

    @Override // com.google.android.gms.internal.ads.ahb, java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection<? extends String> collection) {
        m5424a();
        List<?> list = collection;
        if (collection instanceof zzdsl) {
            list = ((zzdsl) collection).zzbav();
        }
        boolean addAll = this.f14581c.addAll(i, list);
        this.modCount++;
        return addAll;
    }

    @Override // com.google.android.gms.internal.ads.ahb, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override // com.google.android.gms.internal.ads.ahb, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        m5424a();
        this.f14581c.clear();
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.ads.ahb, java.util.AbstractList, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        Object obj = this.f14581c.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof zzdqk) {
            zzdqk zzdqkVar = (zzdqk) obj;
            String zzaxt = zzdqkVar.zzaxt();
            if (zzdqkVar.zzaxu()) {
                this.f14581c.set(i, zzaxt);
            }
            return zzaxt;
        }
        byte[] bArr = (byte[]) obj;
        String zzz = zzdrv.zzz(bArr);
        if (zzdrv.zzy(bArr)) {
            this.f14581c.set(i, zzz);
        }
        return zzz;
    }

    @Override // com.google.android.gms.internal.ads.ahb, java.util.AbstractList, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.android.gms.internal.ads.ahb, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m5424a();
        Object remove = this.f14581c.remove(i);
        this.modCount++;
        return m3337a(remove);
    }

    @Override // com.google.android.gms.internal.ads.ahb, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean remove(Object obj) {
        return super.remove(obj);
    }

    @Override // com.google.android.gms.internal.ads.ahb, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean removeAll(Collection collection) {
        return super.removeAll(collection);
    }

    @Override // com.google.android.gms.internal.ads.ahb, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean retainAll(Collection collection) {
        return super.retainAll(collection);
    }

    @Override // com.google.android.gms.internal.ads.ahb, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        m5424a();
        return m3337a(this.f14581c.set(i, (String) obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f14581c.size();
    }

    @Override // com.google.android.gms.internal.ads.ahb, com.google.android.gms.internal.ads.zzdsb
    public final /* bridge */ /* synthetic */ boolean zzaxp() {
        return super.zzaxp();
    }

    @Override // com.google.android.gms.internal.ads.zzdsl
    public final List<?> zzbav() {
        return Collections.unmodifiableList(this.f14581c);
    }

    @Override // com.google.android.gms.internal.ads.zzdsl
    public final zzdsl zzbaw() {
        return zzaxp() ? new zzdut(this) : this;
    }

    @Override // com.google.android.gms.internal.ads.zzdsl
    public final void zzbg(zzdqk zzdqkVar) {
        m5424a();
        this.f14581c.add(zzdqkVar);
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.ads.zzdsb
    public final /* synthetic */ zzdsb zzfd(int i) {
        if (i >= size()) {
            ArrayList arrayList = new ArrayList(i);
            arrayList.addAll(this.f14581c);
            return new zzdsm(arrayList);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.ads.zzdsl
    public final Object zzgm(int i) {
        return this.f14581c.get(i);
    }
}

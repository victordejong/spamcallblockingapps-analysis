package com.google.android.gms.internal.ads;

import p131c.p161d.p170b.p224d.p252g.p253a.d10;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdxf.class */
public final class zzdxf<E> extends zzdws<E> {
    public static final zzdxf<Object> zzhrf = new zzdxf<>(new Object[0], 0, null, 0, 0);
    public final transient int mask;
    public final transient int size;
    public final transient int zzahv;
    public final transient Object[] zzhrg;
    public final transient Object[] zzhrh;

    public zzdxf(Object[] objArr, int i, Object[] objArr2, int i2, int i3) {
        this.zzhrg = objArr;
        this.zzhrh = objArr2;
        this.mask = i2;
        this.zzahv = i;
        this.size = i3;
    }

    @Override // com.google.android.gms.internal.ads.zzdwk, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        Object[] objArr = this.zzhrh;
        if (obj == null || objArr == null) {
            return false;
        }
        int a = d10.m27085a(obj == null ? 0 : obj.hashCode());
        while (true) {
            int i = a & this.mask;
            Object obj2 = objArr[i];
            if (obj2 == null) {
                return false;
            }
            if (obj2.equals(obj)) {
                return true;
            }
            a = i + 1;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdws, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.zzahv;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.size;
    }

    @Override // com.google.android.gms.internal.ads.zzdwk
    public final int zza(Object[] objArr, int i) {
        System.arraycopy(this.zzhrg, 0, objArr, i, this.size);
        return i + this.size;
    }

    @Override // com.google.android.gms.internal.ads.zzdwk
    /* renamed from: zzaxi */
    public final zzdxg<E> iterator() {
        return (zzdxg) zzaxm().iterator();
    }

    @Override // com.google.android.gms.internal.ads.zzdwk
    public final Object[] zzaxj() {
        return this.zzhrg;
    }

    @Override // com.google.android.gms.internal.ads.zzdwk
    public final int zzaxk() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzdwk
    public final int zzaxl() {
        return this.size;
    }

    @Override // com.google.android.gms.internal.ads.zzdwk
    public final boolean zzaxn() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzdws
    public final boolean zzaxp() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzdws
    public final zzdwp<E> zzaxq() {
        return zzdwp.zzb(this.zzhrg, this.size);
    }
}

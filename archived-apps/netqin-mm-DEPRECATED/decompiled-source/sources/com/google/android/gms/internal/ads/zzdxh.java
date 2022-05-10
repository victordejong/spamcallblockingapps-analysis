package com.google.android.gms.internal.ads;

import p131c.p161d.p170b.p224d.p252g.p253a.g10;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdxh.class */
public final class zzdxh<E> extends zzdws<E> {
    public final transient E zzhri;
    public transient int zzhrj;

    public zzdxh(E e) {
        zzdwd.m13096a(e);
        this.zzhri = e;
    }

    public zzdxh(E e, int i) {
        this.zzhri = e;
        this.zzhrj = i;
    }

    @Override // com.google.android.gms.internal.ads.zzdwk, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.zzhri.equals(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzdws, java.util.Collection, java.util.Set
    public final int hashCode() {
        int i = this.zzhrj;
        int i2 = i;
        if (i == 0) {
            i2 = this.zzhri.hashCode();
            this.zzhrj = i2;
        }
        return i2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        String obj = this.zzhri.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(obj).length() + 2);
        sb.append('[');
        sb.append(obj);
        sb.append(']');
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzdwk
    public final int zza(Object[] objArr, int i) {
        objArr[i] = this.zzhri;
        return i + 1;
    }

    @Override // com.google.android.gms.internal.ads.zzdwk
    /* renamed from: zzaxi */
    public final zzdxg<E> iterator() {
        return new g10(this.zzhri);
    }

    @Override // com.google.android.gms.internal.ads.zzdwk
    public final boolean zzaxn() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzdws
    public final boolean zzaxp() {
        return this.zzhrj != 0;
    }

    @Override // com.google.android.gms.internal.ads.zzdws
    public final zzdwp<E> zzaxq() {
        return zzdwp.zzac(this.zzhri);
    }
}

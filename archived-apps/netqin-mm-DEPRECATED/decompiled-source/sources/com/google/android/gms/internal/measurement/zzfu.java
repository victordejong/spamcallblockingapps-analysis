package com.google.android.gms.internal.measurement;

import p131c.p161d.p170b.p224d.p252g.p258f.C4628z1;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfu.class */
public final class zzfu<E> extends zzfg<E> {
    public final transient E zza;
    public transient int zzb;

    public zzfu(E e) {
        zzeb.m9815a(e);
        this.zza = e;
    }

    public zzfu(E e, int i) {
        this.zza = e;
        this.zzb = i;
    }

    @Override // com.google.android.gms.internal.measurement.zzey, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.zza.equals(obj);
    }

    @Override // com.google.android.gms.internal.measurement.zzfg, java.util.Collection, java.util.Set
    public final int hashCode() {
        int i = this.zzb;
        int i2 = i;
        if (i == 0) {
            i2 = this.zza.hashCode();
            this.zzb = i2;
        }
        return i2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        String obj = this.zza.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(obj).length() + 2);
        sb.append('[');
        sb.append(obj);
        sb.append(']');
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.measurement.zzey
    public final int zza(Object[] objArr, int i) {
        objArr[i] = this.zza;
        return i + 1;
    }

    @Override // com.google.android.gms.internal.measurement.zzey
    /* renamed from: zza */
    public final zzfx<E> iterator() {
        return new C4628z1(this.zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzey
    public final boolean zzf() {
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.zzfg
    public final boolean zzg() {
        return this.zzb != 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzfg
    public final zzfb<E> zzh() {
        return zzfb.zza(this.zza);
    }
}

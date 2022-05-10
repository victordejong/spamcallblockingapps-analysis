package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdwz.class */
public final class zzdwz<E> extends zzdwp<E> {
    public static final zzdwp<Object> zzhra = new zzdwz(new Object[0], 0);
    public final transient int size;
    public final transient Object[] zzhrb;

    public zzdwz(Object[] objArr, int i) {
        this.zzhrb = objArr;
        this.size = i;
    }

    @Override // java.util.List
    public final E get(int i) {
        zzdwd.m13099a(i, this.size);
        return (E) this.zzhrb[i];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.size;
    }

    @Override // com.google.android.gms.internal.ads.zzdwp, com.google.android.gms.internal.ads.zzdwk
    public final int zza(Object[] objArr, int i) {
        System.arraycopy(this.zzhrb, 0, objArr, i, this.size);
        return i + this.size;
    }

    @Override // com.google.android.gms.internal.ads.zzdwk
    public final Object[] zzaxj() {
        return this.zzhrb;
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
}

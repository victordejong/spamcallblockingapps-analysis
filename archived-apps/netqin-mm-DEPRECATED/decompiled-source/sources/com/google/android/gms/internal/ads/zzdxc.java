package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdxc.class */
public final class zzdxc extends zzdwp<Object> {
    public final transient int offset;
    public final transient int size;
    public final transient Object[] zzhqz;

    public zzdxc(Object[] objArr, int i, int i2) {
        this.zzhqz = objArr;
        this.offset = i;
        this.size = i2;
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzdwd.m13099a(i, this.size);
        return this.zzhqz[(i * 2) + this.offset];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.size;
    }

    @Override // com.google.android.gms.internal.ads.zzdwk
    public final boolean zzaxn() {
        return true;
    }
}
